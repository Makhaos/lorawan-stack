// Copyright © 2018 The Things Network Foundation, The Things Industries B.V.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package store

import (
	"context"
	"time"

	"github.com/gogo/protobuf/types"
	"go.thethings.network/lorawan-stack/pkg/ttnpb"
)

// User model.
type User struct {
	Model
	SoftDelete

	Account Account `gorm:"polymorphic:Account;polymorphic_value:user"`

	// BEGIN common fields
	Name        string        `gorm:"type:VARCHAR"`
	Description string        `gorm:"type:TEXT"`
	Attributes  []Attribute   `gorm:"polymorphic:Entity;polymorphic_value:user"`
	ContactInfo []ContactInfo `gorm:"polymorphic:Entity;polymorphic_value:user"`
	APIKeys     []APIKey      `gorm:"polymorphic:Entity;polymorphic_value:user"`
	// END common fields

	Sessions []*UserSession

	PrimaryEmailAddress            string     `gorm:"type:VARCHAR;not null;unique_index"`
	PrimaryEmailAddressValidatedAt *time.Time // should be cleared when email changes

	Password              string    `gorm:"type:VARCHAR;not null"` // this is the hash
	PasswordUpdatedAt     time.Time `gorm:"not null"`
	RequirePasswordUpdate bool      `gorm:"not null"`

	State int `gorm:"not null"`

	Admin bool `gorm:"not null"`

	ProfilePicture   *Picture
	ProfilePictureID *string `gorm:"type:UUID;index"`
}

func init() {
	registerModel(&User{})
}

// SetContext sets the context on both the Model and Account.
func (usr *User) SetContext(ctx context.Context) {
	usr.Model.SetContext(ctx)
	usr.Account.Model.SetContext(ctx)
}

// functions to set fields from the user model into the user proto.
var userPBSetters = map[string]func(*ttnpb.User, *User){
	nameField:                  func(pb *ttnpb.User, usr *User) { pb.Name = usr.Name },
	descriptionField:           func(pb *ttnpb.User, usr *User) { pb.Description = usr.Description },
	attributesField:            func(pb *ttnpb.User, usr *User) { pb.Attributes = attributes(usr.Attributes).toMap() },
	contactInfoField:           func(pb *ttnpb.User, usr *User) { pb.ContactInfo = contactInfos(usr.ContactInfo).toPB() },
	primaryEmailAddressField:   func(pb *ttnpb.User, usr *User) { pb.PrimaryEmailAddress = usr.PrimaryEmailAddress },
	passwordField:              func(pb *ttnpb.User, usr *User) { pb.Password = usr.Password },
	passwordUpdatedAtField:     func(pb *ttnpb.User, usr *User) { pb.PasswordUpdatedAt = cleanTime(usr.PasswordUpdatedAt) },
	requirePasswordUpdateField: func(pb *ttnpb.User, usr *User) { pb.RequirePasswordUpdate = usr.RequirePasswordUpdate },
	stateField:                 func(pb *ttnpb.User, usr *User) { pb.State = ttnpb.State(usr.State) },
	adminField:                 func(pb *ttnpb.User, usr *User) { pb.Admin = usr.Admin },
	profilePictureField: func(pb *ttnpb.User, usr *User) {
		if usr.ProfilePicture == nil {
			pb.ProfilePicture = nil
		} else {
			pb.ProfilePicture = usr.ProfilePicture.toPB()
		}
	},
}

// functions to set fields from the user proto into the user model.
var userModelSetters = map[string]func(*User, *ttnpb.User){
	nameField:        func(usr *User, pb *ttnpb.User) { usr.Name = pb.Name },
	descriptionField: func(usr *User, pb *ttnpb.User) { usr.Description = pb.Description },
	attributesField: func(usr *User, pb *ttnpb.User) {
		usr.Attributes = attributes(usr.Attributes).updateFromMap(pb.Attributes)
	},
	contactInfoField: func(usr *User, pb *ttnpb.User) {
		usr.ContactInfo = contactInfos(usr.ContactInfo).updateFromPB(pb.ContactInfo)
	},
	primaryEmailAddressField:   func(usr *User, pb *ttnpb.User) { usr.PrimaryEmailAddress = pb.PrimaryEmailAddress },
	passwordField:              func(usr *User, pb *ttnpb.User) { usr.Password = pb.Password },
	passwordUpdatedAtField:     func(usr *User, pb *ttnpb.User) { usr.PasswordUpdatedAt = cleanTime(pb.PasswordUpdatedAt) },
	requirePasswordUpdateField: func(usr *User, pb *ttnpb.User) { usr.RequirePasswordUpdate = pb.RequirePasswordUpdate },
	stateField:                 func(usr *User, pb *ttnpb.User) { usr.State = int(pb.State) },
	adminField:                 func(usr *User, pb *ttnpb.User) { usr.Admin = pb.Admin },
	profilePictureField: func(usr *User, pb *ttnpb.User) {
		usr.ProfilePictureID, usr.ProfilePicture = nil, nil
		if pb.ProfilePicture != nil {
			usr.ProfilePicture = new(Picture)
			usr.ProfilePicture.fromPB(pb.ProfilePicture)
		}
	},
}

// fieldMask to use if a nil or empty fieldmask is passed.
var defaultUserFieldMask = &types.FieldMask{}

func init() {
	paths := make([]string, 0, len(userPBSetters))
	for path := range userPBSetters {
		paths = append(paths, path)
	}
	defaultUserFieldMask.Paths = paths
}

// fieldmask path to column name in users table.
var userColumnNames = map[string]string{
	attributesField:            "",
	contactInfoField:           "",
	nameField:                  nameField,
	descriptionField:           descriptionField,
	primaryEmailAddressField:   primaryEmailAddressField,
	passwordField:              passwordField,
	passwordUpdatedAtField:     passwordUpdatedAtField,
	requirePasswordUpdateField: requirePasswordUpdateField,
	stateField:                 stateField,
	adminField:                 adminField,
}

func (usr User) toPB(pb *ttnpb.User, fieldMask *types.FieldMask) {
	pb.UserIdentifiers.UserID = usr.Account.UID
	pb.CreatedAt = cleanTime(usr.CreatedAt)
	pb.UpdatedAt = cleanTime(usr.UpdatedAt)
	if fieldMask == nil || len(fieldMask.Paths) == 0 {
		fieldMask = defaultUserFieldMask
	}
	for _, path := range fieldMask.Paths {
		if setter, ok := userPBSetters[path]; ok {
			setter(pb, &usr)
		}
	}
}

func (usr *User) fromPB(pb *ttnpb.User, fieldMask *types.FieldMask) (columns []string) {
	if fieldMask == nil || len(fieldMask.Paths) == 0 {
		fieldMask = defaultUserFieldMask
	}
	for _, path := range fieldMask.Paths {
		if setter, ok := userModelSetters[path]; ok {
			setter(usr, pb)
			columnName, ok := userColumnNames[path]
			if !ok {
				columnName = path
			}
			if columnName != "" {
				columns = append(columns, columnName)
			}
			// TODO: if updating password, then also update PasswordUpdatedAt and set RequirePasswordUpdate=false
			// TODO: if changing email, then also set EmailValidatedAt=false
			continue
		}
	}
	return
}