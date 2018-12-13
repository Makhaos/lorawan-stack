// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: lorawan-stack/api/keys.proto

package ttnpb // import "go.thethings.network/lorawan-stack/pkg/ttnpb"

import regexp "regexp"
import fmt "fmt"
import github_com_mwitkow_go_proto_validators "github.com/mwitkow/go-proto-validators"
import proto "github.com/gogo/protobuf/proto"
import math "math"
import _ "github.com/gogo/protobuf/gogoproto"
import _ "github.com/mwitkow/go-proto-validators"

import time "time"

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf
var _ = time.Kitchen

func (this *KeyEnvelope) Validate() error {
	return nil
}
func (this *RootKeys) Validate() error {
	if this.RootKeyID == "" {
		return github_com_mwitkow_go_proto_validators.FieldError("RootKeyID", fmt.Errorf(`value '%v' must not be an empty string`, this.RootKeyID))
	}
	if this.AppKey != nil {
		if err := github_com_mwitkow_go_proto_validators.CallValidatorIfExists(this.AppKey); err != nil {
			return github_com_mwitkow_go_proto_validators.FieldError("AppKey", err)
		}
	}
	if this.NwkKey != nil {
		if err := github_com_mwitkow_go_proto_validators.CallValidatorIfExists(this.NwkKey); err != nil {
			return github_com_mwitkow_go_proto_validators.FieldError("NwkKey", err)
		}
	}
	return nil
}

var _regex_SessionKeys_SessionKeyID = regexp.MustCompile(`(?:0[xX])?([0-9a-fA-F]{2})+$`)

func (this *SessionKeys) Validate() error {
	if !_regex_SessionKeys_SessionKeyID.MatchString(this.SessionKeyID) {
		return github_com_mwitkow_go_proto_validators.FieldError("SessionKeyID", fmt.Errorf(`value '%v' must be a string conforming to regex "(?:0[xX])?([0-9a-fA-F]{2})+$"`, this.SessionKeyID))
	}
	if this.FNwkSIntKey != nil {
		if err := github_com_mwitkow_go_proto_validators.CallValidatorIfExists(this.FNwkSIntKey); err != nil {
			return github_com_mwitkow_go_proto_validators.FieldError("FNwkSIntKey", err)
		}
	}
	if this.SNwkSIntKey != nil {
		if err := github_com_mwitkow_go_proto_validators.CallValidatorIfExists(this.SNwkSIntKey); err != nil {
			return github_com_mwitkow_go_proto_validators.FieldError("SNwkSIntKey", err)
		}
	}
	if this.NwkSEncKey != nil {
		if err := github_com_mwitkow_go_proto_validators.CallValidatorIfExists(this.NwkSEncKey); err != nil {
			return github_com_mwitkow_go_proto_validators.FieldError("NwkSEncKey", err)
		}
	}
	if this.AppSKey != nil {
		if err := github_com_mwitkow_go_proto_validators.CallValidatorIfExists(this.AppSKey); err != nil {
			return github_com_mwitkow_go_proto_validators.FieldError("AppSKey", err)
		}
	}
	return nil
}
