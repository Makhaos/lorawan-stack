#compdef _ttn-lw-cli ttn-lw-cli


function _ttn-lw-cli {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "applications:Application commands"
      "clients:Client commands"
      "config:View the current configuration"
      "end-devices:End Device commands"
      "events:Subscribe to events"
      "gateways:Gateway commands"
      "help:Help about any command"
      "login:Login"
      "logout:Logout"
      "organizations:Organization commands"
      "templates:End Device template commands"
      "use:Use"
      "users:User commands"
      "version:Print version information"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  applications)
    _ttn-lw-cli_applications
    ;;
  clients)
    _ttn-lw-cli_clients
    ;;
  config)
    _ttn-lw-cli_config
    ;;
  end-devices)
    _ttn-lw-cli_end-devices
    ;;
  events)
    _ttn-lw-cli_events
    ;;
  gateways)
    _ttn-lw-cli_gateways
    ;;
  help)
    _ttn-lw-cli_help
    ;;
  login)
    _ttn-lw-cli_login
    ;;
  logout)
    _ttn-lw-cli_logout
    ;;
  organizations)
    _ttn-lw-cli_organizations
    ;;
  templates)
    _ttn-lw-cli_templates
    ;;
  use)
    _ttn-lw-cli_use
    ;;
  users)
    _ttn-lw-cli_users
    ;;
  version)
    _ttn-lw-cli_version
    ;;
  esac
}


function _ttn-lw-cli_applications {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "api-keys:Manage application API keys"
      "claim:Manage claim settings in applications"
      "collaborators:Manage application collaborators"
      "contact-info:Manage application contact info"
      "create:Create an application"
      "delete:Delete an application"
      "get:Get an application"
      "link:Application link commands"
      "list:List applications"
      "packages:Application packages commands"
      "pubsubs:Application pub/sub commands"
      "rights:List the rights to an application"
      "search:Search for applications"
      "subscribe:Subscribe to application uplink"
      "update:Update an application"
      "webhooks:Application webhooks commands"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  api-keys)
    _ttn-lw-cli_applications_api-keys
    ;;
  claim)
    _ttn-lw-cli_applications_claim
    ;;
  collaborators)
    _ttn-lw-cli_applications_collaborators
    ;;
  contact-info)
    _ttn-lw-cli_applications_contact-info
    ;;
  create)
    _ttn-lw-cli_applications_create
    ;;
  delete)
    _ttn-lw-cli_applications_delete
    ;;
  get)
    _ttn-lw-cli_applications_get
    ;;
  link)
    _ttn-lw-cli_applications_link
    ;;
  list)
    _ttn-lw-cli_applications_list
    ;;
  packages)
    _ttn-lw-cli_applications_packages
    ;;
  pubsubs)
    _ttn-lw-cli_applications_pubsubs
    ;;
  rights)
    _ttn-lw-cli_applications_rights
    ;;
  search)
    _ttn-lw-cli_applications_search
    ;;
  subscribe)
    _ttn-lw-cli_applications_subscribe
    ;;
  update)
    _ttn-lw-cli_applications_update
    ;;
  webhooks)
    _ttn-lw-cli_applications_webhooks
    ;;
  esac
}


function _ttn-lw-cli_applications_api-keys {
  local -a commands

  _arguments -C \
    '--application-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create an application API key"
      "delete:Delete an application API key"
      "list:List application API keys"
      "update:Update an application API key"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _ttn-lw-cli_applications_api-keys_create
    ;;
  delete)
    _ttn-lw-cli_applications_api-keys_delete
    ;;
  list)
    _ttn-lw-cli_applications_api-keys_list
    ;;
  update)
    _ttn-lw-cli_applications_api-keys_update
    ;;
  esac
}

function _ttn-lw-cli_applications_api-keys_create {
  _arguments \
    '--name[]:' \
    '--right-application-all[]' \
    '--right-application-delete[]' \
    '--right-application-devices-read[]' \
    '--right-application-devices-read-keys[]' \
    '--right-application-devices-write[]' \
    '--right-application-devices-write-keys[]' \
    '--right-application-info[]' \
    '--right-application-link[]' \
    '--right-application-settings-api-keys[]' \
    '--right-application-settings-basic[]' \
    '--right-application-settings-collaborators[]' \
    '--right-application-settings-packages[]' \
    '--right-application-traffic-down-write[]' \
    '--right-application-traffic-read[]' \
    '--right-application-traffic-up-write[]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_api-keys_delete {
  _arguments \
    '--api-key-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_api-keys_list {
  _arguments \
    '--limit[maximum number of results to get]:' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_api-keys_update {
  _arguments \
    '--api-key-id[]:' \
    '--name[]:' \
    '--right-application-all[]' \
    '--right-application-delete[]' \
    '--right-application-devices-read[]' \
    '--right-application-devices-read-keys[]' \
    '--right-application-devices-write[]' \
    '--right-application-devices-write-keys[]' \
    '--right-application-info[]' \
    '--right-application-link[]' \
    '--right-application-settings-api-keys[]' \
    '--right-application-settings-basic[]' \
    '--right-application-settings-collaborators[]' \
    '--right-application-settings-packages[]' \
    '--right-application-traffic-down-write[]' \
    '--right-application-traffic-read[]' \
    '--right-application-traffic-up-write[]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_applications_claim {
  local -a commands

  _arguments -C \
    '--application-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "authorize:Authorize an application for claiming (EXPERIMENTAL)"
      "unauthorize:Unauthorize an application for claiming (EXPERIMENTAL)"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  authorize)
    _ttn-lw-cli_applications_claim_authorize
    ;;
  unauthorize)
    _ttn-lw-cli_applications_claim_unauthorize
    ;;
  esac
}

function _ttn-lw-cli_applications_claim_authorize {
  _arguments \
    '--api-key[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_claim_unauthorize {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_applications_collaborators {
  local -a commands

  _arguments -C \
    '--application-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete an application collaborator"
      "list:List application collaborators"
      "set:Set an application collaborator"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _ttn-lw-cli_applications_collaborators_delete
    ;;
  list)
    _ttn-lw-cli_applications_collaborators_list
    ;;
  set)
    _ttn-lw-cli_applications_collaborators_set
    ;;
  esac
}

function _ttn-lw-cli_applications_collaborators_delete {
  _arguments \
    '--organization-id[]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_collaborators_list {
  _arguments \
    '--limit[maximum number of results to get]:' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_collaborators_set {
  _arguments \
    '--organization-id[]:' \
    '--right-application-all[]' \
    '--right-application-delete[]' \
    '--right-application-devices-read[]' \
    '--right-application-devices-read-keys[]' \
    '--right-application-devices-write[]' \
    '--right-application-devices-write-keys[]' \
    '--right-application-info[]' \
    '--right-application-link[]' \
    '--right-application-settings-api-keys[]' \
    '--right-application-settings-basic[]' \
    '--right-application-settings-collaborators[]' \
    '--right-application-settings-packages[]' \
    '--right-application-traffic-down-write[]' \
    '--right-application-traffic-read[]' \
    '--right-application-traffic-up-write[]' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_applications_contact-info {
  local -a commands

  _arguments -C \
    '--application-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "add:"
      "list:"
      "remove:"
      "request-validation:Request validation for entity contact info"
      "validate:Validate contact info"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  add)
    _ttn-lw-cli_applications_contact-info_add
    ;;
  list)
    _ttn-lw-cli_applications_contact-info_list
    ;;
  remove)
    _ttn-lw-cli_applications_contact-info_remove
    ;;
  request-validation)
    _ttn-lw-cli_applications_contact-info_request-validation
    ;;
  validate)
    _ttn-lw-cli_applications_contact-info_validate
    ;;
  esac
}

function _ttn-lw-cli_applications_contact-info_add {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_contact-info_list {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_contact-info_remove {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_contact-info_request-validation {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_contact-info_validate {
  _arguments \
    '--reference[Reference of the requested validation]:' \
    '--token[Token that you received]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-id[]:' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_create {
  _arguments \
    '--application-id[]:' \
    '*--attributes[key=value]:' \
    '--description[]:' \
    '--name[]:' \
    '--organization-id[]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_delete {
  _arguments \
    '--application-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_get {
  _arguments \
    '--all[select all application fields]' \
    '--application-id[]:' \
    '--attributes[select the attributes field]' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--name[select the name field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_applications_link {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete an application link"
      "get:Get the properties of an application link"
      "set:Set the properties of an application link"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _ttn-lw-cli_applications_link_delete
    ;;
  get)
    _ttn-lw-cli_applications_link_get
    ;;
  set)
    _ttn-lw-cli_applications_link_set
    ;;
  esac
}

function _ttn-lw-cli_applications_link_delete {
  _arguments \
    '--application-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_link_get {
  _arguments \
    '--all[select all application link fields]' \
    '--api-key[select the api_key field]' \
    '--application-id[]:' \
    '--default-formatters[select the default_formatters field and all allowed sub-fields]' \
    '--default-formatters.down-formatter[select the default_formatters.down_formatter field]' \
    '--default-formatters.down-formatter-parameter[select the default_formatters.down_formatter_parameter field]' \
    '--default-formatters.up-formatter[select the default_formatters.up_formatter field]' \
    '--default-formatters.up-formatter-parameter[select the default_formatters.up_formatter_parameter field]' \
    '--network-server-address[select the network_server_address field]' \
    '--skip-payload-crypto[select the skip_payload_crypto field]' \
    '--tls[select the tls field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_link_set {
  _arguments \
    '--api-key[]:' \
    '--application-id[]:' \
    '--default-formatters.down-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--default-formatters.down-formatter-parameter[]:' \
    '--default-formatters.down-formatter-parameter-local-file[(local file name)]:' \
    '--default-formatters.up-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--default-formatters.up-formatter-parameter[]:' \
    '--default-formatters.up-formatter-parameter-local-file[(local file name)]:' \
    '--network-server-address[]:' \
    '--skip-payload-crypto[]' \
    '--tls[]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_list {
  _arguments \
    '--all[select all application fields]' \
    '--attributes[select the attributes field]' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--limit[maximum number of results to get]:' \
    '--name[select the name field]' \
    '--order[order by this field]:' \
    '--organization-id[]:' \
    '--page[results page number]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_applications_packages {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "associations:Application packages associations commands"
      "default-associations:Application packages default associations commands"
      "list:List the available application packages for the device"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  associations)
    _ttn-lw-cli_applications_packages_associations
    ;;
  default-associations)
    _ttn-lw-cli_applications_packages_default-associations
    ;;
  list)
    _ttn-lw-cli_applications_packages_list
    ;;
  esac
}


function _ttn-lw-cli_applications_packages_associations {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete an application package association"
      "get:Get the properties of an application package association"
      "list:List application package associations"
      "set:Set the properties of an application package association"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _ttn-lw-cli_applications_packages_associations_delete
    ;;
  get)
    _ttn-lw-cli_applications_packages_associations_get
    ;;
  list)
    _ttn-lw-cli_applications_packages_associations_list
    ;;
  set)
    _ttn-lw-cli_applications_packages_associations_set
    ;;
  esac
}

function _ttn-lw-cli_applications_packages_associations_delete {
  _arguments \
    '--application-id[]:' \
    '--device-id[]:' \
    '--f-port[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_packages_associations_get {
  _arguments \
    '--all[select all application package association fields]' \
    '--application-id[]:' \
    '--data[select the data field and all allowed sub-fields]' \
    '--device-id[]:' \
    '--f-port[]:' \
    '--package-name[select the package_name field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_packages_associations_list {
  _arguments \
    '--all[select all application package association fields]' \
    '--application-id[]:' \
    '--data[select the data field and all allowed sub-fields]' \
    '--dev-eui[(hex)]:' \
    '--device-id[]:' \
    '--join-eui[(hex)]:' \
    '--limit[maximum number of results to get]:' \
    '--package-name[select the package_name field]' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_packages_associations_set {
  _arguments \
    '--application-id[]:' \
    '--data-local-file[package data (local file name)]:' \
    '--device-id[]:' \
    '--f-port[]:' \
    '--package-name[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_applications_packages_default-associations {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete an application package default association"
      "get:Get the properties of an application package default association"
      "list:List application package default associations"
      "set:Set the properties of an application package default association"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _ttn-lw-cli_applications_packages_default-associations_delete
    ;;
  get)
    _ttn-lw-cli_applications_packages_default-associations_get
    ;;
  list)
    _ttn-lw-cli_applications_packages_default-associations_list
    ;;
  set)
    _ttn-lw-cli_applications_packages_default-associations_set
    ;;
  esac
}

function _ttn-lw-cli_applications_packages_default-associations_delete {
  _arguments \
    '--application-id[]:' \
    '--f-port[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_packages_default-associations_get {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_packages_default-associations_list {
  _arguments \
    '--all[select all application package default association fields]' \
    '--application-id[]:' \
    '--data[select the data field and all allowed sub-fields]' \
    '--limit[maximum number of results to get]:' \
    '--package-name[select the package_name field]' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_packages_default-associations_set {
  _arguments \
    '--application-id[]:' \
    '--data-local-file[package data (local file name)]:' \
    '--f-port[]:' \
    '--package-name[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_packages_list {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_applications_pubsubs {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete an application pub/sub"
      "get:Get the properties of an application pub/sub"
      "get-formats:Get the available formats for application pubsubs"
      "list:List application pubsubs"
      "set:Set the properties of an application pub/sub"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _ttn-lw-cli_applications_pubsubs_delete
    ;;
  get)
    _ttn-lw-cli_applications_pubsubs_get
    ;;
  get-formats)
    _ttn-lw-cli_applications_pubsubs_get-formats
    ;;
  list)
    _ttn-lw-cli_applications_pubsubs_list
    ;;
  set)
    _ttn-lw-cli_applications_pubsubs_set
    ;;
  esac
}

function _ttn-lw-cli_applications_pubsubs_delete {
  _arguments \
    '--application-id[]:' \
    '--pubsub-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_pubsubs_get {
  _arguments \
    '--all[select all application pub/sub fields]' \
    '--application-id[]:' \
    '--base-topic[select the base_topic field]' \
    '--downlink-ack[select the downlink_ack field and all allowed sub-fields]' \
    '--downlink-ack.topic[select the downlink_ack.topic field]' \
    '--downlink-failed[select the downlink_failed field and all allowed sub-fields]' \
    '--downlink-failed.topic[select the downlink_failed.topic field]' \
    '--downlink-nack[select the downlink_nack field and all allowed sub-fields]' \
    '--downlink-nack.topic[select the downlink_nack.topic field]' \
    '--downlink-push[select the downlink_push field and all allowed sub-fields]' \
    '--downlink-push.topic[select the downlink_push.topic field]' \
    '--downlink-queued[select the downlink_queued field and all allowed sub-fields]' \
    '--downlink-queued.topic[select the downlink_queued.topic field]' \
    '--downlink-replace[select the downlink_replace field and all allowed sub-fields]' \
    '--downlink-replace.topic[select the downlink_replace.topic field]' \
    '--downlink-sent[select the downlink_sent field and all allowed sub-fields]' \
    '--downlink-sent.topic[select the downlink_sent.topic field]' \
    '--format[select the format field]' \
    '--join-accept[select the join_accept field and all allowed sub-fields]' \
    '--join-accept.topic[select the join_accept.topic field]' \
    '--location-solved[select the location_solved field and all allowed sub-fields]' \
    '--location-solved.topic[select the location_solved.topic field]' \
    '--pubsub-id[]:' \
    '--service-data[select the service_data field and all allowed sub-fields]' \
    '--service-data.topic[select the service_data.topic field]' \
    '--uplink-message[select the uplink_message field and all allowed sub-fields]' \
    '--uplink-message.topic[select the uplink_message.topic field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_pubsubs_get-formats {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_pubsubs_list {
  _arguments \
    '--all[select all application pub/sub fields]' \
    '--application-id[]:' \
    '--base-topic[select the base_topic field]' \
    '--downlink-ack[select the downlink_ack field and all allowed sub-fields]' \
    '--downlink-ack.topic[select the downlink_ack.topic field]' \
    '--downlink-failed[select the downlink_failed field and all allowed sub-fields]' \
    '--downlink-failed.topic[select the downlink_failed.topic field]' \
    '--downlink-nack[select the downlink_nack field and all allowed sub-fields]' \
    '--downlink-nack.topic[select the downlink_nack.topic field]' \
    '--downlink-push[select the downlink_push field and all allowed sub-fields]' \
    '--downlink-push.topic[select the downlink_push.topic field]' \
    '--downlink-queued[select the downlink_queued field and all allowed sub-fields]' \
    '--downlink-queued.topic[select the downlink_queued.topic field]' \
    '--downlink-replace[select the downlink_replace field and all allowed sub-fields]' \
    '--downlink-replace.topic[select the downlink_replace.topic field]' \
    '--downlink-sent[select the downlink_sent field and all allowed sub-fields]' \
    '--downlink-sent.topic[select the downlink_sent.topic field]' \
    '--format[select the format field]' \
    '--join-accept[select the join_accept field and all allowed sub-fields]' \
    '--join-accept.topic[select the join_accept.topic field]' \
    '--location-solved[select the location_solved field and all allowed sub-fields]' \
    '--location-solved.topic[select the location_solved.topic field]' \
    '--service-data[select the service_data field and all allowed sub-fields]' \
    '--service-data.topic[select the service_data.topic field]' \
    '--uplink-message[select the uplink_message field and all allowed sub-fields]' \
    '--uplink-message.topic[select the uplink_message.topic field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_pubsubs_set {
  _arguments \
    '--application-id[]:' \
    '--base-topic[]:' \
    '--downlink-ack.topic[]:' \
    '--downlink-failed.topic[]:' \
    '--downlink-nack.topic[]:' \
    '--downlink-push.topic[]:' \
    '--downlink-queued.topic[]:' \
    '--downlink-replace.topic[]:' \
    '--downlink-sent.topic[]:' \
    '--format[]:' \
    '--join-accept.topic[]:' \
    '--location-solved.topic[]:' \
    '--mqtt[use the MQTT provider]' \
    '--mqtt.client-id[]:' \
    '--mqtt.password[]:' \
    '--mqtt.publish-qos[AT_LEAST_ONCE|AT_MOST_ONCE|EXACTLY_ONCE]:' \
    '--mqtt.server-url[]:' \
    '--mqtt.subscribe-qos[AT_LEAST_ONCE|AT_MOST_ONCE|EXACTLY_ONCE]:' \
    '--mqtt.tls-ca[(hex)]:' \
    '--mqtt.tls-ca-local-file[(local file name)]:' \
    '--mqtt.tls-client-cert[(hex)]:' \
    '--mqtt.tls-client-cert-local-file[(local file name)]:' \
    '--mqtt.tls-client-key[(hex)]:' \
    '--mqtt.tls-client-key-local-file[(local file name)]:' \
    '--mqtt.use-tls[]' \
    '--mqtt.username[]:' \
    '--nats[use the NATS provider]' \
    '--nats.server-url[]:' \
    '--pubsub-id[]:' \
    '--service-data.topic[]:' \
    '--uplink-message.topic[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_rights {
  _arguments \
    '--application-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_search {
  _arguments \
    '--all[select all application fields]' \
    '--attributes[select the attributes field]' \
    '--attributes-contain[(key=value)]:' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--description-contains[]:' \
    '--id-contains[]:' \
    '--limit[maximum number of results to get]:' \
    '--name[select the name field]' \
    '--name-contains[]:' \
    '--order[order by this field]:' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_subscribe {
  _arguments \
    '--application-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_update {
  _arguments \
    '--application-id[]:' \
    '*--attributes[key=value]:' \
    '--description[]:' \
    '--name[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_applications_webhooks {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete an application webhook"
      "get:Get the properties of an application webhook"
      "get-formats:Get the available formats for application webhooks"
      "list:List application webhooks"
      "set:Set the properties of an application webhook"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _ttn-lw-cli_applications_webhooks_delete
    ;;
  get)
    _ttn-lw-cli_applications_webhooks_get
    ;;
  get-formats)
    _ttn-lw-cli_applications_webhooks_get-formats
    ;;
  list)
    _ttn-lw-cli_applications_webhooks_list
    ;;
  set)
    _ttn-lw-cli_applications_webhooks_set
    ;;
  esac
}

function _ttn-lw-cli_applications_webhooks_delete {
  _arguments \
    '--application-id[]:' \
    '--webhook-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_webhooks_get {
  _arguments \
    '--all[select all application webhook fields]' \
    '--application-id[]:' \
    '--base-url[select the base_url field]' \
    '--downlink-ack[select the downlink_ack field and all allowed sub-fields]' \
    '--downlink-ack.path[select the downlink_ack.path field]' \
    '--downlink-api-key[select the downlink_api_key field]' \
    '--downlink-failed[select the downlink_failed field and all allowed sub-fields]' \
    '--downlink-failed.path[select the downlink_failed.path field]' \
    '--downlink-nack[select the downlink_nack field and all allowed sub-fields]' \
    '--downlink-nack.path[select the downlink_nack.path field]' \
    '--downlink-queued[select the downlink_queued field and all allowed sub-fields]' \
    '--downlink-queued.path[select the downlink_queued.path field]' \
    '--downlink-sent[select the downlink_sent field and all allowed sub-fields]' \
    '--downlink-sent.path[select the downlink_sent.path field]' \
    '--format[select the format field]' \
    '--headers[select the headers field]' \
    '--join-accept[select the join_accept field and all allowed sub-fields]' \
    '--join-accept.path[select the join_accept.path field]' \
    '--location-solved[select the location_solved field and all allowed sub-fields]' \
    '--location-solved.path[select the location_solved.path field]' \
    '--service-data[select the service_data field and all allowed sub-fields]' \
    '--service-data.path[select the service_data.path field]' \
    '--template-fields[select the template_fields field]' \
    '--template-ids[select the template_ids field and all allowed sub-fields]' \
    '--template-ids.template-id[select the template_ids.template_id field]' \
    '--uplink-message[select the uplink_message field and all allowed sub-fields]' \
    '--uplink-message.path[select the uplink_message.path field]' \
    '--webhook-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_webhooks_get-formats {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_webhooks_list {
  _arguments \
    '--all[select all application webhook fields]' \
    '--application-id[]:' \
    '--base-url[select the base_url field]' \
    '--downlink-ack[select the downlink_ack field and all allowed sub-fields]' \
    '--downlink-ack.path[select the downlink_ack.path field]' \
    '--downlink-api-key[select the downlink_api_key field]' \
    '--downlink-failed[select the downlink_failed field and all allowed sub-fields]' \
    '--downlink-failed.path[select the downlink_failed.path field]' \
    '--downlink-nack[select the downlink_nack field and all allowed sub-fields]' \
    '--downlink-nack.path[select the downlink_nack.path field]' \
    '--downlink-queued[select the downlink_queued field and all allowed sub-fields]' \
    '--downlink-queued.path[select the downlink_queued.path field]' \
    '--downlink-sent[select the downlink_sent field and all allowed sub-fields]' \
    '--downlink-sent.path[select the downlink_sent.path field]' \
    '--format[select the format field]' \
    '--headers[select the headers field]' \
    '--join-accept[select the join_accept field and all allowed sub-fields]' \
    '--join-accept.path[select the join_accept.path field]' \
    '--location-solved[select the location_solved field and all allowed sub-fields]' \
    '--location-solved.path[select the location_solved.path field]' \
    '--service-data[select the service_data field and all allowed sub-fields]' \
    '--service-data.path[select the service_data.path field]' \
    '--template-fields[select the template_fields field]' \
    '--template-ids[select the template_ids field and all allowed sub-fields]' \
    '--template-ids.template-id[select the template_ids.template_id field]' \
    '--uplink-message[select the uplink_message field and all allowed sub-fields]' \
    '--uplink-message.path[select the uplink_message.path field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_applications_webhooks_set {
  _arguments \
    '--application-id[]:' \
    '--base-url[]:' \
    '--downlink-ack.path[]:' \
    '--downlink-api-key[]:' \
    '--downlink-failed.path[]:' \
    '--downlink-nack.path[]:' \
    '--downlink-queued.path[]:' \
    '--downlink-sent.path[]:' \
    '--format[]:' \
    '*--headers[key=value]:' \
    '--join-accept.path[]:' \
    '--location-solved.path[]:' \
    '--service-data.path[]:' \
    '--template-ids.template-id[]:' \
    '--uplink-message.path[]:' \
    '--webhook-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_clients {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "collaborators:Manage client collaborators"
      "contact-info:Manage client contact info"
      "create:Create a client"
      "delete:Delete a client"
      "get:Get a client"
      "list:List clients"
      "rights:List the rights to a client"
      "search:Search for clients"
      "update:Update a client"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  collaborators)
    _ttn-lw-cli_clients_collaborators
    ;;
  contact-info)
    _ttn-lw-cli_clients_contact-info
    ;;
  create)
    _ttn-lw-cli_clients_create
    ;;
  delete)
    _ttn-lw-cli_clients_delete
    ;;
  get)
    _ttn-lw-cli_clients_get
    ;;
  list)
    _ttn-lw-cli_clients_list
    ;;
  rights)
    _ttn-lw-cli_clients_rights
    ;;
  search)
    _ttn-lw-cli_clients_search
    ;;
  update)
    _ttn-lw-cli_clients_update
    ;;
  esac
}


function _ttn-lw-cli_clients_collaborators {
  local -a commands

  _arguments -C \
    '--client-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete a client collaborator"
      "list:List client collaborators"
      "set:Set a client collaborator"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _ttn-lw-cli_clients_collaborators_delete
    ;;
  list)
    _ttn-lw-cli_clients_collaborators_list
    ;;
  set)
    _ttn-lw-cli_clients_collaborators_set
    ;;
  esac
}

function _ttn-lw-cli_clients_collaborators_delete {
  _arguments \
    '--organization-id[]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '--client-id[]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_collaborators_list {
  _arguments \
    '--limit[maximum number of results to get]:' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '--client-id[]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_collaborators_set {
  _arguments \
    '--organization-id[]:' \
    '--right-client-all[]' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '--client-id[]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_clients_contact-info {
  local -a commands

  _arguments -C \
    '--client-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "add:"
      "list:"
      "remove:"
      "request-validation:Request validation for entity contact info"
      "validate:Validate contact info"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  add)
    _ttn-lw-cli_clients_contact-info_add
    ;;
  list)
    _ttn-lw-cli_clients_contact-info_list
    ;;
  remove)
    _ttn-lw-cli_clients_contact-info_remove
    ;;
  request-validation)
    _ttn-lw-cli_clients_contact-info_request-validation
    ;;
  validate)
    _ttn-lw-cli_clients_contact-info_validate
    ;;
  esac
}

function _ttn-lw-cli_clients_contact-info_add {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '--client-id[]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_contact-info_list {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '--client-id[]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_contact-info_remove {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '--client-id[]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_contact-info_request-validation {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '--client-id[]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_contact-info_validate {
  _arguments \
    '--reference[Reference of the requested validation]:' \
    '--token[Token that you received]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '--client-id[]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_create {
  _arguments \
    '*--attributes[key=value]:' \
    '--client-id[]:' \
    '--description[]:' \
    '--endorsed[]' \
    '*--grants[GRANT_AUTHORIZATION_CODE|GRANT_PASSWORD|GRANT_REFRESH_TOKEN]:' \
    '*--logout-redirect-uris[]:' \
    '--name[]:' \
    '--organization-id[]:' \
    '*--redirect-uris[]:' \
    '*--rights[RIGHT_ALL|RIGHT_APPLICATION_ALL|RIGHT_APPLICATION_DELETE|RIGHT_APPLICATION_DEVICES_READ|RIGHT_APPLICATION_DEVICES_READ_KEYS|RIGHT_APPLICATION_DEVICES_WRITE|RIGHT_APPLICATION_DEVICES_WRITE_KEYS|RIGHT_APPLICATION_INFO|RIGHT_APPLICATION_LINK|RIGHT_APPLICATION_SETTINGS_API_KEYS|RIGHT_APPLICATION_SETTINGS_BASIC|RIGHT_APPLICATION_SETTINGS_COLLABORATORS|RIGHT_APPLICATION_SETTINGS_PACKAGES|RIGHT_APPLICATION_TRAFFIC_DOWN_WRITE|RIGHT_APPLICATION_TRAFFIC_READ|RIGHT_APPLICATION_TRAFFIC_UP_WRITE|RIGHT_CLIENT_ALL|RIGHT_GATEWAY_ALL|RIGHT_GATEWAY_DELETE|RIGHT_GATEWAY_INFO|RIGHT_GATEWAY_LINK|RIGHT_GATEWAY_LOCATION_READ|RIGHT_GATEWAY_SETTINGS_API_KEYS|RIGHT_GATEWAY_SETTINGS_BASIC|RIGHT_GATEWAY_SETTINGS_COLLABORATORS|RIGHT_GATEWAY_STATUS_READ|RIGHT_GATEWAY_TRAFFIC_DOWN_WRITE|RIGHT_GATEWAY_TRAFFIC_READ|RIGHT_ORGANIZATION_ADD_AS_COLLABORATOR|RIGHT_ORGANIZATION_ALL|RIGHT_ORGANIZATION_APPLICATIONS_CREATE|RIGHT_ORGANIZATION_APPLICATIONS_LIST|RIGHT_ORGANIZATION_CLIENTS_CREATE|RIGHT_ORGANIZATION_CLIENTS_LIST|RIGHT_ORGANIZATION_DELETE|RIGHT_ORGANIZATION_GATEWAYS_CREATE|RIGHT_ORGANIZATION_GATEWAYS_LIST|RIGHT_ORGANIZATION_INFO|RIGHT_ORGANIZATION_SETTINGS_API_KEYS|RIGHT_ORGANIZATION_SETTINGS_BASIC|RIGHT_ORGANIZATION_SETTINGS_MEMBERS|RIGHT_SEND_INVITES|RIGHT_USER_ALL|RIGHT_USER_APPLICATIONS_CREATE|RIGHT_USER_APPLICATIONS_LIST|RIGHT_USER_AUTHORIZED_CLIENTS|RIGHT_USER_CLIENTS_CREATE|RIGHT_USER_CLIENTS_LIST|RIGHT_USER_DELETE|RIGHT_USER_GATEWAYS_CREATE|RIGHT_USER_GATEWAYS_LIST|RIGHT_USER_INFO|RIGHT_USER_ORGANIZATIONS_CREATE|RIGHT_USER_ORGANIZATIONS_LIST|RIGHT_USER_SETTINGS_API_KEYS|RIGHT_USER_SETTINGS_BASIC|right_invalid]:' \
    '--secret[]:' \
    '--skip-authorization[]' \
    '--state[STATE_APPROVED|STATE_FLAGGED|STATE_REJECTED|STATE_REQUESTED|STATE_SUSPENDED]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_delete {
  _arguments \
    '--client-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_get {
  _arguments \
    '--all[select all client fields]' \
    '--attributes[select the attributes field]' \
    '--client-id[]:' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--endorsed[select the endorsed field]' \
    '--grants[select the grants field]' \
    '--logout-redirect-uris[select the logout_redirect_uris field]' \
    '--name[select the name field]' \
    '--redirect-uris[select the redirect_uris field]' \
    '--rights[select the rights field]' \
    '--secret[select the secret field]' \
    '--skip-authorization[select the skip_authorization field]' \
    '--state[select the state field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_list {
  _arguments \
    '--all[select all client fields]' \
    '--attributes[select the attributes field]' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--endorsed[select the endorsed field]' \
    '--grants[select the grants field]' \
    '--limit[maximum number of results to get]:' \
    '--logout-redirect-uris[select the logout_redirect_uris field]' \
    '--name[select the name field]' \
    '--order[order by this field]:' \
    '--organization-id[]:' \
    '--page[results page number]:' \
    '--redirect-uris[select the redirect_uris field]' \
    '--rights[select the rights field]' \
    '--secret[select the secret field]' \
    '--skip-authorization[select the skip_authorization field]' \
    '--state[select the state field]' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_rights {
  _arguments \
    '--client-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_search {
  _arguments \
    '--all[select all client fields]' \
    '--attributes[select the attributes field]' \
    '--attributes-contain[(key=value)]:' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--description-contains[]:' \
    '--endorsed[select the endorsed field]' \
    '--grants[select the grants field]' \
    '--id-contains[]:' \
    '--limit[maximum number of results to get]:' \
    '--logout-redirect-uris[select the logout_redirect_uris field]' \
    '--name[select the name field]' \
    '--name-contains[]:' \
    '--order[order by this field]:' \
    '--page[results page number]:' \
    '--redirect-uris[select the redirect_uris field]' \
    '--rights[select the rights field]' \
    '--secret[select the secret field]' \
    '--skip-authorization[select the skip_authorization field]' \
    '--state[select the state field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_clients_update {
  _arguments \
    '*--attributes[key=value]:' \
    '--client-id[]:' \
    '--description[]:' \
    '--endorsed[]' \
    '*--grants[GRANT_AUTHORIZATION_CODE|GRANT_PASSWORD|GRANT_REFRESH_TOKEN]:' \
    '*--logout-redirect-uris[]:' \
    '--name[]:' \
    '*--redirect-uris[]:' \
    '*--rights[RIGHT_ALL|RIGHT_APPLICATION_ALL|RIGHT_APPLICATION_DELETE|RIGHT_APPLICATION_DEVICES_READ|RIGHT_APPLICATION_DEVICES_READ_KEYS|RIGHT_APPLICATION_DEVICES_WRITE|RIGHT_APPLICATION_DEVICES_WRITE_KEYS|RIGHT_APPLICATION_INFO|RIGHT_APPLICATION_LINK|RIGHT_APPLICATION_SETTINGS_API_KEYS|RIGHT_APPLICATION_SETTINGS_BASIC|RIGHT_APPLICATION_SETTINGS_COLLABORATORS|RIGHT_APPLICATION_SETTINGS_PACKAGES|RIGHT_APPLICATION_TRAFFIC_DOWN_WRITE|RIGHT_APPLICATION_TRAFFIC_READ|RIGHT_APPLICATION_TRAFFIC_UP_WRITE|RIGHT_CLIENT_ALL|RIGHT_GATEWAY_ALL|RIGHT_GATEWAY_DELETE|RIGHT_GATEWAY_INFO|RIGHT_GATEWAY_LINK|RIGHT_GATEWAY_LOCATION_READ|RIGHT_GATEWAY_SETTINGS_API_KEYS|RIGHT_GATEWAY_SETTINGS_BASIC|RIGHT_GATEWAY_SETTINGS_COLLABORATORS|RIGHT_GATEWAY_STATUS_READ|RIGHT_GATEWAY_TRAFFIC_DOWN_WRITE|RIGHT_GATEWAY_TRAFFIC_READ|RIGHT_ORGANIZATION_ADD_AS_COLLABORATOR|RIGHT_ORGANIZATION_ALL|RIGHT_ORGANIZATION_APPLICATIONS_CREATE|RIGHT_ORGANIZATION_APPLICATIONS_LIST|RIGHT_ORGANIZATION_CLIENTS_CREATE|RIGHT_ORGANIZATION_CLIENTS_LIST|RIGHT_ORGANIZATION_DELETE|RIGHT_ORGANIZATION_GATEWAYS_CREATE|RIGHT_ORGANIZATION_GATEWAYS_LIST|RIGHT_ORGANIZATION_INFO|RIGHT_ORGANIZATION_SETTINGS_API_KEYS|RIGHT_ORGANIZATION_SETTINGS_BASIC|RIGHT_ORGANIZATION_SETTINGS_MEMBERS|RIGHT_SEND_INVITES|RIGHT_USER_ALL|RIGHT_USER_APPLICATIONS_CREATE|RIGHT_USER_APPLICATIONS_LIST|RIGHT_USER_AUTHORIZED_CLIENTS|RIGHT_USER_CLIENTS_CREATE|RIGHT_USER_CLIENTS_LIST|RIGHT_USER_DELETE|RIGHT_USER_GATEWAYS_CREATE|RIGHT_USER_GATEWAYS_LIST|RIGHT_USER_INFO|RIGHT_USER_ORGANIZATIONS_CREATE|RIGHT_USER_ORGANIZATIONS_LIST|RIGHT_USER_SETTINGS_API_KEYS|RIGHT_USER_SETTINGS_BASIC|right_invalid]:' \
    '--secret[]:' \
    '--skip-authorization[]' \
    '--state[STATE_APPROVED|STATE_FLAGGED|STATE_REJECTED|STATE_REQUESTED|STATE_SUSPENDED]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_config {
  _arguments \
    '--env[print as environment]' \
    '--yml[print as yml]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_end-devices {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "claim:Claim an end device (EXPERIMENTAL)"
      "create:Create an end device"
      "delete:Delete an end device"
      "downlink:Application downlink commands"
      "generate-qr:Generate an end device QR code (EXPERIMENTAL)"
      "get:Get an end device"
      "list:List end devices"
      "list-frequency-plans:List available frequency plans for end devices"
      "list-qr-formats:List QR code formats (EXPERIMENTAL)"
      "provision:Provision end devices using vendor-specific data"
      "search:Search for end devices"
      "templates:End Device template commands"
      "update:Update an end device"
      "use-external-join-server:Disassociate and delete the device from Join Server"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  claim)
    _ttn-lw-cli_end-devices_claim
    ;;
  create)
    _ttn-lw-cli_end-devices_create
    ;;
  delete)
    _ttn-lw-cli_end-devices_delete
    ;;
  downlink)
    _ttn-lw-cli_end-devices_downlink
    ;;
  generate-qr)
    _ttn-lw-cli_end-devices_generate-qr
    ;;
  get)
    _ttn-lw-cli_end-devices_get
    ;;
  list)
    _ttn-lw-cli_end-devices_list
    ;;
  list-frequency-plans)
    _ttn-lw-cli_end-devices_list-frequency-plans
    ;;
  list-qr-formats)
    _ttn-lw-cli_end-devices_list-qr-formats
    ;;
  provision)
    _ttn-lw-cli_end-devices_provision
    ;;
  search)
    _ttn-lw-cli_end-devices_search
    ;;
  templates)
    _ttn-lw-cli_end-devices_templates
    ;;
  update)
    _ttn-lw-cli_end-devices_update
    ;;
  use-external-join-server)
    _ttn-lw-cli_end-devices_use-external-join-server
    ;;
  esac
}

function _ttn-lw-cli_end-devices_claim {
  _arguments \
    '--application-id[]:' \
    '--invalidate-authentication-code[invalidate the claim authentication code to block subsequent claiming attempts]' \
    '--source-authentication-code[(hex)]:' \
    '--source-dev-eui[(hex)]:' \
    '--source-join-eui[(hex)]:' \
    '--target-application-server-id[]:' \
    '--target-application-server-kek-label[]:' \
    '--target-device-id[]:' \
    '--target-net-id[(hex)]:' \
    '--target-network-server-kek-label[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_create {
  _arguments \
    '--abp[configure end device as ABP]' \
    '--application-id[]:' \
    '--application-server-address[]:' \
    '--application-server-id[]:' \
    '--application-server-kek-label[]:' \
    '*--attributes[key=value]:' \
    '--claim-authentication-code.valid-from[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.valid-to[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.value[]:' \
    '--defaults[configure end device with defaults]' \
    '--description[]:' \
    '--dev-eui[(hex)]:' \
    '--device-id[]:' \
    '--formatters.down-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.down-formatter-parameter[]:' \
    '--formatters.down-formatter-parameter-local-file[(local file name)]:' \
    '--formatters.up-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.up-formatter-parameter[]:' \
    '--formatters.up-formatter-parameter-local-file[(local file name)]:' \
    '--frequency-plan-id[]:' \
    '--join-eui[(hex)]:' \
    '--join-server-address[]:' \
    '--last-dev-nonce[]:' \
    '--last-join-nonce[]:' \
    '--last-rj-count-0[]:' \
    '--last-rj-count-1[]:' \
    '--location.accuracy[]:' \
    '--location.altitude[]:' \
    '--location.latitude[]:' \
    '--location.longitude[]:' \
    '--location.source[SOURCE_BT_RSSI_GEOLOCATION|SOURCE_COMBINED_GEOLOCATION|SOURCE_GPS|SOURCE_IP_GEOLOCATION|SOURCE_LORA_RSSI_GEOLOCATION|SOURCE_LORA_TDOA_GEOLOCATION|SOURCE_REGISTRY|SOURCE_UNKNOWN|SOURCE_WIFI_RSSI_GEOLOCATION]:' \
    '--lorawan-phy-version[1.0.0|1.0.1|1.0.2-a|1.0.2-b|1.0.3-a|1.1.0-a|1.1.0-b|PHY_UNKNOWN|PHY_V1_0|PHY_V1_0_1|PHY_V1_0_2_REV_A|PHY_V1_0_2_REV_B|PHY_V1_0_3_REV_A|PHY_V1_1_REV_A|PHY_V1_1_REV_B|unknown]:' \
    '--lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-settings.adr-margin[]:' \
    '--mac-settings.beacon-frequency[]:' \
    '--mac-settings.class-b-timeout[(1h2m3s)]:' \
    '--mac-settings.class-c-timeout[(1h2m3s)]:' \
    '--mac-settings.desired-adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-settings.desired-adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-settings.desired-beacon-frequency[]:' \
    '--mac-settings.desired-max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.desired-ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-ping-slot-frequency[]:' \
    '--mac-settings.desired-rx1-data-rate-offset[]:' \
    '--mac-settings.desired-rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.desired-rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-rx2-frequency[]:' \
    '*--mac-settings.factory-preset-frequencies[]:' \
    '--mac-settings.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.ping-slot-frequency[]:' \
    '--mac-settings.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--mac-settings.resets-f-cnt[]' \
    '--mac-settings.rx1-data-rate-offset[]:' \
    '--mac-settings.rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.rx2-frequency[]:' \
    '--mac-settings.status-count-periodicity[]:' \
    '--mac-settings.status-time-periodicity[(1h2m3s)]:' \
    '--mac-settings.supports-32-bit-f-cnt[]' \
    '--mac-settings.use-adr[]' \
    '--mac-state.current-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.current-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.current-parameters.adr-nb-trans[]:' \
    '--mac-state.current-parameters.adr-tx-power-index[]:' \
    '--mac-state.current-parameters.beacon-frequency[]:' \
    '--mac-state.current-parameters.downlink-dwell-time[]' \
    '--mac-state.current-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.current-parameters.max-eirp[]:' \
    '--mac-state.current-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.ping-slot-frequency[]:' \
    '--mac-state.current-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.current-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.current-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.current-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.current-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.rx2-frequency[]:' \
    '--mac-state.current-parameters.uplink-dwell-time[]' \
    '--mac-state.desired-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.desired-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.desired-parameters.adr-nb-trans[]:' \
    '--mac-state.desired-parameters.adr-tx-power-index[]:' \
    '--mac-state.desired-parameters.beacon-frequency[]:' \
    '--mac-state.desired-parameters.downlink-dwell-time[]' \
    '--mac-state.desired-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.desired-parameters.max-eirp[]:' \
    '--mac-state.desired-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.ping-slot-frequency[]:' \
    '--mac-state.desired-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.desired-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.desired-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.desired-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.desired-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.rx2-frequency[]:' \
    '--mac-state.desired-parameters.uplink-dwell-time[]' \
    '--mac-state.device-class[CLASS_A|CLASS_B|CLASS_C]:' \
    '--mac-state.lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-state.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--max-frequency[]:' \
    '--min-frequency[]:' \
    '--multicast[]' \
    '--name[]:' \
    '--net-id[(hex)]:' \
    '--network-server-address[]:' \
    '--network-server-kek-label[]:' \
    '--picture[upload the end device picture from this file]:' \
    '--provisioner-id[]:' \
    '--resets-join-nonces[]' \
    '--root-keys.app-key.key[(hex)]:' \
    '--root-keys.nwk-key.key[(hex)]:' \
    '--root-keys.root-key-id[]:' \
    '--service-profile-id[]:' \
    '--session.dev-addr[(hex)]:' \
    '--session.keys.app-s-key.key[(hex)]:' \
    '--session.keys.f-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.nwk-s-enc-key.key[(hex)]:' \
    '--session.keys.s-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.session-key-id[(hex)]:' \
    '--session.last-a-f-cnt-down[]:' \
    '--session.last-conf-f-cnt-down[]:' \
    '--session.last-f-cnt-up[]:' \
    '--session.last-n-f-cnt-down[]:' \
    '--session.started-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--skip-payload-crypto[]' \
    '--skip-payload-crypto-override[]' \
    '--supports-class-b[]' \
    '--supports-class-c[]' \
    '--supports-join[]' \
    '*--used-dev-nonces[]:' \
    '--version-ids.brand-id[]:' \
    '--version-ids.firmware-version[]:' \
    '--version-ids.hardware-version[]:' \
    '--version-ids.model-id[]:' \
    '--with-claim-authentication-code[generate claim authentication code of 4 bytes]' \
    '--with-root-keys[generate OTAA root keys]' \
    '--with-session[generate ABP session DevAddr and keys]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_delete {
  _arguments \
    '--application-id[]:' \
    '--dev-eui[(hex)]:' \
    '--device-id[]:' \
    '--join-eui[(hex)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_end-devices_downlink {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "clear:Clear the application downlink queue"
      "list:List the application downlink queue"
      "push:Push to the application downlink queue"
      "replace:Replace the application downlink queue"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  clear)
    _ttn-lw-cli_end-devices_downlink_clear
    ;;
  list)
    _ttn-lw-cli_end-devices_downlink_list
    ;;
  push)
    _ttn-lw-cli_end-devices_downlink_push
    ;;
  replace)
    _ttn-lw-cli_end-devices_downlink_replace
    ;;
  esac
}

function _ttn-lw-cli_end-devices_downlink_clear {
  _arguments \
    '--application-id[]:' \
    '--dev-eui[(hex)]:' \
    '--device-id[]:' \
    '--join-eui[(hex)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_downlink_list {
  _arguments \
    '--application-id[]:' \
    '--dev-eui[(hex)]:' \
    '--device-id[]:' \
    '--join-eui[(hex)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_downlink_push {
  _arguments \
    '--application-id[]:' \
    '--class-b-c.absolute-time[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '*--class-b-c.gateways[]:' \
    '--confirmed[]' \
    '*--correlation-ids[]:' \
    '--dev-eui[(hex)]:' \
    '--device-id[]:' \
    '--f-cnt[]:' \
    '--f-port[]:' \
    '--frm-payload[(hex)]:' \
    '--join-eui[(hex)]:' \
    '--priority[ABOVE_NORMAL|BELOW_NORMAL|HIGH|HIGHEST|LOW|LOWEST|NORMAL]:' \
    '--session-key-id[(hex)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_downlink_replace {
  _arguments \
    '--application-id[]:' \
    '--class-b-c.absolute-time[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '*--class-b-c.gateways[]:' \
    '--confirmed[]' \
    '*--correlation-ids[]:' \
    '--dev-eui[(hex)]:' \
    '--device-id[]:' \
    '--f-cnt[]:' \
    '--f-port[]:' \
    '--frm-payload[(hex)]:' \
    '--join-eui[(hex)]:' \
    '--priority[ABOVE_NORMAL|BELOW_NORMAL|HIGH|HIGHEST|LOW|LOWEST|NORMAL]:' \
    '--session-key-id[(hex)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_generate-qr {
  _arguments \
    '--application-id[]:' \
    '--dev-eui[(hex)]:' \
    '--device-id[]:' \
    '--folder[folder to write the QR code image to]:' \
    '--format-id[]:' \
    '--join-eui[(hex)]:' \
    '--size[size of the image in pixels]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_get {
  _arguments \
    '--all[select all end devices fields]' \
    '--application-id[]:' \
    '--application-server-address[select the application_server_address field]' \
    '--application-server-id[select the application_server_id field]' \
    '--application-server-kek-label[select the application_server_kek_label field]' \
    '--attributes[select the attributes field]' \
    '--battery-percentage[select the battery_percentage field]' \
    '--claim-authentication-code[select the claim_authentication_code field and all allowed sub-fields]' \
    '--claim-authentication-code.valid-from[select the claim_authentication_code.valid_from field]' \
    '--claim-authentication-code.valid-to[select the claim_authentication_code.valid_to field]' \
    '--claim-authentication-code.value[select the claim_authentication_code.value field]' \
    '--description[select the description field]' \
    '--dev-eui[(hex)]:' \
    '--device-id[]:' \
    '--downlink-margin[select the downlink_margin field]' \
    '--formatters[select the formatters field and all allowed sub-fields]' \
    '--formatters.down-formatter[select the formatters.down_formatter field]' \
    '--formatters.down-formatter-parameter[select the formatters.down_formatter_parameter field]' \
    '--formatters.up-formatter[select the formatters.up_formatter field]' \
    '--formatters.up-formatter-parameter[select the formatters.up_formatter_parameter field]' \
    '--frequency-plan-id[select the frequency_plan_id field]' \
    '--join-eui[(hex)]:' \
    '--join-server-address[select the join_server_address field]' \
    '--last-dev-nonce[select the last_dev_nonce field]' \
    '--last-join-nonce[select the last_join_nonce field]' \
    '--last-rj-count-0[select the last_rj_count_0 field]' \
    '--last-rj-count-1[select the last_rj_count_1 field]' \
    '--locations[select the locations field]' \
    '--lorawan-phy-version[select the lorawan_phy_version field]' \
    '--lorawan-version[select the lorawan_version field]' \
    '--mac-settings[select the mac_settings field and all allowed sub-fields]' \
    '--mac-settings.adr-margin[select the mac_settings.adr_margin field]' \
    '--mac-settings.beacon-frequency[select the mac_settings.beacon_frequency field]' \
    '--mac-settings.class-b-timeout[select the mac_settings.class_b_timeout field]' \
    '--mac-settings.class-c-timeout[select the mac_settings.class_c_timeout field]' \
    '--mac-settings.desired-adr-ack-delay-exponent[select the mac_settings.desired_adr_ack_delay_exponent field]' \
    '--mac-settings.desired-adr-ack-limit-exponent[select the mac_settings.desired_adr_ack_limit_exponent field]' \
    '--mac-settings.desired-beacon-frequency[select the mac_settings.desired_beacon_frequency field]' \
    '--mac-settings.desired-max-duty-cycle[select the mac_settings.desired_max_duty_cycle field]' \
    '--mac-settings.desired-ping-slot-data-rate-index[select the mac_settings.desired_ping_slot_data_rate_index field]' \
    '--mac-settings.desired-ping-slot-frequency[select the mac_settings.desired_ping_slot_frequency field]' \
    '--mac-settings.desired-rx1-data-rate-offset[select the mac_settings.desired_rx1_data_rate_offset field]' \
    '--mac-settings.desired-rx1-delay[select the mac_settings.desired_rx1_delay field]' \
    '--mac-settings.desired-rx2-data-rate-index[select the mac_settings.desired_rx2_data_rate_index field]' \
    '--mac-settings.desired-rx2-frequency[select the mac_settings.desired_rx2_frequency field]' \
    '--mac-settings.factory-preset-frequencies[select the mac_settings.factory_preset_frequencies field]' \
    '--mac-settings.max-duty-cycle[select the mac_settings.max_duty_cycle field]' \
    '--mac-settings.ping-slot-data-rate-index[select the mac_settings.ping_slot_data_rate_index field]' \
    '--mac-settings.ping-slot-frequency[select the mac_settings.ping_slot_frequency field]' \
    '--mac-settings.ping-slot-periodicity[select the mac_settings.ping_slot_periodicity field]' \
    '--mac-settings.resets-f-cnt[select the mac_settings.resets_f_cnt field]' \
    '--mac-settings.rx1-data-rate-offset[select the mac_settings.rx1_data_rate_offset field]' \
    '--mac-settings.rx1-delay[select the mac_settings.rx1_delay field]' \
    '--mac-settings.rx2-data-rate-index[select the mac_settings.rx2_data_rate_index field]' \
    '--mac-settings.rx2-frequency[select the mac_settings.rx2_frequency field]' \
    '--mac-settings.status-count-periodicity[select the mac_settings.status_count_periodicity field]' \
    '--mac-settings.status-time-periodicity[select the mac_settings.status_time_periodicity field]' \
    '--mac-settings.supports-32-bit-f-cnt[select the mac_settings.supports_32_bit_f_cnt field]' \
    '--mac-settings.use-adr[select the mac_settings.use_adr field]' \
    '--mac-state[select the mac_state field and all allowed sub-fields]' \
    '--mac-state.current-parameters[select the mac_state.current_parameters field and all allowed sub-fields]' \
    '--mac-state.current-parameters.adr-ack-delay[select the mac_state.current_parameters.adr_ack_delay field]' \
    '--mac-state.current-parameters.adr-ack-delay-exponent[select the mac_state.current_parameters.adr_ack_delay_exponent field]' \
    '--mac-state.current-parameters.adr-ack-limit[select the mac_state.current_parameters.adr_ack_limit field]' \
    '--mac-state.current-parameters.adr-ack-limit-exponent[select the mac_state.current_parameters.adr_ack_limit_exponent field]' \
    '--mac-state.current-parameters.adr-data-rate-index[select the mac_state.current_parameters.adr_data_rate_index field]' \
    '--mac-state.current-parameters.adr-nb-trans[select the mac_state.current_parameters.adr_nb_trans field]' \
    '--mac-state.current-parameters.adr-tx-power-index[select the mac_state.current_parameters.adr_tx_power_index field]' \
    '--mac-state.current-parameters.beacon-frequency[select the mac_state.current_parameters.beacon_frequency field]' \
    '--mac-state.current-parameters.channels[select the mac_state.current_parameters.channels field]' \
    '--mac-state.current-parameters.downlink-dwell-time[select the mac_state.current_parameters.downlink_dwell_time field]' \
    '--mac-state.current-parameters.max-duty-cycle[select the mac_state.current_parameters.max_duty_cycle field]' \
    '--mac-state.current-parameters.max-eirp[select the mac_state.current_parameters.max_eirp field]' \
    '--mac-state.current-parameters.ping-slot-data-rate-index[select the mac_state.current_parameters.ping_slot_data_rate_index field]' \
    '--mac-state.current-parameters.ping-slot-frequency[select the mac_state.current_parameters.ping_slot_frequency field]' \
    '--mac-state.current-parameters.rejoin-count-periodicity[select the mac_state.current_parameters.rejoin_count_periodicity field]' \
    '--mac-state.current-parameters.rejoin-time-periodicity[select the mac_state.current_parameters.rejoin_time_periodicity field]' \
    '--mac-state.current-parameters.rx1-data-rate-offset[select the mac_state.current_parameters.rx1_data_rate_offset field]' \
    '--mac-state.current-parameters.rx1-delay[select the mac_state.current_parameters.rx1_delay field]' \
    '--mac-state.current-parameters.rx2-data-rate-index[select the mac_state.current_parameters.rx2_data_rate_index field]' \
    '--mac-state.current-parameters.rx2-frequency[select the mac_state.current_parameters.rx2_frequency field]' \
    '--mac-state.current-parameters.uplink-dwell-time[select the mac_state.current_parameters.uplink_dwell_time field]' \
    '--mac-state.desired-parameters[select the mac_state.desired_parameters field and all allowed sub-fields]' \
    '--mac-state.desired-parameters.adr-ack-delay[select the mac_state.desired_parameters.adr_ack_delay field]' \
    '--mac-state.desired-parameters.adr-ack-delay-exponent[select the mac_state.desired_parameters.adr_ack_delay_exponent field]' \
    '--mac-state.desired-parameters.adr-ack-limit[select the mac_state.desired_parameters.adr_ack_limit field]' \
    '--mac-state.desired-parameters.adr-ack-limit-exponent[select the mac_state.desired_parameters.adr_ack_limit_exponent field]' \
    '--mac-state.desired-parameters.adr-data-rate-index[select the mac_state.desired_parameters.adr_data_rate_index field]' \
    '--mac-state.desired-parameters.adr-nb-trans[select the mac_state.desired_parameters.adr_nb_trans field]' \
    '--mac-state.desired-parameters.adr-tx-power-index[select the mac_state.desired_parameters.adr_tx_power_index field]' \
    '--mac-state.desired-parameters.beacon-frequency[select the mac_state.desired_parameters.beacon_frequency field]' \
    '--mac-state.desired-parameters.channels[select the mac_state.desired_parameters.channels field]' \
    '--mac-state.desired-parameters.downlink-dwell-time[select the mac_state.desired_parameters.downlink_dwell_time field]' \
    '--mac-state.desired-parameters.max-duty-cycle[select the mac_state.desired_parameters.max_duty_cycle field]' \
    '--mac-state.desired-parameters.max-eirp[select the mac_state.desired_parameters.max_eirp field]' \
    '--mac-state.desired-parameters.ping-slot-data-rate-index[select the mac_state.desired_parameters.ping_slot_data_rate_index field]' \
    '--mac-state.desired-parameters.ping-slot-frequency[select the mac_state.desired_parameters.ping_slot_frequency field]' \
    '--mac-state.desired-parameters.rejoin-count-periodicity[select the mac_state.desired_parameters.rejoin_count_periodicity field]' \
    '--mac-state.desired-parameters.rejoin-time-periodicity[select the mac_state.desired_parameters.rejoin_time_periodicity field]' \
    '--mac-state.desired-parameters.rx1-data-rate-offset[select the mac_state.desired_parameters.rx1_data_rate_offset field]' \
    '--mac-state.desired-parameters.rx1-delay[select the mac_state.desired_parameters.rx1_delay field]' \
    '--mac-state.desired-parameters.rx2-data-rate-index[select the mac_state.desired_parameters.rx2_data_rate_index field]' \
    '--mac-state.desired-parameters.rx2-frequency[select the mac_state.desired_parameters.rx2_frequency field]' \
    '--mac-state.desired-parameters.uplink-dwell-time[select the mac_state.desired_parameters.uplink_dwell_time field]' \
    '--mac-state.device-class[select the mac_state.device_class field]' \
    '--mac-state.last-confirmed-downlink-at[select the mac_state.last_confirmed_downlink_at field]' \
    '--mac-state.last-dev-status-f-cnt-up[select the mac_state.last_dev_status_f_cnt_up field]' \
    '--mac-state.lorawan-version[select the mac_state.lorawan_version field]' \
    '--mac-state.pending-application-downlink[select the mac_state.pending_application_downlink field and all allowed sub-fields]' \
    '--mac-state.pending-application-downlink.class-b-c[select the mac_state.pending_application_downlink.class_b_c field and all allowed sub-fields]' \
    '--mac-state.pending-application-downlink.class-b-c.absolute-time[select the mac_state.pending_application_downlink.class_b_c.absolute_time field]' \
    '--mac-state.pending-application-downlink.class-b-c.gateways[select the mac_state.pending_application_downlink.class_b_c.gateways field]' \
    '--mac-state.pending-application-downlink.confirmed[select the mac_state.pending_application_downlink.confirmed field]' \
    '--mac-state.pending-application-downlink.correlation-ids[select the mac_state.pending_application_downlink.correlation_ids field]' \
    '--mac-state.pending-application-downlink.decoded-payload[select the mac_state.pending_application_downlink.decoded_payload field and all allowed sub-fields]' \
    '--mac-state.pending-application-downlink.f-cnt[select the mac_state.pending_application_downlink.f_cnt field]' \
    '--mac-state.pending-application-downlink.f-port[select the mac_state.pending_application_downlink.f_port field]' \
    '--mac-state.pending-application-downlink.frm-payload[select the mac_state.pending_application_downlink.frm_payload field]' \
    '--mac-state.pending-application-downlink.priority[select the mac_state.pending_application_downlink.priority field]' \
    '--mac-state.pending-application-downlink.session-key-id[select the mac_state.pending_application_downlink.session_key_id field]' \
    '--mac-state.pending-join-request[select the mac_state.pending_join_request field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.cf-list[select the mac_state.pending_join_request.cf_list field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.cf-list.ch-masks[select the mac_state.pending_join_request.cf_list.ch_masks field]' \
    '--mac-state.pending-join-request.cf-list.freq[select the mac_state.pending_join_request.cf_list.freq field]' \
    '--mac-state.pending-join-request.cf-list.type[select the mac_state.pending_join_request.cf_list.type field]' \
    '--mac-state.pending-join-request.correlation-ids[select the mac_state.pending_join_request.correlation_ids field]' \
    '--mac-state.pending-join-request.dev-addr[select the mac_state.pending_join_request.dev_addr field]' \
    '--mac-state.pending-join-request.downlink-settings[select the mac_state.pending_join_request.downlink_settings field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.downlink-settings.opt-neg[select the mac_state.pending_join_request.downlink_settings.opt_neg field]' \
    '--mac-state.pending-join-request.downlink-settings.rx1-dr-offset[select the mac_state.pending_join_request.downlink_settings.rx1_dr_offset field]' \
    '--mac-state.pending-join-request.downlink-settings.rx2-dr[select the mac_state.pending_join_request.downlink_settings.rx2_dr field]' \
    '--mac-state.pending-join-request.net-id[select the mac_state.pending_join_request.net_id field]' \
    '--mac-state.pending-join-request.payload[select the mac_state.pending_join_request.payload field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.payload.m-hdr[select the mac_state.pending_join_request.payload.m_hdr field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.payload.m-hdr.m-type[select the mac_state.pending_join_request.payload.m_hdr.m_type field]' \
    '--mac-state.pending-join-request.payload.m-hdr.major[select the mac_state.pending_join_request.payload.m_hdr.major field]' \
    '--mac-state.pending-join-request.payload.mic[select the mac_state.pending_join_request.payload.mic field]' \
    '--mac-state.pending-join-request.raw-payload[select the mac_state.pending_join_request.raw_payload field]' \
    '--mac-state.pending-join-request.rx-delay[select the mac_state.pending_join_request.rx_delay field]' \
    '--mac-state.pending-join-request.selected-mac-version[select the mac_state.pending_join_request.selected_mac_version field]' \
    '--mac-state.pending-requests[select the mac_state.pending_requests field]' \
    '--mac-state.ping-slot-periodicity[select the mac_state.ping_slot_periodicity field]' \
    '--mac-state.queued-join-accept[select the mac_state.queued_join_accept field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys[select the mac_state.queued_join_accept.keys field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.app-s-key[select the mac_state.queued_join_accept.keys.app_s_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.app-s-key.key[select the mac_state.queued_join_accept.keys.app_s_key.key field]' \
    '--mac-state.queued-join-accept.keys.f-nwk-s-int-key[select the mac_state.queued_join_accept.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.f-nwk-s-int-key.key[select the mac_state.queued_join_accept.keys.f_nwk_s_int_key.key field]' \
    '--mac-state.queued-join-accept.keys.nwk-s-enc-key[select the mac_state.queued_join_accept.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.nwk-s-enc-key.key[select the mac_state.queued_join_accept.keys.nwk_s_enc_key.key field]' \
    '--mac-state.queued-join-accept.keys.s-nwk-s-int-key[select the mac_state.queued_join_accept.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.s-nwk-s-int-key.key[select the mac_state.queued_join_accept.keys.s_nwk_s_int_key.key field]' \
    '--mac-state.queued-join-accept.keys.session-key-id[select the mac_state.queued_join_accept.keys.session_key_id field]' \
    '--mac-state.queued-join-accept.payload[select the mac_state.queued_join_accept.payload field]' \
    '--mac-state.queued-join-accept.request[select the mac_state.queued_join_accept.request field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.cf-list[select the mac_state.queued_join_accept.request.cf_list field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.cf-list.ch-masks[select the mac_state.queued_join_accept.request.cf_list.ch_masks field]' \
    '--mac-state.queued-join-accept.request.cf-list.freq[select the mac_state.queued_join_accept.request.cf_list.freq field]' \
    '--mac-state.queued-join-accept.request.cf-list.type[select the mac_state.queued_join_accept.request.cf_list.type field]' \
    '--mac-state.queued-join-accept.request.correlation-ids[select the mac_state.queued_join_accept.request.correlation_ids field]' \
    '--mac-state.queued-join-accept.request.dev-addr[select the mac_state.queued_join_accept.request.dev_addr field]' \
    '--mac-state.queued-join-accept.request.downlink-settings[select the mac_state.queued_join_accept.request.downlink_settings field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.downlink-settings.opt-neg[select the mac_state.queued_join_accept.request.downlink_settings.opt_neg field]' \
    '--mac-state.queued-join-accept.request.downlink-settings.rx1-dr-offset[select the mac_state.queued_join_accept.request.downlink_settings.rx1_dr_offset field]' \
    '--mac-state.queued-join-accept.request.downlink-settings.rx2-dr[select the mac_state.queued_join_accept.request.downlink_settings.rx2_dr field]' \
    '--mac-state.queued-join-accept.request.net-id[select the mac_state.queued_join_accept.request.net_id field]' \
    '--mac-state.queued-join-accept.request.payload[select the mac_state.queued_join_accept.request.payload field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.payload.m-hdr[select the mac_state.queued_join_accept.request.payload.m_hdr field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.payload.m-hdr.m-type[select the mac_state.queued_join_accept.request.payload.m_hdr.m_type field]' \
    '--mac-state.queued-join-accept.request.payload.m-hdr.major[select the mac_state.queued_join_accept.request.payload.m_hdr.major field]' \
    '--mac-state.queued-join-accept.request.payload.mic[select the mac_state.queued_join_accept.request.payload.mic field]' \
    '--mac-state.queued-join-accept.request.raw-payload[select the mac_state.queued_join_accept.request.raw_payload field]' \
    '--mac-state.queued-join-accept.request.rx-delay[select the mac_state.queued_join_accept.request.rx_delay field]' \
    '--mac-state.queued-join-accept.request.selected-mac-version[select the mac_state.queued_join_accept.request.selected_mac_version field]' \
    '--mac-state.queued-responses[select the mac_state.queued_responses field]' \
    '--mac-state.rx-windows-available[select the mac_state.rx_windows_available field]' \
    '--max-frequency[select the max_frequency field]' \
    '--min-frequency[select the min_frequency field]' \
    '--multicast[select the multicast field]' \
    '--name[select the name field]' \
    '--net-id[select the net_id field]' \
    '--network-server-address[select the network_server_address field]' \
    '--network-server-kek-label[select the network_server_kek_label field]' \
    '--pending-mac-state[select the pending_mac_state field and all allowed sub-fields]' \
    '--pending-mac-state.current-parameters[select the pending_mac_state.current_parameters field and all allowed sub-fields]' \
    '--pending-mac-state.current-parameters.adr-ack-delay[select the pending_mac_state.current_parameters.adr_ack_delay field]' \
    '--pending-mac-state.current-parameters.adr-ack-delay-exponent[select the pending_mac_state.current_parameters.adr_ack_delay_exponent field]' \
    '--pending-mac-state.current-parameters.adr-ack-limit[select the pending_mac_state.current_parameters.adr_ack_limit field]' \
    '--pending-mac-state.current-parameters.adr-ack-limit-exponent[select the pending_mac_state.current_parameters.adr_ack_limit_exponent field]' \
    '--pending-mac-state.current-parameters.adr-data-rate-index[select the pending_mac_state.current_parameters.adr_data_rate_index field]' \
    '--pending-mac-state.current-parameters.adr-nb-trans[select the pending_mac_state.current_parameters.adr_nb_trans field]' \
    '--pending-mac-state.current-parameters.adr-tx-power-index[select the pending_mac_state.current_parameters.adr_tx_power_index field]' \
    '--pending-mac-state.current-parameters.beacon-frequency[select the pending_mac_state.current_parameters.beacon_frequency field]' \
    '--pending-mac-state.current-parameters.channels[select the pending_mac_state.current_parameters.channels field]' \
    '--pending-mac-state.current-parameters.downlink-dwell-time[select the pending_mac_state.current_parameters.downlink_dwell_time field]' \
    '--pending-mac-state.current-parameters.max-duty-cycle[select the pending_mac_state.current_parameters.max_duty_cycle field]' \
    '--pending-mac-state.current-parameters.max-eirp[select the pending_mac_state.current_parameters.max_eirp field]' \
    '--pending-mac-state.current-parameters.ping-slot-data-rate-index[select the pending_mac_state.current_parameters.ping_slot_data_rate_index field]' \
    '--pending-mac-state.current-parameters.ping-slot-frequency[select the pending_mac_state.current_parameters.ping_slot_frequency field]' \
    '--pending-mac-state.current-parameters.rejoin-count-periodicity[select the pending_mac_state.current_parameters.rejoin_count_periodicity field]' \
    '--pending-mac-state.current-parameters.rejoin-time-periodicity[select the pending_mac_state.current_parameters.rejoin_time_periodicity field]' \
    '--pending-mac-state.current-parameters.rx1-data-rate-offset[select the pending_mac_state.current_parameters.rx1_data_rate_offset field]' \
    '--pending-mac-state.current-parameters.rx1-delay[select the pending_mac_state.current_parameters.rx1_delay field]' \
    '--pending-mac-state.current-parameters.rx2-data-rate-index[select the pending_mac_state.current_parameters.rx2_data_rate_index field]' \
    '--pending-mac-state.current-parameters.rx2-frequency[select the pending_mac_state.current_parameters.rx2_frequency field]' \
    '--pending-mac-state.current-parameters.uplink-dwell-time[select the pending_mac_state.current_parameters.uplink_dwell_time field]' \
    '--pending-mac-state.desired-parameters[select the pending_mac_state.desired_parameters field and all allowed sub-fields]' \
    '--pending-mac-state.desired-parameters.adr-ack-delay[select the pending_mac_state.desired_parameters.adr_ack_delay field]' \
    '--pending-mac-state.desired-parameters.adr-ack-delay-exponent[select the pending_mac_state.desired_parameters.adr_ack_delay_exponent field]' \
    '--pending-mac-state.desired-parameters.adr-ack-limit[select the pending_mac_state.desired_parameters.adr_ack_limit field]' \
    '--pending-mac-state.desired-parameters.adr-ack-limit-exponent[select the pending_mac_state.desired_parameters.adr_ack_limit_exponent field]' \
    '--pending-mac-state.desired-parameters.adr-data-rate-index[select the pending_mac_state.desired_parameters.adr_data_rate_index field]' \
    '--pending-mac-state.desired-parameters.adr-nb-trans[select the pending_mac_state.desired_parameters.adr_nb_trans field]' \
    '--pending-mac-state.desired-parameters.adr-tx-power-index[select the pending_mac_state.desired_parameters.adr_tx_power_index field]' \
    '--pending-mac-state.desired-parameters.beacon-frequency[select the pending_mac_state.desired_parameters.beacon_frequency field]' \
    '--pending-mac-state.desired-parameters.channels[select the pending_mac_state.desired_parameters.channels field]' \
    '--pending-mac-state.desired-parameters.downlink-dwell-time[select the pending_mac_state.desired_parameters.downlink_dwell_time field]' \
    '--pending-mac-state.desired-parameters.max-duty-cycle[select the pending_mac_state.desired_parameters.max_duty_cycle field]' \
    '--pending-mac-state.desired-parameters.max-eirp[select the pending_mac_state.desired_parameters.max_eirp field]' \
    '--pending-mac-state.desired-parameters.ping-slot-data-rate-index[select the pending_mac_state.desired_parameters.ping_slot_data_rate_index field]' \
    '--pending-mac-state.desired-parameters.ping-slot-frequency[select the pending_mac_state.desired_parameters.ping_slot_frequency field]' \
    '--pending-mac-state.desired-parameters.rejoin-count-periodicity[select the pending_mac_state.desired_parameters.rejoin_count_periodicity field]' \
    '--pending-mac-state.desired-parameters.rejoin-time-periodicity[select the pending_mac_state.desired_parameters.rejoin_time_periodicity field]' \
    '--pending-mac-state.desired-parameters.rx1-data-rate-offset[select the pending_mac_state.desired_parameters.rx1_data_rate_offset field]' \
    '--pending-mac-state.desired-parameters.rx1-delay[select the pending_mac_state.desired_parameters.rx1_delay field]' \
    '--pending-mac-state.desired-parameters.rx2-data-rate-index[select the pending_mac_state.desired_parameters.rx2_data_rate_index field]' \
    '--pending-mac-state.desired-parameters.rx2-frequency[select the pending_mac_state.desired_parameters.rx2_frequency field]' \
    '--pending-mac-state.desired-parameters.uplink-dwell-time[select the pending_mac_state.desired_parameters.uplink_dwell_time field]' \
    '--pending-mac-state.device-class[select the pending_mac_state.device_class field]' \
    '--pending-mac-state.last-confirmed-downlink-at[select the pending_mac_state.last_confirmed_downlink_at field]' \
    '--pending-mac-state.last-dev-status-f-cnt-up[select the pending_mac_state.last_dev_status_f_cnt_up field]' \
    '--pending-mac-state.lorawan-version[select the pending_mac_state.lorawan_version field]' \
    '--pending-mac-state.pending-application-downlink[select the pending_mac_state.pending_application_downlink field and all allowed sub-fields]' \
    '--pending-mac-state.pending-application-downlink.class-b-c[select the pending_mac_state.pending_application_downlink.class_b_c field and all allowed sub-fields]' \
    '--pending-mac-state.pending-application-downlink.class-b-c.absolute-time[select the pending_mac_state.pending_application_downlink.class_b_c.absolute_time field]' \
    '--pending-mac-state.pending-application-downlink.class-b-c.gateways[select the pending_mac_state.pending_application_downlink.class_b_c.gateways field]' \
    '--pending-mac-state.pending-application-downlink.confirmed[select the pending_mac_state.pending_application_downlink.confirmed field]' \
    '--pending-mac-state.pending-application-downlink.correlation-ids[select the pending_mac_state.pending_application_downlink.correlation_ids field]' \
    '--pending-mac-state.pending-application-downlink.decoded-payload[select the pending_mac_state.pending_application_downlink.decoded_payload field and all allowed sub-fields]' \
    '--pending-mac-state.pending-application-downlink.f-cnt[select the pending_mac_state.pending_application_downlink.f_cnt field]' \
    '--pending-mac-state.pending-application-downlink.f-port[select the pending_mac_state.pending_application_downlink.f_port field]' \
    '--pending-mac-state.pending-application-downlink.frm-payload[select the pending_mac_state.pending_application_downlink.frm_payload field]' \
    '--pending-mac-state.pending-application-downlink.priority[select the pending_mac_state.pending_application_downlink.priority field]' \
    '--pending-mac-state.pending-application-downlink.session-key-id[select the pending_mac_state.pending_application_downlink.session_key_id field]' \
    '--pending-mac-state.pending-join-request[select the pending_mac_state.pending_join_request field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.cf-list[select the pending_mac_state.pending_join_request.cf_list field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.cf-list.ch-masks[select the pending_mac_state.pending_join_request.cf_list.ch_masks field]' \
    '--pending-mac-state.pending-join-request.cf-list.freq[select the pending_mac_state.pending_join_request.cf_list.freq field]' \
    '--pending-mac-state.pending-join-request.cf-list.type[select the pending_mac_state.pending_join_request.cf_list.type field]' \
    '--pending-mac-state.pending-join-request.correlation-ids[select the pending_mac_state.pending_join_request.correlation_ids field]' \
    '--pending-mac-state.pending-join-request.dev-addr[select the pending_mac_state.pending_join_request.dev_addr field]' \
    '--pending-mac-state.pending-join-request.downlink-settings[select the pending_mac_state.pending_join_request.downlink_settings field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.downlink-settings.opt-neg[select the pending_mac_state.pending_join_request.downlink_settings.opt_neg field]' \
    '--pending-mac-state.pending-join-request.downlink-settings.rx1-dr-offset[select the pending_mac_state.pending_join_request.downlink_settings.rx1_dr_offset field]' \
    '--pending-mac-state.pending-join-request.downlink-settings.rx2-dr[select the pending_mac_state.pending_join_request.downlink_settings.rx2_dr field]' \
    '--pending-mac-state.pending-join-request.net-id[select the pending_mac_state.pending_join_request.net_id field]' \
    '--pending-mac-state.pending-join-request.payload[select the pending_mac_state.pending_join_request.payload field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.payload.m-hdr[select the pending_mac_state.pending_join_request.payload.m_hdr field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.payload.m-hdr.m-type[select the pending_mac_state.pending_join_request.payload.m_hdr.m_type field]' \
    '--pending-mac-state.pending-join-request.payload.m-hdr.major[select the pending_mac_state.pending_join_request.payload.m_hdr.major field]' \
    '--pending-mac-state.pending-join-request.payload.mic[select the pending_mac_state.pending_join_request.payload.mic field]' \
    '--pending-mac-state.pending-join-request.raw-payload[select the pending_mac_state.pending_join_request.raw_payload field]' \
    '--pending-mac-state.pending-join-request.rx-delay[select the pending_mac_state.pending_join_request.rx_delay field]' \
    '--pending-mac-state.pending-join-request.selected-mac-version[select the pending_mac_state.pending_join_request.selected_mac_version field]' \
    '--pending-mac-state.pending-requests[select the pending_mac_state.pending_requests field]' \
    '--pending-mac-state.ping-slot-periodicity[select the pending_mac_state.ping_slot_periodicity field]' \
    '--pending-mac-state.queued-join-accept[select the pending_mac_state.queued_join_accept field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys[select the pending_mac_state.queued_join_accept.keys field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.app-s-key[select the pending_mac_state.queued_join_accept.keys.app_s_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.app-s-key.key[select the pending_mac_state.queued_join_accept.keys.app_s_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.f-nwk-s-int-key[select the pending_mac_state.queued_join_accept.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.f-nwk-s-int-key.key[select the pending_mac_state.queued_join_accept.keys.f_nwk_s_int_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.nwk-s-enc-key[select the pending_mac_state.queued_join_accept.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.nwk-s-enc-key.key[select the pending_mac_state.queued_join_accept.keys.nwk_s_enc_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.s-nwk-s-int-key[select the pending_mac_state.queued_join_accept.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.s-nwk-s-int-key.key[select the pending_mac_state.queued_join_accept.keys.s_nwk_s_int_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.session-key-id[select the pending_mac_state.queued_join_accept.keys.session_key_id field]' \
    '--pending-mac-state.queued-join-accept.payload[select the pending_mac_state.queued_join_accept.payload field]' \
    '--pending-mac-state.queued-join-accept.request[select the pending_mac_state.queued_join_accept.request field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.cf-list[select the pending_mac_state.queued_join_accept.request.cf_list field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.cf-list.ch-masks[select the pending_mac_state.queued_join_accept.request.cf_list.ch_masks field]' \
    '--pending-mac-state.queued-join-accept.request.cf-list.freq[select the pending_mac_state.queued_join_accept.request.cf_list.freq field]' \
    '--pending-mac-state.queued-join-accept.request.cf-list.type[select the pending_mac_state.queued_join_accept.request.cf_list.type field]' \
    '--pending-mac-state.queued-join-accept.request.correlation-ids[select the pending_mac_state.queued_join_accept.request.correlation_ids field]' \
    '--pending-mac-state.queued-join-accept.request.dev-addr[select the pending_mac_state.queued_join_accept.request.dev_addr field]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings[select the pending_mac_state.queued_join_accept.request.downlink_settings field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings.opt-neg[select the pending_mac_state.queued_join_accept.request.downlink_settings.opt_neg field]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings.rx1-dr-offset[select the pending_mac_state.queued_join_accept.request.downlink_settings.rx1_dr_offset field]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings.rx2-dr[select the pending_mac_state.queued_join_accept.request.downlink_settings.rx2_dr field]' \
    '--pending-mac-state.queued-join-accept.request.net-id[select the pending_mac_state.queued_join_accept.request.net_id field]' \
    '--pending-mac-state.queued-join-accept.request.payload[select the pending_mac_state.queued_join_accept.request.payload field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.payload.m-hdr[select the pending_mac_state.queued_join_accept.request.payload.m_hdr field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.payload.m-hdr.m-type[select the pending_mac_state.queued_join_accept.request.payload.m_hdr.m_type field]' \
    '--pending-mac-state.queued-join-accept.request.payload.m-hdr.major[select the pending_mac_state.queued_join_accept.request.payload.m_hdr.major field]' \
    '--pending-mac-state.queued-join-accept.request.payload.mic[select the pending_mac_state.queued_join_accept.request.payload.mic field]' \
    '--pending-mac-state.queued-join-accept.request.raw-payload[select the pending_mac_state.queued_join_accept.request.raw_payload field]' \
    '--pending-mac-state.queued-join-accept.request.rx-delay[select the pending_mac_state.queued_join_accept.request.rx_delay field]' \
    '--pending-mac-state.queued-join-accept.request.selected-mac-version[select the pending_mac_state.queued_join_accept.request.selected_mac_version field]' \
    '--pending-mac-state.queued-responses[select the pending_mac_state.queued_responses field]' \
    '--pending-mac-state.rx-windows-available[select the pending_mac_state.rx_windows_available field]' \
    '--pending-session[select the pending_session field and all allowed sub-fields]' \
    '--pending-session.dev-addr[select the pending_session.dev_addr field]' \
    '--pending-session.keys[select the pending_session.keys field and all allowed sub-fields]' \
    '--pending-session.keys.app-s-key[select the pending_session.keys.app_s_key field and all allowed sub-fields]' \
    '--pending-session.keys.app-s-key.key[select the pending_session.keys.app_s_key.key field]' \
    '--pending-session.keys.f-nwk-s-int-key[select the pending_session.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-session.keys.f-nwk-s-int-key.key[select the pending_session.keys.f_nwk_s_int_key.key field]' \
    '--pending-session.keys.nwk-s-enc-key[select the pending_session.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--pending-session.keys.nwk-s-enc-key.key[select the pending_session.keys.nwk_s_enc_key.key field]' \
    '--pending-session.keys.s-nwk-s-int-key[select the pending_session.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-session.keys.s-nwk-s-int-key.key[select the pending_session.keys.s_nwk_s_int_key.key field]' \
    '--pending-session.keys.session-key-id[select the pending_session.keys.session_key_id field]' \
    '--pending-session.last-a-f-cnt-down[select the pending_session.last_a_f_cnt_down field]' \
    '--pending-session.last-conf-f-cnt-down[select the pending_session.last_conf_f_cnt_down field]' \
    '--pending-session.last-f-cnt-up[select the pending_session.last_f_cnt_up field]' \
    '--pending-session.last-n-f-cnt-down[select the pending_session.last_n_f_cnt_down field]' \
    '--pending-session.queued-application-downlinks[select the pending_session.queued_application_downlinks field]' \
    '--picture[select the picture field]' \
    '--power-state[select the power_state field]' \
    '--provisioner-id[select the provisioner_id field]' \
    '--provisioning-data[select the provisioning_data field and all allowed sub-fields]' \
    '--queued-application-downlinks[select the queued_application_downlinks field]' \
    '--recent-adr-uplinks[select the recent_adr_uplinks field]' \
    '--recent-downlinks[select the recent_downlinks field]' \
    '--recent-uplinks[select the recent_uplinks field]' \
    '--resets-join-nonces[select the resets_join_nonces field]' \
    '--root-keys[select the root_keys field and all allowed sub-fields]' \
    '--root-keys.app-key[select the root_keys.app_key field and all allowed sub-fields]' \
    '--root-keys.app-key.key[select the root_keys.app_key.key field]' \
    '--root-keys.nwk-key[select the root_keys.nwk_key field and all allowed sub-fields]' \
    '--root-keys.nwk-key.key[select the root_keys.nwk_key.key field]' \
    '--root-keys.root-key-id[select the root_keys.root_key_id field]' \
    '--service-profile-id[select the service_profile_id field]' \
    '--session[select the session field and all allowed sub-fields]' \
    '--session.dev-addr[select the session.dev_addr field]' \
    '--session.keys[select the session.keys field and all allowed sub-fields]' \
    '--session.keys.app-s-key[select the session.keys.app_s_key field and all allowed sub-fields]' \
    '--session.keys.app-s-key.key[select the session.keys.app_s_key.key field]' \
    '--session.keys.f-nwk-s-int-key[select the session.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--session.keys.f-nwk-s-int-key.key[select the session.keys.f_nwk_s_int_key.key field]' \
    '--session.keys.nwk-s-enc-key[select the session.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--session.keys.nwk-s-enc-key.key[select the session.keys.nwk_s_enc_key.key field]' \
    '--session.keys.s-nwk-s-int-key[select the session.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--session.keys.s-nwk-s-int-key.key[select the session.keys.s_nwk_s_int_key.key field]' \
    '--session.keys.session-key-id[select the session.keys.session_key_id field]' \
    '--session.last-a-f-cnt-down[select the session.last_a_f_cnt_down field]' \
    '--session.last-conf-f-cnt-down[select the session.last_conf_f_cnt_down field]' \
    '--session.last-f-cnt-up[select the session.last_f_cnt_up field]' \
    '--session.last-n-f-cnt-down[select the session.last_n_f_cnt_down field]' \
    '--session.queued-application-downlinks[select the session.queued_application_downlinks field]' \
    '--session.started-at[select the session.started_at field]' \
    '--skip-payload-crypto[select the skip_payload_crypto field]' \
    '--skip-payload-crypto-override[select the skip_payload_crypto_override field]' \
    '--supports-class-b[select the supports_class_b field]' \
    '--supports-class-c[select the supports_class_c field]' \
    '--supports-join[select the supports_join field]' \
    '--used-dev-nonces[select the used_dev_nonces field]' \
    '--version-ids[select the version_ids field and all allowed sub-fields]' \
    '--version-ids.brand-id[select the version_ids.brand_id field]' \
    '--version-ids.firmware-version[select the version_ids.firmware_version field]' \
    '--version-ids.hardware-version[select the version_ids.hardware_version field]' \
    '--version-ids.model-id[select the version_ids.model_id field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_list {
  _arguments \
    '--all[select all end devices fields]' \
    '--application-id[]:' \
    '--application-server-address[select the application_server_address field]' \
    '--attributes[select the attributes field]' \
    '--description[select the description field]' \
    '--join-server-address[select the join_server_address field]' \
    '--limit[maximum number of results to get]:' \
    '--locations[select the locations field]' \
    '--name[select the name field]' \
    '--network-server-address[select the network_server_address field]' \
    '--order[order by this field]:' \
    '--page[results page number]:' \
    '--picture[select the picture field]' \
    '--service-profile-id[select the service_profile_id field]' \
    '--version-ids[select the version_ids field and all allowed sub-fields]' \
    '--version-ids.brand-id[select the version_ids.brand_id field]' \
    '--version-ids.firmware-version[select the version_ids.firmware_version field]' \
    '--version-ids.hardware-version[select the version_ids.hardware_version field]' \
    '--version-ids.model-id[select the version_ids.model_id field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_list-frequency-plans {
  _arguments \
    '--base-frequency[base frequency in MHz for hardware support (433, 470, 868 or 915)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_list-qr-formats {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_provision {
  _arguments \
    '--application-id[]:' \
    '--join-eui[(hex)]:' \
    '--local-file[(local file name)]:' \
    '--provisioner-id[provisioner service]:' \
    '--start-dev-eui[starting DevEUI to provision (hex)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_search {
  _arguments \
    '--all[select all end devices fields]' \
    '--application-id[]:' \
    '--attributes[select the attributes field]' \
    '--attributes-contain[(key=value)]:' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--description-contains[]:' \
    '--dev-eui-contains[]:' \
    '--id-contains[]:' \
    '--join-eui-contains[]:' \
    '--limit[maximum number of results to get]:' \
    '--name[select the name field]' \
    '--name-contains[]:' \
    '--order[order by this field]:' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_templates {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "assign-euis:Assign JoinEUI and DevEUIs to end device templates (EXPERIMENTAL)"
      "create:Create an end device template from an existing device (EXPERIMENTAL)"
      "execute:Execute the template to an end device (EXPERIMENTAL)"
      "extend:Extend an end device template (EXPERIMENTAL)"
      "from-data:Convert data to an end device template (EXPERIMENTAL)"
      "list-formats:List available end device template formats (EXPERIMENTAL)"
      "map:Map end device templates (EXPERIMENTAL)"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  assign-euis)
    _ttn-lw-cli_templates_assign-euis
    ;;
  create)
    _ttn-lw-cli_templates_create
    ;;
  execute)
    _ttn-lw-cli_templates_execute
    ;;
  extend)
    _ttn-lw-cli_templates_extend
    ;;
  from-data)
    _ttn-lw-cli_templates_from-data
    ;;
  list-formats)
    _ttn-lw-cli_templates_list-formats
    ;;
  map)
    _ttn-lw-cli_templates_map
    ;;
  esac
}

function _ttn-lw-cli_templates_assign-euis {
  _arguments \
    '--count[]:' \
    '--join-eui[(hex)]:' \
    '--start-dev-eui[(hex)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_create {
  _arguments \
    '--application-id[]' \
    '--application-server-address[select the application_server_address field]' \
    '--application-server-id[select the application_server_id field]' \
    '--application-server-kek-label[select the application_server_kek_label field]' \
    '--attributes[select the attributes field]' \
    '--battery-percentage[select the battery_percentage field]' \
    '--claim-authentication-code[select the claim_authentication_code field and all allowed sub-fields]' \
    '--claim-authentication-code.valid-from[select the claim_authentication_code.valid_from field]' \
    '--claim-authentication-code.valid-to[select the claim_authentication_code.valid_to field]' \
    '--claim-authentication-code.value[select the claim_authentication_code.value field]' \
    '--description[select the description field]' \
    '--dev-eui[]' \
    '--device-id[]' \
    '--downlink-margin[select the downlink_margin field]' \
    '--formatters[select the formatters field and all allowed sub-fields]' \
    '--formatters.down-formatter[select the formatters.down_formatter field]' \
    '--formatters.down-formatter-parameter[select the formatters.down_formatter_parameter field]' \
    '--formatters.up-formatter[select the formatters.up_formatter field]' \
    '--formatters.up-formatter-parameter[select the formatters.up_formatter_parameter field]' \
    '--frequency-plan-id[select the frequency_plan_id field]' \
    '--join-eui[]' \
    '--join-server-address[select the join_server_address field]' \
    '--last-dev-nonce[select the last_dev_nonce field]' \
    '--last-join-nonce[select the last_join_nonce field]' \
    '--last-rj-count-0[select the last_rj_count_0 field]' \
    '--last-rj-count-1[select the last_rj_count_1 field]' \
    '--locations[select the locations field]' \
    '--lorawan-phy-version[select the lorawan_phy_version field]' \
    '--lorawan-version[select the lorawan_version field]' \
    '--mac-settings[select the mac_settings field and all allowed sub-fields]' \
    '--mac-settings.adr-margin[select the mac_settings.adr_margin field]' \
    '--mac-settings.beacon-frequency[select the mac_settings.beacon_frequency field]' \
    '--mac-settings.class-b-timeout[select the mac_settings.class_b_timeout field]' \
    '--mac-settings.class-c-timeout[select the mac_settings.class_c_timeout field]' \
    '--mac-settings.desired-adr-ack-delay-exponent[select the mac_settings.desired_adr_ack_delay_exponent field]' \
    '--mac-settings.desired-adr-ack-limit-exponent[select the mac_settings.desired_adr_ack_limit_exponent field]' \
    '--mac-settings.desired-beacon-frequency[select the mac_settings.desired_beacon_frequency field]' \
    '--mac-settings.desired-max-duty-cycle[select the mac_settings.desired_max_duty_cycle field]' \
    '--mac-settings.desired-ping-slot-data-rate-index[select the mac_settings.desired_ping_slot_data_rate_index field]' \
    '--mac-settings.desired-ping-slot-frequency[select the mac_settings.desired_ping_slot_frequency field]' \
    '--mac-settings.desired-rx1-data-rate-offset[select the mac_settings.desired_rx1_data_rate_offset field]' \
    '--mac-settings.desired-rx1-delay[select the mac_settings.desired_rx1_delay field]' \
    '--mac-settings.desired-rx2-data-rate-index[select the mac_settings.desired_rx2_data_rate_index field]' \
    '--mac-settings.desired-rx2-frequency[select the mac_settings.desired_rx2_frequency field]' \
    '--mac-settings.factory-preset-frequencies[select the mac_settings.factory_preset_frequencies field]' \
    '--mac-settings.max-duty-cycle[select the mac_settings.max_duty_cycle field]' \
    '--mac-settings.ping-slot-data-rate-index[select the mac_settings.ping_slot_data_rate_index field]' \
    '--mac-settings.ping-slot-frequency[select the mac_settings.ping_slot_frequency field]' \
    '--mac-settings.ping-slot-periodicity[select the mac_settings.ping_slot_periodicity field]' \
    '--mac-settings.resets-f-cnt[select the mac_settings.resets_f_cnt field]' \
    '--mac-settings.rx1-data-rate-offset[select the mac_settings.rx1_data_rate_offset field]' \
    '--mac-settings.rx1-delay[select the mac_settings.rx1_delay field]' \
    '--mac-settings.rx2-data-rate-index[select the mac_settings.rx2_data_rate_index field]' \
    '--mac-settings.rx2-frequency[select the mac_settings.rx2_frequency field]' \
    '--mac-settings.status-count-periodicity[select the mac_settings.status_count_periodicity field]' \
    '--mac-settings.status-time-periodicity[select the mac_settings.status_time_periodicity field]' \
    '--mac-settings.supports-32-bit-f-cnt[select the mac_settings.supports_32_bit_f_cnt field]' \
    '--mac-settings.use-adr[select the mac_settings.use_adr field]' \
    '--mac-state[select the mac_state field and all allowed sub-fields]' \
    '--mac-state.current-parameters[select the mac_state.current_parameters field and all allowed sub-fields]' \
    '--mac-state.current-parameters.adr-ack-delay[select the mac_state.current_parameters.adr_ack_delay field]' \
    '--mac-state.current-parameters.adr-ack-delay-exponent[select the mac_state.current_parameters.adr_ack_delay_exponent field]' \
    '--mac-state.current-parameters.adr-ack-limit[select the mac_state.current_parameters.adr_ack_limit field]' \
    '--mac-state.current-parameters.adr-ack-limit-exponent[select the mac_state.current_parameters.adr_ack_limit_exponent field]' \
    '--mac-state.current-parameters.adr-data-rate-index[select the mac_state.current_parameters.adr_data_rate_index field]' \
    '--mac-state.current-parameters.adr-nb-trans[select the mac_state.current_parameters.adr_nb_trans field]' \
    '--mac-state.current-parameters.adr-tx-power-index[select the mac_state.current_parameters.adr_tx_power_index field]' \
    '--mac-state.current-parameters.beacon-frequency[select the mac_state.current_parameters.beacon_frequency field]' \
    '--mac-state.current-parameters.channels[select the mac_state.current_parameters.channels field]' \
    '--mac-state.current-parameters.downlink-dwell-time[select the mac_state.current_parameters.downlink_dwell_time field]' \
    '--mac-state.current-parameters.max-duty-cycle[select the mac_state.current_parameters.max_duty_cycle field]' \
    '--mac-state.current-parameters.max-eirp[select the mac_state.current_parameters.max_eirp field]' \
    '--mac-state.current-parameters.ping-slot-data-rate-index[select the mac_state.current_parameters.ping_slot_data_rate_index field]' \
    '--mac-state.current-parameters.ping-slot-frequency[select the mac_state.current_parameters.ping_slot_frequency field]' \
    '--mac-state.current-parameters.rejoin-count-periodicity[select the mac_state.current_parameters.rejoin_count_periodicity field]' \
    '--mac-state.current-parameters.rejoin-time-periodicity[select the mac_state.current_parameters.rejoin_time_periodicity field]' \
    '--mac-state.current-parameters.rx1-data-rate-offset[select the mac_state.current_parameters.rx1_data_rate_offset field]' \
    '--mac-state.current-parameters.rx1-delay[select the mac_state.current_parameters.rx1_delay field]' \
    '--mac-state.current-parameters.rx2-data-rate-index[select the mac_state.current_parameters.rx2_data_rate_index field]' \
    '--mac-state.current-parameters.rx2-frequency[select the mac_state.current_parameters.rx2_frequency field]' \
    '--mac-state.current-parameters.uplink-dwell-time[select the mac_state.current_parameters.uplink_dwell_time field]' \
    '--mac-state.desired-parameters[select the mac_state.desired_parameters field and all allowed sub-fields]' \
    '--mac-state.desired-parameters.adr-ack-delay[select the mac_state.desired_parameters.adr_ack_delay field]' \
    '--mac-state.desired-parameters.adr-ack-delay-exponent[select the mac_state.desired_parameters.adr_ack_delay_exponent field]' \
    '--mac-state.desired-parameters.adr-ack-limit[select the mac_state.desired_parameters.adr_ack_limit field]' \
    '--mac-state.desired-parameters.adr-ack-limit-exponent[select the mac_state.desired_parameters.adr_ack_limit_exponent field]' \
    '--mac-state.desired-parameters.adr-data-rate-index[select the mac_state.desired_parameters.adr_data_rate_index field]' \
    '--mac-state.desired-parameters.adr-nb-trans[select the mac_state.desired_parameters.adr_nb_trans field]' \
    '--mac-state.desired-parameters.adr-tx-power-index[select the mac_state.desired_parameters.adr_tx_power_index field]' \
    '--mac-state.desired-parameters.beacon-frequency[select the mac_state.desired_parameters.beacon_frequency field]' \
    '--mac-state.desired-parameters.channels[select the mac_state.desired_parameters.channels field]' \
    '--mac-state.desired-parameters.downlink-dwell-time[select the mac_state.desired_parameters.downlink_dwell_time field]' \
    '--mac-state.desired-parameters.max-duty-cycle[select the mac_state.desired_parameters.max_duty_cycle field]' \
    '--mac-state.desired-parameters.max-eirp[select the mac_state.desired_parameters.max_eirp field]' \
    '--mac-state.desired-parameters.ping-slot-data-rate-index[select the mac_state.desired_parameters.ping_slot_data_rate_index field]' \
    '--mac-state.desired-parameters.ping-slot-frequency[select the mac_state.desired_parameters.ping_slot_frequency field]' \
    '--mac-state.desired-parameters.rejoin-count-periodicity[select the mac_state.desired_parameters.rejoin_count_periodicity field]' \
    '--mac-state.desired-parameters.rejoin-time-periodicity[select the mac_state.desired_parameters.rejoin_time_periodicity field]' \
    '--mac-state.desired-parameters.rx1-data-rate-offset[select the mac_state.desired_parameters.rx1_data_rate_offset field]' \
    '--mac-state.desired-parameters.rx1-delay[select the mac_state.desired_parameters.rx1_delay field]' \
    '--mac-state.desired-parameters.rx2-data-rate-index[select the mac_state.desired_parameters.rx2_data_rate_index field]' \
    '--mac-state.desired-parameters.rx2-frequency[select the mac_state.desired_parameters.rx2_frequency field]' \
    '--mac-state.desired-parameters.uplink-dwell-time[select the mac_state.desired_parameters.uplink_dwell_time field]' \
    '--mac-state.device-class[select the mac_state.device_class field]' \
    '--mac-state.last-confirmed-downlink-at[select the mac_state.last_confirmed_downlink_at field]' \
    '--mac-state.last-dev-status-f-cnt-up[select the mac_state.last_dev_status_f_cnt_up field]' \
    '--mac-state.lorawan-version[select the mac_state.lorawan_version field]' \
    '--mac-state.pending-application-downlink[select the mac_state.pending_application_downlink field and all allowed sub-fields]' \
    '--mac-state.pending-application-downlink.class-b-c[select the mac_state.pending_application_downlink.class_b_c field and all allowed sub-fields]' \
    '--mac-state.pending-application-downlink.class-b-c.absolute-time[select the mac_state.pending_application_downlink.class_b_c.absolute_time field]' \
    '--mac-state.pending-application-downlink.class-b-c.gateways[select the mac_state.pending_application_downlink.class_b_c.gateways field]' \
    '--mac-state.pending-application-downlink.confirmed[select the mac_state.pending_application_downlink.confirmed field]' \
    '--mac-state.pending-application-downlink.correlation-ids[select the mac_state.pending_application_downlink.correlation_ids field]' \
    '--mac-state.pending-application-downlink.decoded-payload[select the mac_state.pending_application_downlink.decoded_payload field and all allowed sub-fields]' \
    '--mac-state.pending-application-downlink.f-cnt[select the mac_state.pending_application_downlink.f_cnt field]' \
    '--mac-state.pending-application-downlink.f-port[select the mac_state.pending_application_downlink.f_port field]' \
    '--mac-state.pending-application-downlink.frm-payload[select the mac_state.pending_application_downlink.frm_payload field]' \
    '--mac-state.pending-application-downlink.priority[select the mac_state.pending_application_downlink.priority field]' \
    '--mac-state.pending-application-downlink.session-key-id[select the mac_state.pending_application_downlink.session_key_id field]' \
    '--mac-state.pending-join-request[select the mac_state.pending_join_request field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.cf-list[select the mac_state.pending_join_request.cf_list field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.cf-list.ch-masks[select the mac_state.pending_join_request.cf_list.ch_masks field]' \
    '--mac-state.pending-join-request.cf-list.freq[select the mac_state.pending_join_request.cf_list.freq field]' \
    '--mac-state.pending-join-request.cf-list.type[select the mac_state.pending_join_request.cf_list.type field]' \
    '--mac-state.pending-join-request.correlation-ids[select the mac_state.pending_join_request.correlation_ids field]' \
    '--mac-state.pending-join-request.dev-addr[select the mac_state.pending_join_request.dev_addr field]' \
    '--mac-state.pending-join-request.downlink-settings[select the mac_state.pending_join_request.downlink_settings field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.downlink-settings.opt-neg[select the mac_state.pending_join_request.downlink_settings.opt_neg field]' \
    '--mac-state.pending-join-request.downlink-settings.rx1-dr-offset[select the mac_state.pending_join_request.downlink_settings.rx1_dr_offset field]' \
    '--mac-state.pending-join-request.downlink-settings.rx2-dr[select the mac_state.pending_join_request.downlink_settings.rx2_dr field]' \
    '--mac-state.pending-join-request.net-id[select the mac_state.pending_join_request.net_id field]' \
    '--mac-state.pending-join-request.payload[select the mac_state.pending_join_request.payload field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.payload.m-hdr[select the mac_state.pending_join_request.payload.m_hdr field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.payload.m-hdr.m-type[select the mac_state.pending_join_request.payload.m_hdr.m_type field]' \
    '--mac-state.pending-join-request.payload.m-hdr.major[select the mac_state.pending_join_request.payload.m_hdr.major field]' \
    '--mac-state.pending-join-request.payload.mic[select the mac_state.pending_join_request.payload.mic field]' \
    '--mac-state.pending-join-request.raw-payload[select the mac_state.pending_join_request.raw_payload field]' \
    '--mac-state.pending-join-request.rx-delay[select the mac_state.pending_join_request.rx_delay field]' \
    '--mac-state.pending-join-request.selected-mac-version[select the mac_state.pending_join_request.selected_mac_version field]' \
    '--mac-state.pending-requests[select the mac_state.pending_requests field]' \
    '--mac-state.ping-slot-periodicity[select the mac_state.ping_slot_periodicity field]' \
    '--mac-state.queued-join-accept[select the mac_state.queued_join_accept field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys[select the mac_state.queued_join_accept.keys field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.app-s-key[select the mac_state.queued_join_accept.keys.app_s_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.app-s-key.key[select the mac_state.queued_join_accept.keys.app_s_key.key field]' \
    '--mac-state.queued-join-accept.keys.f-nwk-s-int-key[select the mac_state.queued_join_accept.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.f-nwk-s-int-key.key[select the mac_state.queued_join_accept.keys.f_nwk_s_int_key.key field]' \
    '--mac-state.queued-join-accept.keys.nwk-s-enc-key[select the mac_state.queued_join_accept.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.nwk-s-enc-key.key[select the mac_state.queued_join_accept.keys.nwk_s_enc_key.key field]' \
    '--mac-state.queued-join-accept.keys.s-nwk-s-int-key[select the mac_state.queued_join_accept.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.s-nwk-s-int-key.key[select the mac_state.queued_join_accept.keys.s_nwk_s_int_key.key field]' \
    '--mac-state.queued-join-accept.keys.session-key-id[select the mac_state.queued_join_accept.keys.session_key_id field]' \
    '--mac-state.queued-join-accept.payload[select the mac_state.queued_join_accept.payload field]' \
    '--mac-state.queued-join-accept.request[select the mac_state.queued_join_accept.request field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.cf-list[select the mac_state.queued_join_accept.request.cf_list field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.cf-list.ch-masks[select the mac_state.queued_join_accept.request.cf_list.ch_masks field]' \
    '--mac-state.queued-join-accept.request.cf-list.freq[select the mac_state.queued_join_accept.request.cf_list.freq field]' \
    '--mac-state.queued-join-accept.request.cf-list.type[select the mac_state.queued_join_accept.request.cf_list.type field]' \
    '--mac-state.queued-join-accept.request.correlation-ids[select the mac_state.queued_join_accept.request.correlation_ids field]' \
    '--mac-state.queued-join-accept.request.dev-addr[select the mac_state.queued_join_accept.request.dev_addr field]' \
    '--mac-state.queued-join-accept.request.downlink-settings[select the mac_state.queued_join_accept.request.downlink_settings field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.downlink-settings.opt-neg[select the mac_state.queued_join_accept.request.downlink_settings.opt_neg field]' \
    '--mac-state.queued-join-accept.request.downlink-settings.rx1-dr-offset[select the mac_state.queued_join_accept.request.downlink_settings.rx1_dr_offset field]' \
    '--mac-state.queued-join-accept.request.downlink-settings.rx2-dr[select the mac_state.queued_join_accept.request.downlink_settings.rx2_dr field]' \
    '--mac-state.queued-join-accept.request.net-id[select the mac_state.queued_join_accept.request.net_id field]' \
    '--mac-state.queued-join-accept.request.payload[select the mac_state.queued_join_accept.request.payload field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.payload.m-hdr[select the mac_state.queued_join_accept.request.payload.m_hdr field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.payload.m-hdr.m-type[select the mac_state.queued_join_accept.request.payload.m_hdr.m_type field]' \
    '--mac-state.queued-join-accept.request.payload.m-hdr.major[select the mac_state.queued_join_accept.request.payload.m_hdr.major field]' \
    '--mac-state.queued-join-accept.request.payload.mic[select the mac_state.queued_join_accept.request.payload.mic field]' \
    '--mac-state.queued-join-accept.request.raw-payload[select the mac_state.queued_join_accept.request.raw_payload field]' \
    '--mac-state.queued-join-accept.request.rx-delay[select the mac_state.queued_join_accept.request.rx_delay field]' \
    '--mac-state.queued-join-accept.request.selected-mac-version[select the mac_state.queued_join_accept.request.selected_mac_version field]' \
    '--mac-state.queued-responses[select the mac_state.queued_responses field]' \
    '--mac-state.rx-windows-available[select the mac_state.rx_windows_available field]' \
    '--mapping-key[]:' \
    '--max-frequency[select the max_frequency field]' \
    '--min-frequency[select the min_frequency field]' \
    '--multicast[select the multicast field]' \
    '--name[select the name field]' \
    '--net-id[select the net_id field]' \
    '--network-server-address[select the network_server_address field]' \
    '--network-server-kek-label[select the network_server_kek_label field]' \
    '--pending-mac-state[select the pending_mac_state field and all allowed sub-fields]' \
    '--pending-mac-state.current-parameters[select the pending_mac_state.current_parameters field and all allowed sub-fields]' \
    '--pending-mac-state.current-parameters.adr-ack-delay[select the pending_mac_state.current_parameters.adr_ack_delay field]' \
    '--pending-mac-state.current-parameters.adr-ack-delay-exponent[select the pending_mac_state.current_parameters.adr_ack_delay_exponent field]' \
    '--pending-mac-state.current-parameters.adr-ack-limit[select the pending_mac_state.current_parameters.adr_ack_limit field]' \
    '--pending-mac-state.current-parameters.adr-ack-limit-exponent[select the pending_mac_state.current_parameters.adr_ack_limit_exponent field]' \
    '--pending-mac-state.current-parameters.adr-data-rate-index[select the pending_mac_state.current_parameters.adr_data_rate_index field]' \
    '--pending-mac-state.current-parameters.adr-nb-trans[select the pending_mac_state.current_parameters.adr_nb_trans field]' \
    '--pending-mac-state.current-parameters.adr-tx-power-index[select the pending_mac_state.current_parameters.adr_tx_power_index field]' \
    '--pending-mac-state.current-parameters.beacon-frequency[select the pending_mac_state.current_parameters.beacon_frequency field]' \
    '--pending-mac-state.current-parameters.channels[select the pending_mac_state.current_parameters.channels field]' \
    '--pending-mac-state.current-parameters.downlink-dwell-time[select the pending_mac_state.current_parameters.downlink_dwell_time field]' \
    '--pending-mac-state.current-parameters.max-duty-cycle[select the pending_mac_state.current_parameters.max_duty_cycle field]' \
    '--pending-mac-state.current-parameters.max-eirp[select the pending_mac_state.current_parameters.max_eirp field]' \
    '--pending-mac-state.current-parameters.ping-slot-data-rate-index[select the pending_mac_state.current_parameters.ping_slot_data_rate_index field]' \
    '--pending-mac-state.current-parameters.ping-slot-frequency[select the pending_mac_state.current_parameters.ping_slot_frequency field]' \
    '--pending-mac-state.current-parameters.rejoin-count-periodicity[select the pending_mac_state.current_parameters.rejoin_count_periodicity field]' \
    '--pending-mac-state.current-parameters.rejoin-time-periodicity[select the pending_mac_state.current_parameters.rejoin_time_periodicity field]' \
    '--pending-mac-state.current-parameters.rx1-data-rate-offset[select the pending_mac_state.current_parameters.rx1_data_rate_offset field]' \
    '--pending-mac-state.current-parameters.rx1-delay[select the pending_mac_state.current_parameters.rx1_delay field]' \
    '--pending-mac-state.current-parameters.rx2-data-rate-index[select the pending_mac_state.current_parameters.rx2_data_rate_index field]' \
    '--pending-mac-state.current-parameters.rx2-frequency[select the pending_mac_state.current_parameters.rx2_frequency field]' \
    '--pending-mac-state.current-parameters.uplink-dwell-time[select the pending_mac_state.current_parameters.uplink_dwell_time field]' \
    '--pending-mac-state.desired-parameters[select the pending_mac_state.desired_parameters field and all allowed sub-fields]' \
    '--pending-mac-state.desired-parameters.adr-ack-delay[select the pending_mac_state.desired_parameters.adr_ack_delay field]' \
    '--pending-mac-state.desired-parameters.adr-ack-delay-exponent[select the pending_mac_state.desired_parameters.adr_ack_delay_exponent field]' \
    '--pending-mac-state.desired-parameters.adr-ack-limit[select the pending_mac_state.desired_parameters.adr_ack_limit field]' \
    '--pending-mac-state.desired-parameters.adr-ack-limit-exponent[select the pending_mac_state.desired_parameters.adr_ack_limit_exponent field]' \
    '--pending-mac-state.desired-parameters.adr-data-rate-index[select the pending_mac_state.desired_parameters.adr_data_rate_index field]' \
    '--pending-mac-state.desired-parameters.adr-nb-trans[select the pending_mac_state.desired_parameters.adr_nb_trans field]' \
    '--pending-mac-state.desired-parameters.adr-tx-power-index[select the pending_mac_state.desired_parameters.adr_tx_power_index field]' \
    '--pending-mac-state.desired-parameters.beacon-frequency[select the pending_mac_state.desired_parameters.beacon_frequency field]' \
    '--pending-mac-state.desired-parameters.channels[select the pending_mac_state.desired_parameters.channels field]' \
    '--pending-mac-state.desired-parameters.downlink-dwell-time[select the pending_mac_state.desired_parameters.downlink_dwell_time field]' \
    '--pending-mac-state.desired-parameters.max-duty-cycle[select the pending_mac_state.desired_parameters.max_duty_cycle field]' \
    '--pending-mac-state.desired-parameters.max-eirp[select the pending_mac_state.desired_parameters.max_eirp field]' \
    '--pending-mac-state.desired-parameters.ping-slot-data-rate-index[select the pending_mac_state.desired_parameters.ping_slot_data_rate_index field]' \
    '--pending-mac-state.desired-parameters.ping-slot-frequency[select the pending_mac_state.desired_parameters.ping_slot_frequency field]' \
    '--pending-mac-state.desired-parameters.rejoin-count-periodicity[select the pending_mac_state.desired_parameters.rejoin_count_periodicity field]' \
    '--pending-mac-state.desired-parameters.rejoin-time-periodicity[select the pending_mac_state.desired_parameters.rejoin_time_periodicity field]' \
    '--pending-mac-state.desired-parameters.rx1-data-rate-offset[select the pending_mac_state.desired_parameters.rx1_data_rate_offset field]' \
    '--pending-mac-state.desired-parameters.rx1-delay[select the pending_mac_state.desired_parameters.rx1_delay field]' \
    '--pending-mac-state.desired-parameters.rx2-data-rate-index[select the pending_mac_state.desired_parameters.rx2_data_rate_index field]' \
    '--pending-mac-state.desired-parameters.rx2-frequency[select the pending_mac_state.desired_parameters.rx2_frequency field]' \
    '--pending-mac-state.desired-parameters.uplink-dwell-time[select the pending_mac_state.desired_parameters.uplink_dwell_time field]' \
    '--pending-mac-state.device-class[select the pending_mac_state.device_class field]' \
    '--pending-mac-state.last-confirmed-downlink-at[select the pending_mac_state.last_confirmed_downlink_at field]' \
    '--pending-mac-state.last-dev-status-f-cnt-up[select the pending_mac_state.last_dev_status_f_cnt_up field]' \
    '--pending-mac-state.lorawan-version[select the pending_mac_state.lorawan_version field]' \
    '--pending-mac-state.pending-application-downlink[select the pending_mac_state.pending_application_downlink field and all allowed sub-fields]' \
    '--pending-mac-state.pending-application-downlink.class-b-c[select the pending_mac_state.pending_application_downlink.class_b_c field and all allowed sub-fields]' \
    '--pending-mac-state.pending-application-downlink.class-b-c.absolute-time[select the pending_mac_state.pending_application_downlink.class_b_c.absolute_time field]' \
    '--pending-mac-state.pending-application-downlink.class-b-c.gateways[select the pending_mac_state.pending_application_downlink.class_b_c.gateways field]' \
    '--pending-mac-state.pending-application-downlink.confirmed[select the pending_mac_state.pending_application_downlink.confirmed field]' \
    '--pending-mac-state.pending-application-downlink.correlation-ids[select the pending_mac_state.pending_application_downlink.correlation_ids field]' \
    '--pending-mac-state.pending-application-downlink.decoded-payload[select the pending_mac_state.pending_application_downlink.decoded_payload field and all allowed sub-fields]' \
    '--pending-mac-state.pending-application-downlink.f-cnt[select the pending_mac_state.pending_application_downlink.f_cnt field]' \
    '--pending-mac-state.pending-application-downlink.f-port[select the pending_mac_state.pending_application_downlink.f_port field]' \
    '--pending-mac-state.pending-application-downlink.frm-payload[select the pending_mac_state.pending_application_downlink.frm_payload field]' \
    '--pending-mac-state.pending-application-downlink.priority[select the pending_mac_state.pending_application_downlink.priority field]' \
    '--pending-mac-state.pending-application-downlink.session-key-id[select the pending_mac_state.pending_application_downlink.session_key_id field]' \
    '--pending-mac-state.pending-join-request[select the pending_mac_state.pending_join_request field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.cf-list[select the pending_mac_state.pending_join_request.cf_list field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.cf-list.ch-masks[select the pending_mac_state.pending_join_request.cf_list.ch_masks field]' \
    '--pending-mac-state.pending-join-request.cf-list.freq[select the pending_mac_state.pending_join_request.cf_list.freq field]' \
    '--pending-mac-state.pending-join-request.cf-list.type[select the pending_mac_state.pending_join_request.cf_list.type field]' \
    '--pending-mac-state.pending-join-request.correlation-ids[select the pending_mac_state.pending_join_request.correlation_ids field]' \
    '--pending-mac-state.pending-join-request.dev-addr[select the pending_mac_state.pending_join_request.dev_addr field]' \
    '--pending-mac-state.pending-join-request.downlink-settings[select the pending_mac_state.pending_join_request.downlink_settings field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.downlink-settings.opt-neg[select the pending_mac_state.pending_join_request.downlink_settings.opt_neg field]' \
    '--pending-mac-state.pending-join-request.downlink-settings.rx1-dr-offset[select the pending_mac_state.pending_join_request.downlink_settings.rx1_dr_offset field]' \
    '--pending-mac-state.pending-join-request.downlink-settings.rx2-dr[select the pending_mac_state.pending_join_request.downlink_settings.rx2_dr field]' \
    '--pending-mac-state.pending-join-request.net-id[select the pending_mac_state.pending_join_request.net_id field]' \
    '--pending-mac-state.pending-join-request.payload[select the pending_mac_state.pending_join_request.payload field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.payload.m-hdr[select the pending_mac_state.pending_join_request.payload.m_hdr field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.payload.m-hdr.m-type[select the pending_mac_state.pending_join_request.payload.m_hdr.m_type field]' \
    '--pending-mac-state.pending-join-request.payload.m-hdr.major[select the pending_mac_state.pending_join_request.payload.m_hdr.major field]' \
    '--pending-mac-state.pending-join-request.payload.mic[select the pending_mac_state.pending_join_request.payload.mic field]' \
    '--pending-mac-state.pending-join-request.raw-payload[select the pending_mac_state.pending_join_request.raw_payload field]' \
    '--pending-mac-state.pending-join-request.rx-delay[select the pending_mac_state.pending_join_request.rx_delay field]' \
    '--pending-mac-state.pending-join-request.selected-mac-version[select the pending_mac_state.pending_join_request.selected_mac_version field]' \
    '--pending-mac-state.pending-requests[select the pending_mac_state.pending_requests field]' \
    '--pending-mac-state.ping-slot-periodicity[select the pending_mac_state.ping_slot_periodicity field]' \
    '--pending-mac-state.queued-join-accept[select the pending_mac_state.queued_join_accept field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys[select the pending_mac_state.queued_join_accept.keys field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.app-s-key[select the pending_mac_state.queued_join_accept.keys.app_s_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.app-s-key.key[select the pending_mac_state.queued_join_accept.keys.app_s_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.f-nwk-s-int-key[select the pending_mac_state.queued_join_accept.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.f-nwk-s-int-key.key[select the pending_mac_state.queued_join_accept.keys.f_nwk_s_int_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.nwk-s-enc-key[select the pending_mac_state.queued_join_accept.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.nwk-s-enc-key.key[select the pending_mac_state.queued_join_accept.keys.nwk_s_enc_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.s-nwk-s-int-key[select the pending_mac_state.queued_join_accept.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.s-nwk-s-int-key.key[select the pending_mac_state.queued_join_accept.keys.s_nwk_s_int_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.session-key-id[select the pending_mac_state.queued_join_accept.keys.session_key_id field]' \
    '--pending-mac-state.queued-join-accept.payload[select the pending_mac_state.queued_join_accept.payload field]' \
    '--pending-mac-state.queued-join-accept.request[select the pending_mac_state.queued_join_accept.request field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.cf-list[select the pending_mac_state.queued_join_accept.request.cf_list field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.cf-list.ch-masks[select the pending_mac_state.queued_join_accept.request.cf_list.ch_masks field]' \
    '--pending-mac-state.queued-join-accept.request.cf-list.freq[select the pending_mac_state.queued_join_accept.request.cf_list.freq field]' \
    '--pending-mac-state.queued-join-accept.request.cf-list.type[select the pending_mac_state.queued_join_accept.request.cf_list.type field]' \
    '--pending-mac-state.queued-join-accept.request.correlation-ids[select the pending_mac_state.queued_join_accept.request.correlation_ids field]' \
    '--pending-mac-state.queued-join-accept.request.dev-addr[select the pending_mac_state.queued_join_accept.request.dev_addr field]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings[select the pending_mac_state.queued_join_accept.request.downlink_settings field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings.opt-neg[select the pending_mac_state.queued_join_accept.request.downlink_settings.opt_neg field]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings.rx1-dr-offset[select the pending_mac_state.queued_join_accept.request.downlink_settings.rx1_dr_offset field]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings.rx2-dr[select the pending_mac_state.queued_join_accept.request.downlink_settings.rx2_dr field]' \
    '--pending-mac-state.queued-join-accept.request.net-id[select the pending_mac_state.queued_join_accept.request.net_id field]' \
    '--pending-mac-state.queued-join-accept.request.payload[select the pending_mac_state.queued_join_accept.request.payload field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.payload.m-hdr[select the pending_mac_state.queued_join_accept.request.payload.m_hdr field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.payload.m-hdr.m-type[select the pending_mac_state.queued_join_accept.request.payload.m_hdr.m_type field]' \
    '--pending-mac-state.queued-join-accept.request.payload.m-hdr.major[select the pending_mac_state.queued_join_accept.request.payload.m_hdr.major field]' \
    '--pending-mac-state.queued-join-accept.request.payload.mic[select the pending_mac_state.queued_join_accept.request.payload.mic field]' \
    '--pending-mac-state.queued-join-accept.request.raw-payload[select the pending_mac_state.queued_join_accept.request.raw_payload field]' \
    '--pending-mac-state.queued-join-accept.request.rx-delay[select the pending_mac_state.queued_join_accept.request.rx_delay field]' \
    '--pending-mac-state.queued-join-accept.request.selected-mac-version[select the pending_mac_state.queued_join_accept.request.selected_mac_version field]' \
    '--pending-mac-state.queued-responses[select the pending_mac_state.queued_responses field]' \
    '--pending-mac-state.rx-windows-available[select the pending_mac_state.rx_windows_available field]' \
    '--pending-session[select the pending_session field and all allowed sub-fields]' \
    '--pending-session.dev-addr[select the pending_session.dev_addr field]' \
    '--pending-session.keys[select the pending_session.keys field and all allowed sub-fields]' \
    '--pending-session.keys.app-s-key[select the pending_session.keys.app_s_key field and all allowed sub-fields]' \
    '--pending-session.keys.app-s-key.key[select the pending_session.keys.app_s_key.key field]' \
    '--pending-session.keys.f-nwk-s-int-key[select the pending_session.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-session.keys.f-nwk-s-int-key.key[select the pending_session.keys.f_nwk_s_int_key.key field]' \
    '--pending-session.keys.nwk-s-enc-key[select the pending_session.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--pending-session.keys.nwk-s-enc-key.key[select the pending_session.keys.nwk_s_enc_key.key field]' \
    '--pending-session.keys.s-nwk-s-int-key[select the pending_session.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-session.keys.s-nwk-s-int-key.key[select the pending_session.keys.s_nwk_s_int_key.key field]' \
    '--pending-session.keys.session-key-id[select the pending_session.keys.session_key_id field]' \
    '--pending-session.last-a-f-cnt-down[select the pending_session.last_a_f_cnt_down field]' \
    '--pending-session.last-conf-f-cnt-down[select the pending_session.last_conf_f_cnt_down field]' \
    '--pending-session.last-f-cnt-up[select the pending_session.last_f_cnt_up field]' \
    '--pending-session.last-n-f-cnt-down[select the pending_session.last_n_f_cnt_down field]' \
    '--pending-session.queued-application-downlinks[select the pending_session.queued_application_downlinks field]' \
    '--picture[select the picture field]' \
    '--power-state[select the power_state field]' \
    '--provisioner-id[select the provisioner_id field]' \
    '--provisioning-data[select the provisioning_data field and all allowed sub-fields]' \
    '--queued-application-downlinks[select the queued_application_downlinks field]' \
    '--recent-adr-uplinks[select the recent_adr_uplinks field]' \
    '--recent-downlinks[select the recent_downlinks field]' \
    '--recent-uplinks[select the recent_uplinks field]' \
    '--resets-join-nonces[select the resets_join_nonces field]' \
    '--root-keys[select the root_keys field and all allowed sub-fields]' \
    '--root-keys.app-key[select the root_keys.app_key field and all allowed sub-fields]' \
    '--root-keys.app-key.key[select the root_keys.app_key.key field]' \
    '--root-keys.nwk-key[select the root_keys.nwk_key field and all allowed sub-fields]' \
    '--root-keys.nwk-key.key[select the root_keys.nwk_key.key field]' \
    '--root-keys.root-key-id[select the root_keys.root_key_id field]' \
    '--service-profile-id[select the service_profile_id field]' \
    '--session[select the session field and all allowed sub-fields]' \
    '--session.dev-addr[select the session.dev_addr field]' \
    '--session.keys[select the session.keys field and all allowed sub-fields]' \
    '--session.keys.app-s-key[select the session.keys.app_s_key field and all allowed sub-fields]' \
    '--session.keys.app-s-key.key[select the session.keys.app_s_key.key field]' \
    '--session.keys.f-nwk-s-int-key[select the session.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--session.keys.f-nwk-s-int-key.key[select the session.keys.f_nwk_s_int_key.key field]' \
    '--session.keys.nwk-s-enc-key[select the session.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--session.keys.nwk-s-enc-key.key[select the session.keys.nwk_s_enc_key.key field]' \
    '--session.keys.s-nwk-s-int-key[select the session.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--session.keys.s-nwk-s-int-key.key[select the session.keys.s_nwk_s_int_key.key field]' \
    '--session.keys.session-key-id[select the session.keys.session_key_id field]' \
    '--session.last-a-f-cnt-down[select the session.last_a_f_cnt_down field]' \
    '--session.last-conf-f-cnt-down[select the session.last_conf_f_cnt_down field]' \
    '--session.last-f-cnt-up[select the session.last_f_cnt_up field]' \
    '--session.last-n-f-cnt-down[select the session.last_n_f_cnt_down field]' \
    '--session.queued-application-downlinks[select the session.queued_application_downlinks field]' \
    '--session.started-at[select the session.started_at field]' \
    '--skip-payload-crypto[select the skip_payload_crypto field]' \
    '--skip-payload-crypto-override[select the skip_payload_crypto_override field]' \
    '--supports-class-b[select the supports_class_b field]' \
    '--supports-class-c[select the supports_class_c field]' \
    '--supports-join[select the supports_join field]' \
    '--used-dev-nonces[select the used_dev_nonces field]' \
    '--version-ids[select the version_ids field and all allowed sub-fields]' \
    '--version-ids.brand-id[select the version_ids.brand_id field]' \
    '--version-ids.firmware-version[select the version_ids.firmware_version field]' \
    '--version-ids.hardware-version[select the version_ids.hardware_version field]' \
    '--version-ids.model-id[select the version_ids.model_id field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_execute {
  _arguments \
    '--application-server-address[]:' \
    '--application-server-id[]:' \
    '--application-server-kek-label[]:' \
    '--claim-authentication-code.valid-from[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.valid-to[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.value[]:' \
    '--description[]:' \
    '--formatters.down-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.down-formatter-parameter[]:' \
    '--formatters.up-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.up-formatter-parameter[]:' \
    '--frequency-plan-id[]:' \
    '--join-server-address[]:' \
    '--last-dev-nonce[]:' \
    '--last-join-nonce[]:' \
    '--last-rj-count-0[]:' \
    '--last-rj-count-1[]:' \
    '--lorawan-phy-version[1.0.0|1.0.1|1.0.2-a|1.0.2-b|1.0.3-a|1.1.0-a|1.1.0-b|PHY_UNKNOWN|PHY_V1_0|PHY_V1_0_1|PHY_V1_0_2_REV_A|PHY_V1_0_2_REV_B|PHY_V1_0_3_REV_A|PHY_V1_1_REV_A|PHY_V1_1_REV_B|unknown]:' \
    '--lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-settings.adr-margin[]:' \
    '--mac-settings.beacon-frequency[]:' \
    '--mac-settings.class-b-timeout[(1h2m3s)]:' \
    '--mac-settings.class-c-timeout[(1h2m3s)]:' \
    '--mac-settings.desired-adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-settings.desired-adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-settings.desired-beacon-frequency[]:' \
    '--mac-settings.desired-max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.desired-ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-ping-slot-frequency[]:' \
    '--mac-settings.desired-rx1-data-rate-offset[]:' \
    '--mac-settings.desired-rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.desired-rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-rx2-frequency[]:' \
    '*--mac-settings.factory-preset-frequencies[]:' \
    '--mac-settings.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.ping-slot-frequency[]:' \
    '--mac-settings.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--mac-settings.resets-f-cnt[]' \
    '--mac-settings.rx1-data-rate-offset[]:' \
    '--mac-settings.rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.rx2-frequency[]:' \
    '--mac-settings.status-count-periodicity[]:' \
    '--mac-settings.status-time-periodicity[(1h2m3s)]:' \
    '--mac-settings.supports-32-bit-f-cnt[]' \
    '--mac-settings.use-adr[]' \
    '--mac-state.current-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.current-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.current-parameters.adr-nb-trans[]:' \
    '--mac-state.current-parameters.adr-tx-power-index[]:' \
    '--mac-state.current-parameters.beacon-frequency[]:' \
    '--mac-state.current-parameters.downlink-dwell-time[]' \
    '--mac-state.current-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.current-parameters.max-eirp[]:' \
    '--mac-state.current-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.ping-slot-frequency[]:' \
    '--mac-state.current-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.current-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.current-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.current-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.current-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.rx2-frequency[]:' \
    '--mac-state.current-parameters.uplink-dwell-time[]' \
    '--mac-state.desired-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.desired-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.desired-parameters.adr-nb-trans[]:' \
    '--mac-state.desired-parameters.adr-tx-power-index[]:' \
    '--mac-state.desired-parameters.beacon-frequency[]:' \
    '--mac-state.desired-parameters.downlink-dwell-time[]' \
    '--mac-state.desired-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.desired-parameters.max-eirp[]:' \
    '--mac-state.desired-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.ping-slot-frequency[]:' \
    '--mac-state.desired-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.desired-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.desired-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.desired-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.desired-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.rx2-frequency[]:' \
    '--mac-state.desired-parameters.uplink-dwell-time[]' \
    '--mac-state.device-class[CLASS_A|CLASS_B|CLASS_C]:' \
    '--mac-state.lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-state.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--max-frequency[]:' \
    '--min-frequency[]:' \
    '--multicast[]' \
    '--name[]:' \
    '--net-id[(hex)]:' \
    '--network-server-address[]:' \
    '--network-server-kek-label[]:' \
    '--provisioner-id[]:' \
    '--resets-join-nonces[]' \
    '--root-keys.app-key.key[(hex)]:' \
    '--root-keys.nwk-key.key[(hex)]:' \
    '--root-keys.root-key-id[]:' \
    '--service-profile-id[]:' \
    '--session.dev-addr[(hex)]:' \
    '--session.keys.app-s-key.key[(hex)]:' \
    '--session.keys.f-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.nwk-s-enc-key.key[(hex)]:' \
    '--session.keys.s-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.session-key-id[(hex)]:' \
    '--session.last-a-f-cnt-down[]:' \
    '--session.last-conf-f-cnt-down[]:' \
    '--session.last-f-cnt-up[]:' \
    '--session.last-n-f-cnt-down[]:' \
    '--session.started-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--skip-payload-crypto[]' \
    '--skip-payload-crypto-override[]' \
    '--supports-class-b[]' \
    '--supports-class-c[]' \
    '--supports-join[]' \
    '*--used-dev-nonces[]:' \
    '--version-ids.brand-id[]:' \
    '--version-ids.firmware-version[]:' \
    '--version-ids.hardware-version[]:' \
    '--version-ids.model-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_extend {
  _arguments \
    '--application-server-address[]:' \
    '--application-server-id[]:' \
    '--application-server-kek-label[]:' \
    '*--attributes[key=value]:' \
    '--claim-authentication-code.valid-from[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.valid-to[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.value[]:' \
    '--description[]:' \
    '--formatters.down-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.down-formatter-parameter[]:' \
    '--formatters.up-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.up-formatter-parameter[]:' \
    '--frequency-plan-id[]:' \
    '--join-server-address[]:' \
    '--last-dev-nonce[]:' \
    '--last-join-nonce[]:' \
    '--last-rj-count-0[]:' \
    '--last-rj-count-1[]:' \
    '--lorawan-phy-version[1.0.0|1.0.1|1.0.2-a|1.0.2-b|1.0.3-a|1.1.0-a|1.1.0-b|PHY_UNKNOWN|PHY_V1_0|PHY_V1_0_1|PHY_V1_0_2_REV_A|PHY_V1_0_2_REV_B|PHY_V1_0_3_REV_A|PHY_V1_1_REV_A|PHY_V1_1_REV_B|unknown]:' \
    '--lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-settings.adr-margin[]:' \
    '--mac-settings.beacon-frequency[]:' \
    '--mac-settings.class-b-timeout[(1h2m3s)]:' \
    '--mac-settings.class-c-timeout[(1h2m3s)]:' \
    '--mac-settings.desired-adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-settings.desired-adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-settings.desired-beacon-frequency[]:' \
    '--mac-settings.desired-max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.desired-ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-ping-slot-frequency[]:' \
    '--mac-settings.desired-rx1-data-rate-offset[]:' \
    '--mac-settings.desired-rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.desired-rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-rx2-frequency[]:' \
    '*--mac-settings.factory-preset-frequencies[]:' \
    '--mac-settings.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.ping-slot-frequency[]:' \
    '--mac-settings.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--mac-settings.resets-f-cnt[]' \
    '--mac-settings.rx1-data-rate-offset[]:' \
    '--mac-settings.rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.rx2-frequency[]:' \
    '--mac-settings.status-count-periodicity[]:' \
    '--mac-settings.status-time-periodicity[(1h2m3s)]:' \
    '--mac-settings.supports-32-bit-f-cnt[]' \
    '--mac-settings.use-adr[]' \
    '--mac-state.current-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.current-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.current-parameters.adr-nb-trans[]:' \
    '--mac-state.current-parameters.adr-tx-power-index[]:' \
    '--mac-state.current-parameters.beacon-frequency[]:' \
    '--mac-state.current-parameters.downlink-dwell-time[]' \
    '--mac-state.current-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.current-parameters.max-eirp[]:' \
    '--mac-state.current-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.ping-slot-frequency[]:' \
    '--mac-state.current-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.current-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.current-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.current-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.current-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.rx2-frequency[]:' \
    '--mac-state.current-parameters.uplink-dwell-time[]' \
    '--mac-state.desired-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.desired-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.desired-parameters.adr-nb-trans[]:' \
    '--mac-state.desired-parameters.adr-tx-power-index[]:' \
    '--mac-state.desired-parameters.beacon-frequency[]:' \
    '--mac-state.desired-parameters.downlink-dwell-time[]' \
    '--mac-state.desired-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.desired-parameters.max-eirp[]:' \
    '--mac-state.desired-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.ping-slot-frequency[]:' \
    '--mac-state.desired-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.desired-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.desired-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.desired-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.desired-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.rx2-frequency[]:' \
    '--mac-state.desired-parameters.uplink-dwell-time[]' \
    '--mac-state.device-class[CLASS_A|CLASS_B|CLASS_C]:' \
    '--mac-state.lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-state.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--mapping-key[]:' \
    '--max-frequency[]:' \
    '--min-frequency[]:' \
    '--multicast[]' \
    '--name[]:' \
    '--net-id[(hex)]:' \
    '--network-server-address[]:' \
    '--network-server-kek-label[]:' \
    '--provisioner-id[]:' \
    '--resets-join-nonces[]' \
    '--root-keys.app-key.key[(hex)]:' \
    '--root-keys.nwk-key.key[(hex)]:' \
    '--root-keys.root-key-id[]:' \
    '--service-profile-id[]:' \
    '--session.dev-addr[(hex)]:' \
    '--session.keys.app-s-key.key[(hex)]:' \
    '--session.keys.f-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.nwk-s-enc-key.key[(hex)]:' \
    '--session.keys.s-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.session-key-id[(hex)]:' \
    '--session.last-a-f-cnt-down[]:' \
    '--session.last-conf-f-cnt-down[]:' \
    '--session.last-f-cnt-up[]:' \
    '--session.last-n-f-cnt-down[]:' \
    '--session.started-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--skip-payload-crypto[]' \
    '--skip-payload-crypto-override[]' \
    '--supports-class-b[]' \
    '--supports-class-c[]' \
    '--supports-join[]' \
    '*--used-dev-nonces[]:' \
    '--version-ids.brand-id[]:' \
    '--version-ids.firmware-version[]:' \
    '--version-ids.hardware-version[]:' \
    '--version-ids.model-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_from-data {
  _arguments \
    '--format-id[]:' \
    '--local-file[(local file name)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_list-formats {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_map {
  _arguments \
    '--fail-not-found[fail if no matching mapping is found]' \
    '--input-local-file[input file (local file name)]:' \
    '--mapping-local-file[mapping file (local file name)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_update {
  _arguments \
    '--application-id[]:' \
    '--application-server-address[]:' \
    '--application-server-id[]:' \
    '--application-server-kek-label[]:' \
    '*--attributes[key=value]:' \
    '--claim-authentication-code.valid-from[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.valid-to[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.value[]:' \
    '--description[]:' \
    '--dev-eui[(hex)]:' \
    '--device-id[]:' \
    '--formatters.down-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.down-formatter-parameter[]:' \
    '--formatters.down-formatter-parameter-local-file[(local file name)]:' \
    '--formatters.up-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.up-formatter-parameter[]:' \
    '--formatters.up-formatter-parameter-local-file[(local file name)]:' \
    '--frequency-plan-id[]:' \
    '--join-eui[(hex)]:' \
    '--join-server-address[]:' \
    '--last-dev-nonce[]:' \
    '--last-join-nonce[]:' \
    '--last-rj-count-0[]:' \
    '--last-rj-count-1[]:' \
    '--location.accuracy[]:' \
    '--location.altitude[]:' \
    '--location.latitude[]:' \
    '--location.longitude[]:' \
    '--location.source[SOURCE_BT_RSSI_GEOLOCATION|SOURCE_COMBINED_GEOLOCATION|SOURCE_GPS|SOURCE_IP_GEOLOCATION|SOURCE_LORA_RSSI_GEOLOCATION|SOURCE_LORA_TDOA_GEOLOCATION|SOURCE_REGISTRY|SOURCE_UNKNOWN|SOURCE_WIFI_RSSI_GEOLOCATION]:' \
    '--lorawan-phy-version[1.0.0|1.0.1|1.0.2-a|1.0.2-b|1.0.3-a|1.1.0-a|1.1.0-b|PHY_UNKNOWN|PHY_V1_0|PHY_V1_0_1|PHY_V1_0_2_REV_A|PHY_V1_0_2_REV_B|PHY_V1_0_3_REV_A|PHY_V1_1_REV_A|PHY_V1_1_REV_B|unknown]:' \
    '--lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-settings.adr-margin[]:' \
    '--mac-settings.beacon-frequency[]:' \
    '--mac-settings.class-b-timeout[(1h2m3s)]:' \
    '--mac-settings.class-c-timeout[(1h2m3s)]:' \
    '--mac-settings.desired-adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-settings.desired-adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-settings.desired-beacon-frequency[]:' \
    '--mac-settings.desired-max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.desired-ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-ping-slot-frequency[]:' \
    '--mac-settings.desired-rx1-data-rate-offset[]:' \
    '--mac-settings.desired-rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.desired-rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-rx2-frequency[]:' \
    '*--mac-settings.factory-preset-frequencies[]:' \
    '--mac-settings.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.ping-slot-frequency[]:' \
    '--mac-settings.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--mac-settings.resets-f-cnt[]' \
    '--mac-settings.rx1-data-rate-offset[]:' \
    '--mac-settings.rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.rx2-frequency[]:' \
    '--mac-settings.status-count-periodicity[]:' \
    '--mac-settings.status-time-periodicity[(1h2m3s)]:' \
    '--mac-settings.supports-32-bit-f-cnt[]' \
    '--mac-settings.use-adr[]' \
    '--mac-state.current-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.current-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.current-parameters.adr-nb-trans[]:' \
    '--mac-state.current-parameters.adr-tx-power-index[]:' \
    '--mac-state.current-parameters.beacon-frequency[]:' \
    '--mac-state.current-parameters.downlink-dwell-time[]' \
    '--mac-state.current-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.current-parameters.max-eirp[]:' \
    '--mac-state.current-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.ping-slot-frequency[]:' \
    '--mac-state.current-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.current-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.current-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.current-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.current-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.rx2-frequency[]:' \
    '--mac-state.current-parameters.uplink-dwell-time[]' \
    '--mac-state.desired-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.desired-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.desired-parameters.adr-nb-trans[]:' \
    '--mac-state.desired-parameters.adr-tx-power-index[]:' \
    '--mac-state.desired-parameters.beacon-frequency[]:' \
    '--mac-state.desired-parameters.downlink-dwell-time[]' \
    '--mac-state.desired-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.desired-parameters.max-eirp[]:' \
    '--mac-state.desired-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.ping-slot-frequency[]:' \
    '--mac-state.desired-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.desired-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.desired-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.desired-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.desired-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.rx2-frequency[]:' \
    '--mac-state.desired-parameters.uplink-dwell-time[]' \
    '--mac-state.device-class[CLASS_A|CLASS_B|CLASS_C]:' \
    '--mac-state.lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-state.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--max-frequency[]:' \
    '--min-frequency[]:' \
    '--multicast[]' \
    '--name[]:' \
    '--net-id[(hex)]:' \
    '--network-server-address[]:' \
    '--network-server-kek-label[]:' \
    '--picture[upload the end device picture from this file]:' \
    '--provisioner-id[]:' \
    '--resets-join-nonces[]' \
    '--root-keys.app-key.key[(hex)]:' \
    '--root-keys.nwk-key.key[(hex)]:' \
    '--root-keys.root-key-id[]:' \
    '--service-profile-id[]:' \
    '--session.dev-addr[(hex)]:' \
    '--session.keys.app-s-key.key[(hex)]:' \
    '--session.keys.f-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.nwk-s-enc-key.key[(hex)]:' \
    '--session.keys.s-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.session-key-id[(hex)]:' \
    '--session.last-a-f-cnt-down[]:' \
    '--session.last-conf-f-cnt-down[]:' \
    '--session.last-f-cnt-up[]:' \
    '--session.last-n-f-cnt-down[]:' \
    '--session.started-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--skip-payload-crypto[]' \
    '--skip-payload-crypto-override[]' \
    '--supports-class-b[]' \
    '--supports-class-c[]' \
    '--supports-join[]' \
    '--touch[set in all registries even if no fields are specified]' \
    '*--unset[list of fields to unset]:' \
    '*--used-dev-nonces[]:' \
    '--version-ids.brand-id[]:' \
    '--version-ids.firmware-version[]:' \
    '--version-ids.hardware-version[]:' \
    '--version-ids.model-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_end-devices_use-external-join-server {
  _arguments \
    '--application-id[]:' \
    '--dev-eui[(hex)]:' \
    '--device-id[]:' \
    '--join-eui[(hex)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_events {
  _arguments \
    '*--application-id[]:' \
    '*--client-id[]:' \
    '*--device-id[]:' \
    '*--gateway-id[]:' \
    '*--organization-id[]:' \
    '--tail[]:' \
    '*--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_gateways {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "api-keys:Manage gateway API keys"
      "collaborators:Manage gateway collaborators"
      "connection-stats:Get connection stats for a gateway"
      "contact-info:Manage gateway contact info"
      "create:Create a gateway"
      "delete:Delete a gateway"
      "get:Get a gateway"
      "list:List gateways"
      "list-frequency-plans:List available frequency plans for gateways"
      "rights:List the rights to a gateway"
      "search:Search for gateways"
      "update:Update a gateway"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  api-keys)
    _ttn-lw-cli_gateways_api-keys
    ;;
  collaborators)
    _ttn-lw-cli_gateways_collaborators
    ;;
  connection-stats)
    _ttn-lw-cli_gateways_connection-stats
    ;;
  contact-info)
    _ttn-lw-cli_gateways_contact-info
    ;;
  create)
    _ttn-lw-cli_gateways_create
    ;;
  delete)
    _ttn-lw-cli_gateways_delete
    ;;
  get)
    _ttn-lw-cli_gateways_get
    ;;
  list)
    _ttn-lw-cli_gateways_list
    ;;
  list-frequency-plans)
    _ttn-lw-cli_gateways_list-frequency-plans
    ;;
  rights)
    _ttn-lw-cli_gateways_rights
    ;;
  search)
    _ttn-lw-cli_gateways_search
    ;;
  update)
    _ttn-lw-cli_gateways_update
    ;;
  esac
}


function _ttn-lw-cli_gateways_api-keys {
  local -a commands

  _arguments -C \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create a gateway API key"
      "delete:Delete a gateway API key"
      "list:List gateway API keys"
      "update:Update a gateway API key"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _ttn-lw-cli_gateways_api-keys_create
    ;;
  delete)
    _ttn-lw-cli_gateways_api-keys_delete
    ;;
  list)
    _ttn-lw-cli_gateways_api-keys_list
    ;;
  update)
    _ttn-lw-cli_gateways_api-keys_update
    ;;
  esac
}

function _ttn-lw-cli_gateways_api-keys_create {
  _arguments \
    '--name[]:' \
    '--right-gateway-all[]' \
    '--right-gateway-delete[]' \
    '--right-gateway-info[]' \
    '--right-gateway-link[]' \
    '--right-gateway-location-read[]' \
    '--right-gateway-settings-api-keys[]' \
    '--right-gateway-settings-basic[]' \
    '--right-gateway-settings-collaborators[]' \
    '--right-gateway-status-read[]' \
    '--right-gateway-traffic-down-write[]' \
    '--right-gateway-traffic-read[]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_api-keys_delete {
  _arguments \
    '--api-key-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_api-keys_list {
  _arguments \
    '--limit[maximum number of results to get]:' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_api-keys_update {
  _arguments \
    '--api-key-id[]:' \
    '--name[]:' \
    '--right-gateway-all[]' \
    '--right-gateway-delete[]' \
    '--right-gateway-info[]' \
    '--right-gateway-link[]' \
    '--right-gateway-location-read[]' \
    '--right-gateway-settings-api-keys[]' \
    '--right-gateway-settings-basic[]' \
    '--right-gateway-settings-collaborators[]' \
    '--right-gateway-status-read[]' \
    '--right-gateway-traffic-down-write[]' \
    '--right-gateway-traffic-read[]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_gateways_collaborators {
  local -a commands

  _arguments -C \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete a gateway collaborator"
      "list:List gateway collaborators"
      "set:Set a gateway collaborator"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _ttn-lw-cli_gateways_collaborators_delete
    ;;
  list)
    _ttn-lw-cli_gateways_collaborators_list
    ;;
  set)
    _ttn-lw-cli_gateways_collaborators_set
    ;;
  esac
}

function _ttn-lw-cli_gateways_collaborators_delete {
  _arguments \
    '--organization-id[]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_collaborators_list {
  _arguments \
    '--limit[maximum number of results to get]:' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_collaborators_set {
  _arguments \
    '--organization-id[]:' \
    '--right-gateway-all[]' \
    '--right-gateway-delete[]' \
    '--right-gateway-info[]' \
    '--right-gateway-link[]' \
    '--right-gateway-location-read[]' \
    '--right-gateway-settings-api-keys[]' \
    '--right-gateway-settings-basic[]' \
    '--right-gateway-settings-collaborators[]' \
    '--right-gateway-status-read[]' \
    '--right-gateway-traffic-down-write[]' \
    '--right-gateway-traffic-read[]' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_connection-stats {
  _arguments \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_gateways_contact-info {
  local -a commands

  _arguments -C \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "add:"
      "list:"
      "remove:"
      "request-validation:Request validation for entity contact info"
      "validate:Validate contact info"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  add)
    _ttn-lw-cli_gateways_contact-info_add
    ;;
  list)
    _ttn-lw-cli_gateways_contact-info_list
    ;;
  remove)
    _ttn-lw-cli_gateways_contact-info_remove
    ;;
  request-validation)
    _ttn-lw-cli_gateways_contact-info_request-validation
    ;;
  validate)
    _ttn-lw-cli_gateways_contact-info_validate
    ;;
  esac
}

function _ttn-lw-cli_gateways_contact-info_add {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_contact-info_list {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_contact-info_remove {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_contact-info_request-validation {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_contact-info_validate {
  _arguments \
    '--reference[Reference of the requested validation]:' \
    '--token[Token that you received]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_create {
  _arguments \
    '--antenna.gain[]:' \
    '--antenna.location.accuracy[]:' \
    '--antenna.location.altitude[]:' \
    '--antenna.location.latitude[]:' \
    '--antenna.location.longitude[]:' \
    '--antenna.location.source[SOURCE_BT_RSSI_GEOLOCATION|SOURCE_COMBINED_GEOLOCATION|SOURCE_GPS|SOURCE_IP_GEOLOCATION|SOURCE_LORA_RSSI_GEOLOCATION|SOURCE_LORA_TDOA_GEOLOCATION|SOURCE_REGISTRY|SOURCE_UNKNOWN|SOURCE_WIFI_RSSI_GEOLOCATION]:' \
    '*--attributes[key=value]:' \
    '--auto-update[]' \
    '--defaults[configure gateway with defaults]' \
    '--description[]:' \
    '--downlink-path-constraint[DOWNLINK_PATH_CONSTRAINT_NEVER|DOWNLINK_PATH_CONSTRAINT_NONE|DOWNLINK_PATH_CONSTRAINT_PREFER_OTHER]:' \
    '--enforce-duty-cycle[]' \
    '--frequency-plan-id[]:' \
    '*--frequency-plan-ids[]:' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-address[]:' \
    '--location-public[]' \
    '--name[]:' \
    '--organization-id[]:' \
    '--schedule-anytime-delay[(1h2m3s)]:' \
    '--schedule-downlink-late[]' \
    '--status-public[]' \
    '--update-channel[]:' \
    '--update-location-from-status[]' \
    '--user-id[]:' \
    '--version-ids.brand-id[]:' \
    '--version-ids.firmware-version[]:' \
    '--version-ids.hardware-version[]:' \
    '--version-ids.model-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_delete {
  _arguments \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_get {
  _arguments \
    '--all[select all gateway fields]' \
    '--antennas[select the antennas field]' \
    '--attributes[select the attributes field]' \
    '--auto-update[select the auto_update field]' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--downlink-path-constraint[select the downlink_path_constraint field]' \
    '--enforce-duty-cycle[select the enforce_duty_cycle field]' \
    '--frequency-plan-id[select the frequency_plan_id field]' \
    '--frequency-plan-ids[select the frequency_plan_ids field]' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-address[select the gateway_server_address field]' \
    '--location-public[select the location_public field]' \
    '--name[select the name field]' \
    '--schedule-anytime-delay[select the schedule_anytime_delay field]' \
    '--schedule-downlink-late[select the schedule_downlink_late field]' \
    '--status-public[select the status_public field]' \
    '--update-channel[select the update_channel field]' \
    '--update-location-from-status[select the update_location_from_status field]' \
    '--version-ids[select the version_ids field and all allowed sub-fields]' \
    '--version-ids.brand-id[select the version_ids.brand_id field]' \
    '--version-ids.firmware-version[select the version_ids.firmware_version field]' \
    '--version-ids.hardware-version[select the version_ids.hardware_version field]' \
    '--version-ids.model-id[select the version_ids.model_id field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_list {
  _arguments \
    '--all[select all gateway fields]' \
    '--antennas[select the antennas field]' \
    '--attributes[select the attributes field]' \
    '--auto-update[select the auto_update field]' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--downlink-path-constraint[select the downlink_path_constraint field]' \
    '--enforce-duty-cycle[select the enforce_duty_cycle field]' \
    '--frequency-plan-id[select the frequency_plan_id field]' \
    '--frequency-plan-ids[select the frequency_plan_ids field]' \
    '--gateway-server-address[select the gateway_server_address field]' \
    '--limit[maximum number of results to get]:' \
    '--location-public[select the location_public field]' \
    '--name[select the name field]' \
    '--order[order by this field]:' \
    '--organization-id[]:' \
    '--page[results page number]:' \
    '--schedule-anytime-delay[select the schedule_anytime_delay field]' \
    '--schedule-downlink-late[select the schedule_downlink_late field]' \
    '--status-public[select the status_public field]' \
    '--update-channel[select the update_channel field]' \
    '--update-location-from-status[select the update_location_from_status field]' \
    '--user-id[]:' \
    '--version-ids[select the version_ids field and all allowed sub-fields]' \
    '--version-ids.brand-id[select the version_ids.brand_id field]' \
    '--version-ids.firmware-version[select the version_ids.firmware_version field]' \
    '--version-ids.hardware-version[select the version_ids.hardware_version field]' \
    '--version-ids.model-id[select the version_ids.model_id field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_list-frequency-plans {
  _arguments \
    '--base-frequency[Base frequency in MHz for hardware support (433, 470, 868 or 915)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_rights {
  _arguments \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_search {
  _arguments \
    '--all[select all gateway fields]' \
    '--antennas[select the antennas field]' \
    '--attributes[select the attributes field]' \
    '--attributes-contain[(key=value)]:' \
    '--auto-update[select the auto_update field]' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--description-contains[]:' \
    '--downlink-path-constraint[select the downlink_path_constraint field]' \
    '--enforce-duty-cycle[select the enforce_duty_cycle field]' \
    '--frequency-plan-id[select the frequency_plan_id field]' \
    '--frequency-plan-ids[select the frequency_plan_ids field]' \
    '--gateway-server-address[select the gateway_server_address field]' \
    '--id-contains[]:' \
    '--limit[maximum number of results to get]:' \
    '--location-public[select the location_public field]' \
    '--name[select the name field]' \
    '--name-contains[]:' \
    '--order[order by this field]:' \
    '--page[results page number]:' \
    '--schedule-anytime-delay[select the schedule_anytime_delay field]' \
    '--schedule-downlink-late[select the schedule_downlink_late field]' \
    '--status-public[select the status_public field]' \
    '--update-channel[select the update_channel field]' \
    '--update-location-from-status[select the update_location_from_status field]' \
    '--version-ids[select the version_ids field and all allowed sub-fields]' \
    '--version-ids.brand-id[select the version_ids.brand_id field]' \
    '--version-ids.firmware-version[select the version_ids.firmware_version field]' \
    '--version-ids.hardware-version[select the version_ids.hardware_version field]' \
    '--version-ids.model-id[select the version_ids.model_id field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_gateways_update {
  _arguments \
    '--antenna.add[add an extra antenna]' \
    '--antenna.gain[]:' \
    '--antenna.index[index of the antenna to update or remove]:' \
    '--antenna.location.accuracy[]:' \
    '--antenna.location.altitude[]:' \
    '--antenna.location.latitude[]:' \
    '--antenna.location.longitude[]:' \
    '--antenna.location.source[SOURCE_BT_RSSI_GEOLOCATION|SOURCE_COMBINED_GEOLOCATION|SOURCE_GPS|SOURCE_IP_GEOLOCATION|SOURCE_LORA_RSSI_GEOLOCATION|SOURCE_LORA_TDOA_GEOLOCATION|SOURCE_REGISTRY|SOURCE_UNKNOWN|SOURCE_WIFI_RSSI_GEOLOCATION]:' \
    '--antenna.remove[remove an antenna]' \
    '*--attributes[key=value]:' \
    '--auto-update[]' \
    '--description[]:' \
    '--downlink-path-constraint[DOWNLINK_PATH_CONSTRAINT_NEVER|DOWNLINK_PATH_CONSTRAINT_NONE|DOWNLINK_PATH_CONSTRAINT_PREFER_OTHER]:' \
    '--enforce-duty-cycle[]' \
    '--frequency-plan-id[]:' \
    '*--frequency-plan-ids[]:' \
    '--gateway-eui[]:' \
    '--gateway-id[]:' \
    '--gateway-server-address[]:' \
    '--location-public[]' \
    '--name[]:' \
    '--schedule-anytime-delay[(1h2m3s)]:' \
    '--schedule-downlink-late[]' \
    '--status-public[]' \
    '--update-channel[]:' \
    '--update-location-from-status[]' \
    '--version-ids.brand-id[]:' \
    '--version-ids.firmware-version[]:' \
    '--version-ids.hardware-version[]:' \
    '--version-ids.model-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_help {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_login {
  _arguments \
    '--api-key[API key to login with (instead of using OAuth)]:' \
    '--callback[use local OAuth callback endpoint]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_logout {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_organizations {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "api-keys:Manage organization API keys"
      "collaborators:Manage organization collaborators"
      "contact-info:Manage organization contact info"
      "create:Create an organization"
      "delete:Delete an organization"
      "get:Get an organization"
      "list:List organizations"
      "rights:List the rights to an organization"
      "search:Search for organizations"
      "update:Update an organization"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  api-keys)
    _ttn-lw-cli_organizations_api-keys
    ;;
  collaborators)
    _ttn-lw-cli_organizations_collaborators
    ;;
  contact-info)
    _ttn-lw-cli_organizations_contact-info
    ;;
  create)
    _ttn-lw-cli_organizations_create
    ;;
  delete)
    _ttn-lw-cli_organizations_delete
    ;;
  get)
    _ttn-lw-cli_organizations_get
    ;;
  list)
    _ttn-lw-cli_organizations_list
    ;;
  rights)
    _ttn-lw-cli_organizations_rights
    ;;
  search)
    _ttn-lw-cli_organizations_search
    ;;
  update)
    _ttn-lw-cli_organizations_update
    ;;
  esac
}


function _ttn-lw-cli_organizations_api-keys {
  local -a commands

  _arguments -C \
    '--organization-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create an organization API key"
      "delete:Delete an organization API key"
      "list:List organization API keys"
      "update:Update an organization API key"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _ttn-lw-cli_organizations_api-keys_create
    ;;
  delete)
    _ttn-lw-cli_organizations_api-keys_delete
    ;;
  list)
    _ttn-lw-cli_organizations_api-keys_list
    ;;
  update)
    _ttn-lw-cli_organizations_api-keys_update
    ;;
  esac
}

function _ttn-lw-cli_organizations_api-keys_create {
  _arguments \
    '--name[]:' \
    '--right-application-all[]' \
    '--right-application-delete[]' \
    '--right-application-devices-read[]' \
    '--right-application-devices-read-keys[]' \
    '--right-application-devices-write[]' \
    '--right-application-devices-write-keys[]' \
    '--right-application-info[]' \
    '--right-application-link[]' \
    '--right-application-settings-api-keys[]' \
    '--right-application-settings-basic[]' \
    '--right-application-settings-collaborators[]' \
    '--right-application-settings-packages[]' \
    '--right-application-traffic-down-write[]' \
    '--right-application-traffic-read[]' \
    '--right-application-traffic-up-write[]' \
    '--right-client-all[]' \
    '--right-gateway-all[]' \
    '--right-gateway-delete[]' \
    '--right-gateway-info[]' \
    '--right-gateway-link[]' \
    '--right-gateway-location-read[]' \
    '--right-gateway-settings-api-keys[]' \
    '--right-gateway-settings-basic[]' \
    '--right-gateway-settings-collaborators[]' \
    '--right-gateway-status-read[]' \
    '--right-gateway-traffic-down-write[]' \
    '--right-gateway-traffic-read[]' \
    '--right-organization-add-as-collaborator[]' \
    '--right-organization-all[]' \
    '--right-organization-applications-create[]' \
    '--right-organization-applications-list[]' \
    '--right-organization-clients-create[]' \
    '--right-organization-clients-list[]' \
    '--right-organization-delete[]' \
    '--right-organization-gateways-create[]' \
    '--right-organization-gateways-list[]' \
    '--right-organization-info[]' \
    '--right-organization-settings-api-keys[]' \
    '--right-organization-settings-basic[]' \
    '--right-organization-settings-members[]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_api-keys_delete {
  _arguments \
    '--api-key-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_api-keys_list {
  _arguments \
    '--limit[maximum number of results to get]:' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_api-keys_update {
  _arguments \
    '--api-key-id[]:' \
    '--name[]:' \
    '--right-application-all[]' \
    '--right-application-delete[]' \
    '--right-application-devices-read[]' \
    '--right-application-devices-read-keys[]' \
    '--right-application-devices-write[]' \
    '--right-application-devices-write-keys[]' \
    '--right-application-info[]' \
    '--right-application-link[]' \
    '--right-application-settings-api-keys[]' \
    '--right-application-settings-basic[]' \
    '--right-application-settings-collaborators[]' \
    '--right-application-settings-packages[]' \
    '--right-application-traffic-down-write[]' \
    '--right-application-traffic-read[]' \
    '--right-application-traffic-up-write[]' \
    '--right-client-all[]' \
    '--right-gateway-all[]' \
    '--right-gateway-delete[]' \
    '--right-gateway-info[]' \
    '--right-gateway-link[]' \
    '--right-gateway-location-read[]' \
    '--right-gateway-settings-api-keys[]' \
    '--right-gateway-settings-basic[]' \
    '--right-gateway-settings-collaborators[]' \
    '--right-gateway-status-read[]' \
    '--right-gateway-traffic-down-write[]' \
    '--right-gateway-traffic-read[]' \
    '--right-organization-add-as-collaborator[]' \
    '--right-organization-all[]' \
    '--right-organization-applications-create[]' \
    '--right-organization-applications-list[]' \
    '--right-organization-clients-create[]' \
    '--right-organization-clients-list[]' \
    '--right-organization-delete[]' \
    '--right-organization-gateways-create[]' \
    '--right-organization-gateways-list[]' \
    '--right-organization-info[]' \
    '--right-organization-settings-api-keys[]' \
    '--right-organization-settings-basic[]' \
    '--right-organization-settings-members[]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_organizations_collaborators {
  local -a commands

  _arguments -C \
    '--organization-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete an organization collaborator"
      "list:List organization collaborators"
      "set:Set an organization collaborator"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _ttn-lw-cli_organizations_collaborators_delete
    ;;
  list)
    _ttn-lw-cli_organizations_collaborators_list
    ;;
  set)
    _ttn-lw-cli_organizations_collaborators_set
    ;;
  esac
}

function _ttn-lw-cli_organizations_collaborators_delete {
  _arguments \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_collaborators_list {
  _arguments \
    '--limit[maximum number of results to get]:' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_collaborators_set {
  _arguments \
    '--right-application-all[]' \
    '--right-application-delete[]' \
    '--right-application-devices-read[]' \
    '--right-application-devices-read-keys[]' \
    '--right-application-devices-write[]' \
    '--right-application-devices-write-keys[]' \
    '--right-application-info[]' \
    '--right-application-link[]' \
    '--right-application-settings-api-keys[]' \
    '--right-application-settings-basic[]' \
    '--right-application-settings-collaborators[]' \
    '--right-application-settings-packages[]' \
    '--right-application-traffic-down-write[]' \
    '--right-application-traffic-read[]' \
    '--right-application-traffic-up-write[]' \
    '--right-client-all[]' \
    '--right-gateway-all[]' \
    '--right-gateway-delete[]' \
    '--right-gateway-info[]' \
    '--right-gateway-link[]' \
    '--right-gateway-location-read[]' \
    '--right-gateway-settings-api-keys[]' \
    '--right-gateway-settings-basic[]' \
    '--right-gateway-settings-collaborators[]' \
    '--right-gateway-status-read[]' \
    '--right-gateway-traffic-down-write[]' \
    '--right-gateway-traffic-read[]' \
    '--right-organization-add-as-collaborator[]' \
    '--right-organization-all[]' \
    '--right-organization-applications-create[]' \
    '--right-organization-applications-list[]' \
    '--right-organization-clients-create[]' \
    '--right-organization-clients-list[]' \
    '--right-organization-delete[]' \
    '--right-organization-gateways-create[]' \
    '--right-organization-gateways-list[]' \
    '--right-organization-info[]' \
    '--right-organization-settings-api-keys[]' \
    '--right-organization-settings-basic[]' \
    '--right-organization-settings-members[]' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_organizations_contact-info {
  local -a commands

  _arguments -C \
    '--organization-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "add:"
      "list:"
      "remove:"
      "request-validation:Request validation for entity contact info"
      "validate:Validate contact info"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  add)
    _ttn-lw-cli_organizations_contact-info_add
    ;;
  list)
    _ttn-lw-cli_organizations_contact-info_list
    ;;
  remove)
    _ttn-lw-cli_organizations_contact-info_remove
    ;;
  request-validation)
    _ttn-lw-cli_organizations_contact-info_request-validation
    ;;
  validate)
    _ttn-lw-cli_organizations_contact-info_validate
    ;;
  esac
}

function _ttn-lw-cli_organizations_contact-info_add {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_contact-info_list {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_contact-info_remove {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_contact-info_request-validation {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_contact-info_validate {
  _arguments \
    '--reference[Reference of the requested validation]:' \
    '--token[Token that you received]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--organization-id[]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_create {
  _arguments \
    '*--attributes[key=value]:' \
    '--description[]:' \
    '--name[]:' \
    '--organization-id[]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_delete {
  _arguments \
    '--organization-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_get {
  _arguments \
    '--all[select all organization fields]' \
    '--attributes[select the attributes field]' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--name[select the name field]' \
    '--organization-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_list {
  _arguments \
    '--all[select all organization fields]' \
    '--attributes[select the attributes field]' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--limit[maximum number of results to get]:' \
    '--name[select the name field]' \
    '--order[order by this field]:' \
    '--organization-id[]:' \
    '--page[results page number]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_rights {
  _arguments \
    '--organization-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_search {
  _arguments \
    '--all[select all organization fields]' \
    '--attributes[select the attributes field]' \
    '--attributes-contain[(key=value)]:' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--description-contains[]:' \
    '--id-contains[]:' \
    '--limit[maximum number of results to get]:' \
    '--name[select the name field]' \
    '--name-contains[]:' \
    '--order[order by this field]:' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_organizations_update {
  _arguments \
    '*--attributes[key=value]:' \
    '--description[]:' \
    '--name[]:' \
    '--organization-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_templates {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "assign-euis:Assign JoinEUI and DevEUIs to end device templates (EXPERIMENTAL)"
      "create:Create an end device template from an existing device (EXPERIMENTAL)"
      "execute:Execute the template to an end device (EXPERIMENTAL)"
      "extend:Extend an end device template (EXPERIMENTAL)"
      "from-data:Convert data to an end device template (EXPERIMENTAL)"
      "list-formats:List available end device template formats (EXPERIMENTAL)"
      "map:Map end device templates (EXPERIMENTAL)"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  assign-euis)
    _ttn-lw-cli_templates_assign-euis
    ;;
  create)
    _ttn-lw-cli_templates_create
    ;;
  execute)
    _ttn-lw-cli_templates_execute
    ;;
  extend)
    _ttn-lw-cli_templates_extend
    ;;
  from-data)
    _ttn-lw-cli_templates_from-data
    ;;
  list-formats)
    _ttn-lw-cli_templates_list-formats
    ;;
  map)
    _ttn-lw-cli_templates_map
    ;;
  esac
}

function _ttn-lw-cli_templates_assign-euis {
  _arguments \
    '--count[]:' \
    '--join-eui[(hex)]:' \
    '--start-dev-eui[(hex)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_create {
  _arguments \
    '--application-id[]' \
    '--application-server-address[select the application_server_address field]' \
    '--application-server-id[select the application_server_id field]' \
    '--application-server-kek-label[select the application_server_kek_label field]' \
    '--attributes[select the attributes field]' \
    '--battery-percentage[select the battery_percentage field]' \
    '--claim-authentication-code[select the claim_authentication_code field and all allowed sub-fields]' \
    '--claim-authentication-code.valid-from[select the claim_authentication_code.valid_from field]' \
    '--claim-authentication-code.valid-to[select the claim_authentication_code.valid_to field]' \
    '--claim-authentication-code.value[select the claim_authentication_code.value field]' \
    '--description[select the description field]' \
    '--dev-eui[]' \
    '--device-id[]' \
    '--downlink-margin[select the downlink_margin field]' \
    '--formatters[select the formatters field and all allowed sub-fields]' \
    '--formatters.down-formatter[select the formatters.down_formatter field]' \
    '--formatters.down-formatter-parameter[select the formatters.down_formatter_parameter field]' \
    '--formatters.up-formatter[select the formatters.up_formatter field]' \
    '--formatters.up-formatter-parameter[select the formatters.up_formatter_parameter field]' \
    '--frequency-plan-id[select the frequency_plan_id field]' \
    '--join-eui[]' \
    '--join-server-address[select the join_server_address field]' \
    '--last-dev-nonce[select the last_dev_nonce field]' \
    '--last-join-nonce[select the last_join_nonce field]' \
    '--last-rj-count-0[select the last_rj_count_0 field]' \
    '--last-rj-count-1[select the last_rj_count_1 field]' \
    '--locations[select the locations field]' \
    '--lorawan-phy-version[select the lorawan_phy_version field]' \
    '--lorawan-version[select the lorawan_version field]' \
    '--mac-settings[select the mac_settings field and all allowed sub-fields]' \
    '--mac-settings.adr-margin[select the mac_settings.adr_margin field]' \
    '--mac-settings.beacon-frequency[select the mac_settings.beacon_frequency field]' \
    '--mac-settings.class-b-timeout[select the mac_settings.class_b_timeout field]' \
    '--mac-settings.class-c-timeout[select the mac_settings.class_c_timeout field]' \
    '--mac-settings.desired-adr-ack-delay-exponent[select the mac_settings.desired_adr_ack_delay_exponent field]' \
    '--mac-settings.desired-adr-ack-limit-exponent[select the mac_settings.desired_adr_ack_limit_exponent field]' \
    '--mac-settings.desired-beacon-frequency[select the mac_settings.desired_beacon_frequency field]' \
    '--mac-settings.desired-max-duty-cycle[select the mac_settings.desired_max_duty_cycle field]' \
    '--mac-settings.desired-ping-slot-data-rate-index[select the mac_settings.desired_ping_slot_data_rate_index field]' \
    '--mac-settings.desired-ping-slot-frequency[select the mac_settings.desired_ping_slot_frequency field]' \
    '--mac-settings.desired-rx1-data-rate-offset[select the mac_settings.desired_rx1_data_rate_offset field]' \
    '--mac-settings.desired-rx1-delay[select the mac_settings.desired_rx1_delay field]' \
    '--mac-settings.desired-rx2-data-rate-index[select the mac_settings.desired_rx2_data_rate_index field]' \
    '--mac-settings.desired-rx2-frequency[select the mac_settings.desired_rx2_frequency field]' \
    '--mac-settings.factory-preset-frequencies[select the mac_settings.factory_preset_frequencies field]' \
    '--mac-settings.max-duty-cycle[select the mac_settings.max_duty_cycle field]' \
    '--mac-settings.ping-slot-data-rate-index[select the mac_settings.ping_slot_data_rate_index field]' \
    '--mac-settings.ping-slot-frequency[select the mac_settings.ping_slot_frequency field]' \
    '--mac-settings.ping-slot-periodicity[select the mac_settings.ping_slot_periodicity field]' \
    '--mac-settings.resets-f-cnt[select the mac_settings.resets_f_cnt field]' \
    '--mac-settings.rx1-data-rate-offset[select the mac_settings.rx1_data_rate_offset field]' \
    '--mac-settings.rx1-delay[select the mac_settings.rx1_delay field]' \
    '--mac-settings.rx2-data-rate-index[select the mac_settings.rx2_data_rate_index field]' \
    '--mac-settings.rx2-frequency[select the mac_settings.rx2_frequency field]' \
    '--mac-settings.status-count-periodicity[select the mac_settings.status_count_periodicity field]' \
    '--mac-settings.status-time-periodicity[select the mac_settings.status_time_periodicity field]' \
    '--mac-settings.supports-32-bit-f-cnt[select the mac_settings.supports_32_bit_f_cnt field]' \
    '--mac-settings.use-adr[select the mac_settings.use_adr field]' \
    '--mac-state[select the mac_state field and all allowed sub-fields]' \
    '--mac-state.current-parameters[select the mac_state.current_parameters field and all allowed sub-fields]' \
    '--mac-state.current-parameters.adr-ack-delay[select the mac_state.current_parameters.adr_ack_delay field]' \
    '--mac-state.current-parameters.adr-ack-delay-exponent[select the mac_state.current_parameters.adr_ack_delay_exponent field]' \
    '--mac-state.current-parameters.adr-ack-limit[select the mac_state.current_parameters.adr_ack_limit field]' \
    '--mac-state.current-parameters.adr-ack-limit-exponent[select the mac_state.current_parameters.adr_ack_limit_exponent field]' \
    '--mac-state.current-parameters.adr-data-rate-index[select the mac_state.current_parameters.adr_data_rate_index field]' \
    '--mac-state.current-parameters.adr-nb-trans[select the mac_state.current_parameters.adr_nb_trans field]' \
    '--mac-state.current-parameters.adr-tx-power-index[select the mac_state.current_parameters.adr_tx_power_index field]' \
    '--mac-state.current-parameters.beacon-frequency[select the mac_state.current_parameters.beacon_frequency field]' \
    '--mac-state.current-parameters.channels[select the mac_state.current_parameters.channels field]' \
    '--mac-state.current-parameters.downlink-dwell-time[select the mac_state.current_parameters.downlink_dwell_time field]' \
    '--mac-state.current-parameters.max-duty-cycle[select the mac_state.current_parameters.max_duty_cycle field]' \
    '--mac-state.current-parameters.max-eirp[select the mac_state.current_parameters.max_eirp field]' \
    '--mac-state.current-parameters.ping-slot-data-rate-index[select the mac_state.current_parameters.ping_slot_data_rate_index field]' \
    '--mac-state.current-parameters.ping-slot-frequency[select the mac_state.current_parameters.ping_slot_frequency field]' \
    '--mac-state.current-parameters.rejoin-count-periodicity[select the mac_state.current_parameters.rejoin_count_periodicity field]' \
    '--mac-state.current-parameters.rejoin-time-periodicity[select the mac_state.current_parameters.rejoin_time_periodicity field]' \
    '--mac-state.current-parameters.rx1-data-rate-offset[select the mac_state.current_parameters.rx1_data_rate_offset field]' \
    '--mac-state.current-parameters.rx1-delay[select the mac_state.current_parameters.rx1_delay field]' \
    '--mac-state.current-parameters.rx2-data-rate-index[select the mac_state.current_parameters.rx2_data_rate_index field]' \
    '--mac-state.current-parameters.rx2-frequency[select the mac_state.current_parameters.rx2_frequency field]' \
    '--mac-state.current-parameters.uplink-dwell-time[select the mac_state.current_parameters.uplink_dwell_time field]' \
    '--mac-state.desired-parameters[select the mac_state.desired_parameters field and all allowed sub-fields]' \
    '--mac-state.desired-parameters.adr-ack-delay[select the mac_state.desired_parameters.adr_ack_delay field]' \
    '--mac-state.desired-parameters.adr-ack-delay-exponent[select the mac_state.desired_parameters.adr_ack_delay_exponent field]' \
    '--mac-state.desired-parameters.adr-ack-limit[select the mac_state.desired_parameters.adr_ack_limit field]' \
    '--mac-state.desired-parameters.adr-ack-limit-exponent[select the mac_state.desired_parameters.adr_ack_limit_exponent field]' \
    '--mac-state.desired-parameters.adr-data-rate-index[select the mac_state.desired_parameters.adr_data_rate_index field]' \
    '--mac-state.desired-parameters.adr-nb-trans[select the mac_state.desired_parameters.adr_nb_trans field]' \
    '--mac-state.desired-parameters.adr-tx-power-index[select the mac_state.desired_parameters.adr_tx_power_index field]' \
    '--mac-state.desired-parameters.beacon-frequency[select the mac_state.desired_parameters.beacon_frequency field]' \
    '--mac-state.desired-parameters.channels[select the mac_state.desired_parameters.channels field]' \
    '--mac-state.desired-parameters.downlink-dwell-time[select the mac_state.desired_parameters.downlink_dwell_time field]' \
    '--mac-state.desired-parameters.max-duty-cycle[select the mac_state.desired_parameters.max_duty_cycle field]' \
    '--mac-state.desired-parameters.max-eirp[select the mac_state.desired_parameters.max_eirp field]' \
    '--mac-state.desired-parameters.ping-slot-data-rate-index[select the mac_state.desired_parameters.ping_slot_data_rate_index field]' \
    '--mac-state.desired-parameters.ping-slot-frequency[select the mac_state.desired_parameters.ping_slot_frequency field]' \
    '--mac-state.desired-parameters.rejoin-count-periodicity[select the mac_state.desired_parameters.rejoin_count_periodicity field]' \
    '--mac-state.desired-parameters.rejoin-time-periodicity[select the mac_state.desired_parameters.rejoin_time_periodicity field]' \
    '--mac-state.desired-parameters.rx1-data-rate-offset[select the mac_state.desired_parameters.rx1_data_rate_offset field]' \
    '--mac-state.desired-parameters.rx1-delay[select the mac_state.desired_parameters.rx1_delay field]' \
    '--mac-state.desired-parameters.rx2-data-rate-index[select the mac_state.desired_parameters.rx2_data_rate_index field]' \
    '--mac-state.desired-parameters.rx2-frequency[select the mac_state.desired_parameters.rx2_frequency field]' \
    '--mac-state.desired-parameters.uplink-dwell-time[select the mac_state.desired_parameters.uplink_dwell_time field]' \
    '--mac-state.device-class[select the mac_state.device_class field]' \
    '--mac-state.last-confirmed-downlink-at[select the mac_state.last_confirmed_downlink_at field]' \
    '--mac-state.last-dev-status-f-cnt-up[select the mac_state.last_dev_status_f_cnt_up field]' \
    '--mac-state.lorawan-version[select the mac_state.lorawan_version field]' \
    '--mac-state.pending-application-downlink[select the mac_state.pending_application_downlink field and all allowed sub-fields]' \
    '--mac-state.pending-application-downlink.class-b-c[select the mac_state.pending_application_downlink.class_b_c field and all allowed sub-fields]' \
    '--mac-state.pending-application-downlink.class-b-c.absolute-time[select the mac_state.pending_application_downlink.class_b_c.absolute_time field]' \
    '--mac-state.pending-application-downlink.class-b-c.gateways[select the mac_state.pending_application_downlink.class_b_c.gateways field]' \
    '--mac-state.pending-application-downlink.confirmed[select the mac_state.pending_application_downlink.confirmed field]' \
    '--mac-state.pending-application-downlink.correlation-ids[select the mac_state.pending_application_downlink.correlation_ids field]' \
    '--mac-state.pending-application-downlink.decoded-payload[select the mac_state.pending_application_downlink.decoded_payload field and all allowed sub-fields]' \
    '--mac-state.pending-application-downlink.f-cnt[select the mac_state.pending_application_downlink.f_cnt field]' \
    '--mac-state.pending-application-downlink.f-port[select the mac_state.pending_application_downlink.f_port field]' \
    '--mac-state.pending-application-downlink.frm-payload[select the mac_state.pending_application_downlink.frm_payload field]' \
    '--mac-state.pending-application-downlink.priority[select the mac_state.pending_application_downlink.priority field]' \
    '--mac-state.pending-application-downlink.session-key-id[select the mac_state.pending_application_downlink.session_key_id field]' \
    '--mac-state.pending-join-request[select the mac_state.pending_join_request field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.cf-list[select the mac_state.pending_join_request.cf_list field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.cf-list.ch-masks[select the mac_state.pending_join_request.cf_list.ch_masks field]' \
    '--mac-state.pending-join-request.cf-list.freq[select the mac_state.pending_join_request.cf_list.freq field]' \
    '--mac-state.pending-join-request.cf-list.type[select the mac_state.pending_join_request.cf_list.type field]' \
    '--mac-state.pending-join-request.correlation-ids[select the mac_state.pending_join_request.correlation_ids field]' \
    '--mac-state.pending-join-request.dev-addr[select the mac_state.pending_join_request.dev_addr field]' \
    '--mac-state.pending-join-request.downlink-settings[select the mac_state.pending_join_request.downlink_settings field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.downlink-settings.opt-neg[select the mac_state.pending_join_request.downlink_settings.opt_neg field]' \
    '--mac-state.pending-join-request.downlink-settings.rx1-dr-offset[select the mac_state.pending_join_request.downlink_settings.rx1_dr_offset field]' \
    '--mac-state.pending-join-request.downlink-settings.rx2-dr[select the mac_state.pending_join_request.downlink_settings.rx2_dr field]' \
    '--mac-state.pending-join-request.net-id[select the mac_state.pending_join_request.net_id field]' \
    '--mac-state.pending-join-request.payload[select the mac_state.pending_join_request.payload field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.payload.m-hdr[select the mac_state.pending_join_request.payload.m_hdr field and all allowed sub-fields]' \
    '--mac-state.pending-join-request.payload.m-hdr.m-type[select the mac_state.pending_join_request.payload.m_hdr.m_type field]' \
    '--mac-state.pending-join-request.payload.m-hdr.major[select the mac_state.pending_join_request.payload.m_hdr.major field]' \
    '--mac-state.pending-join-request.payload.mic[select the mac_state.pending_join_request.payload.mic field]' \
    '--mac-state.pending-join-request.raw-payload[select the mac_state.pending_join_request.raw_payload field]' \
    '--mac-state.pending-join-request.rx-delay[select the mac_state.pending_join_request.rx_delay field]' \
    '--mac-state.pending-join-request.selected-mac-version[select the mac_state.pending_join_request.selected_mac_version field]' \
    '--mac-state.pending-requests[select the mac_state.pending_requests field]' \
    '--mac-state.ping-slot-periodicity[select the mac_state.ping_slot_periodicity field]' \
    '--mac-state.queued-join-accept[select the mac_state.queued_join_accept field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys[select the mac_state.queued_join_accept.keys field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.app-s-key[select the mac_state.queued_join_accept.keys.app_s_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.app-s-key.key[select the mac_state.queued_join_accept.keys.app_s_key.key field]' \
    '--mac-state.queued-join-accept.keys.f-nwk-s-int-key[select the mac_state.queued_join_accept.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.f-nwk-s-int-key.key[select the mac_state.queued_join_accept.keys.f_nwk_s_int_key.key field]' \
    '--mac-state.queued-join-accept.keys.nwk-s-enc-key[select the mac_state.queued_join_accept.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.nwk-s-enc-key.key[select the mac_state.queued_join_accept.keys.nwk_s_enc_key.key field]' \
    '--mac-state.queued-join-accept.keys.s-nwk-s-int-key[select the mac_state.queued_join_accept.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.keys.s-nwk-s-int-key.key[select the mac_state.queued_join_accept.keys.s_nwk_s_int_key.key field]' \
    '--mac-state.queued-join-accept.keys.session-key-id[select the mac_state.queued_join_accept.keys.session_key_id field]' \
    '--mac-state.queued-join-accept.payload[select the mac_state.queued_join_accept.payload field]' \
    '--mac-state.queued-join-accept.request[select the mac_state.queued_join_accept.request field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.cf-list[select the mac_state.queued_join_accept.request.cf_list field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.cf-list.ch-masks[select the mac_state.queued_join_accept.request.cf_list.ch_masks field]' \
    '--mac-state.queued-join-accept.request.cf-list.freq[select the mac_state.queued_join_accept.request.cf_list.freq field]' \
    '--mac-state.queued-join-accept.request.cf-list.type[select the mac_state.queued_join_accept.request.cf_list.type field]' \
    '--mac-state.queued-join-accept.request.correlation-ids[select the mac_state.queued_join_accept.request.correlation_ids field]' \
    '--mac-state.queued-join-accept.request.dev-addr[select the mac_state.queued_join_accept.request.dev_addr field]' \
    '--mac-state.queued-join-accept.request.downlink-settings[select the mac_state.queued_join_accept.request.downlink_settings field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.downlink-settings.opt-neg[select the mac_state.queued_join_accept.request.downlink_settings.opt_neg field]' \
    '--mac-state.queued-join-accept.request.downlink-settings.rx1-dr-offset[select the mac_state.queued_join_accept.request.downlink_settings.rx1_dr_offset field]' \
    '--mac-state.queued-join-accept.request.downlink-settings.rx2-dr[select the mac_state.queued_join_accept.request.downlink_settings.rx2_dr field]' \
    '--mac-state.queued-join-accept.request.net-id[select the mac_state.queued_join_accept.request.net_id field]' \
    '--mac-state.queued-join-accept.request.payload[select the mac_state.queued_join_accept.request.payload field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.payload.m-hdr[select the mac_state.queued_join_accept.request.payload.m_hdr field and all allowed sub-fields]' \
    '--mac-state.queued-join-accept.request.payload.m-hdr.m-type[select the mac_state.queued_join_accept.request.payload.m_hdr.m_type field]' \
    '--mac-state.queued-join-accept.request.payload.m-hdr.major[select the mac_state.queued_join_accept.request.payload.m_hdr.major field]' \
    '--mac-state.queued-join-accept.request.payload.mic[select the mac_state.queued_join_accept.request.payload.mic field]' \
    '--mac-state.queued-join-accept.request.raw-payload[select the mac_state.queued_join_accept.request.raw_payload field]' \
    '--mac-state.queued-join-accept.request.rx-delay[select the mac_state.queued_join_accept.request.rx_delay field]' \
    '--mac-state.queued-join-accept.request.selected-mac-version[select the mac_state.queued_join_accept.request.selected_mac_version field]' \
    '--mac-state.queued-responses[select the mac_state.queued_responses field]' \
    '--mac-state.rx-windows-available[select the mac_state.rx_windows_available field]' \
    '--mapping-key[]:' \
    '--max-frequency[select the max_frequency field]' \
    '--min-frequency[select the min_frequency field]' \
    '--multicast[select the multicast field]' \
    '--name[select the name field]' \
    '--net-id[select the net_id field]' \
    '--network-server-address[select the network_server_address field]' \
    '--network-server-kek-label[select the network_server_kek_label field]' \
    '--pending-mac-state[select the pending_mac_state field and all allowed sub-fields]' \
    '--pending-mac-state.current-parameters[select the pending_mac_state.current_parameters field and all allowed sub-fields]' \
    '--pending-mac-state.current-parameters.adr-ack-delay[select the pending_mac_state.current_parameters.adr_ack_delay field]' \
    '--pending-mac-state.current-parameters.adr-ack-delay-exponent[select the pending_mac_state.current_parameters.adr_ack_delay_exponent field]' \
    '--pending-mac-state.current-parameters.adr-ack-limit[select the pending_mac_state.current_parameters.adr_ack_limit field]' \
    '--pending-mac-state.current-parameters.adr-ack-limit-exponent[select the pending_mac_state.current_parameters.adr_ack_limit_exponent field]' \
    '--pending-mac-state.current-parameters.adr-data-rate-index[select the pending_mac_state.current_parameters.adr_data_rate_index field]' \
    '--pending-mac-state.current-parameters.adr-nb-trans[select the pending_mac_state.current_parameters.adr_nb_trans field]' \
    '--pending-mac-state.current-parameters.adr-tx-power-index[select the pending_mac_state.current_parameters.adr_tx_power_index field]' \
    '--pending-mac-state.current-parameters.beacon-frequency[select the pending_mac_state.current_parameters.beacon_frequency field]' \
    '--pending-mac-state.current-parameters.channels[select the pending_mac_state.current_parameters.channels field]' \
    '--pending-mac-state.current-parameters.downlink-dwell-time[select the pending_mac_state.current_parameters.downlink_dwell_time field]' \
    '--pending-mac-state.current-parameters.max-duty-cycle[select the pending_mac_state.current_parameters.max_duty_cycle field]' \
    '--pending-mac-state.current-parameters.max-eirp[select the pending_mac_state.current_parameters.max_eirp field]' \
    '--pending-mac-state.current-parameters.ping-slot-data-rate-index[select the pending_mac_state.current_parameters.ping_slot_data_rate_index field]' \
    '--pending-mac-state.current-parameters.ping-slot-frequency[select the pending_mac_state.current_parameters.ping_slot_frequency field]' \
    '--pending-mac-state.current-parameters.rejoin-count-periodicity[select the pending_mac_state.current_parameters.rejoin_count_periodicity field]' \
    '--pending-mac-state.current-parameters.rejoin-time-periodicity[select the pending_mac_state.current_parameters.rejoin_time_periodicity field]' \
    '--pending-mac-state.current-parameters.rx1-data-rate-offset[select the pending_mac_state.current_parameters.rx1_data_rate_offset field]' \
    '--pending-mac-state.current-parameters.rx1-delay[select the pending_mac_state.current_parameters.rx1_delay field]' \
    '--pending-mac-state.current-parameters.rx2-data-rate-index[select the pending_mac_state.current_parameters.rx2_data_rate_index field]' \
    '--pending-mac-state.current-parameters.rx2-frequency[select the pending_mac_state.current_parameters.rx2_frequency field]' \
    '--pending-mac-state.current-parameters.uplink-dwell-time[select the pending_mac_state.current_parameters.uplink_dwell_time field]' \
    '--pending-mac-state.desired-parameters[select the pending_mac_state.desired_parameters field and all allowed sub-fields]' \
    '--pending-mac-state.desired-parameters.adr-ack-delay[select the pending_mac_state.desired_parameters.adr_ack_delay field]' \
    '--pending-mac-state.desired-parameters.adr-ack-delay-exponent[select the pending_mac_state.desired_parameters.adr_ack_delay_exponent field]' \
    '--pending-mac-state.desired-parameters.adr-ack-limit[select the pending_mac_state.desired_parameters.adr_ack_limit field]' \
    '--pending-mac-state.desired-parameters.adr-ack-limit-exponent[select the pending_mac_state.desired_parameters.adr_ack_limit_exponent field]' \
    '--pending-mac-state.desired-parameters.adr-data-rate-index[select the pending_mac_state.desired_parameters.adr_data_rate_index field]' \
    '--pending-mac-state.desired-parameters.adr-nb-trans[select the pending_mac_state.desired_parameters.adr_nb_trans field]' \
    '--pending-mac-state.desired-parameters.adr-tx-power-index[select the pending_mac_state.desired_parameters.adr_tx_power_index field]' \
    '--pending-mac-state.desired-parameters.beacon-frequency[select the pending_mac_state.desired_parameters.beacon_frequency field]' \
    '--pending-mac-state.desired-parameters.channels[select the pending_mac_state.desired_parameters.channels field]' \
    '--pending-mac-state.desired-parameters.downlink-dwell-time[select the pending_mac_state.desired_parameters.downlink_dwell_time field]' \
    '--pending-mac-state.desired-parameters.max-duty-cycle[select the pending_mac_state.desired_parameters.max_duty_cycle field]' \
    '--pending-mac-state.desired-parameters.max-eirp[select the pending_mac_state.desired_parameters.max_eirp field]' \
    '--pending-mac-state.desired-parameters.ping-slot-data-rate-index[select the pending_mac_state.desired_parameters.ping_slot_data_rate_index field]' \
    '--pending-mac-state.desired-parameters.ping-slot-frequency[select the pending_mac_state.desired_parameters.ping_slot_frequency field]' \
    '--pending-mac-state.desired-parameters.rejoin-count-periodicity[select the pending_mac_state.desired_parameters.rejoin_count_periodicity field]' \
    '--pending-mac-state.desired-parameters.rejoin-time-periodicity[select the pending_mac_state.desired_parameters.rejoin_time_periodicity field]' \
    '--pending-mac-state.desired-parameters.rx1-data-rate-offset[select the pending_mac_state.desired_parameters.rx1_data_rate_offset field]' \
    '--pending-mac-state.desired-parameters.rx1-delay[select the pending_mac_state.desired_parameters.rx1_delay field]' \
    '--pending-mac-state.desired-parameters.rx2-data-rate-index[select the pending_mac_state.desired_parameters.rx2_data_rate_index field]' \
    '--pending-mac-state.desired-parameters.rx2-frequency[select the pending_mac_state.desired_parameters.rx2_frequency field]' \
    '--pending-mac-state.desired-parameters.uplink-dwell-time[select the pending_mac_state.desired_parameters.uplink_dwell_time field]' \
    '--pending-mac-state.device-class[select the pending_mac_state.device_class field]' \
    '--pending-mac-state.last-confirmed-downlink-at[select the pending_mac_state.last_confirmed_downlink_at field]' \
    '--pending-mac-state.last-dev-status-f-cnt-up[select the pending_mac_state.last_dev_status_f_cnt_up field]' \
    '--pending-mac-state.lorawan-version[select the pending_mac_state.lorawan_version field]' \
    '--pending-mac-state.pending-application-downlink[select the pending_mac_state.pending_application_downlink field and all allowed sub-fields]' \
    '--pending-mac-state.pending-application-downlink.class-b-c[select the pending_mac_state.pending_application_downlink.class_b_c field and all allowed sub-fields]' \
    '--pending-mac-state.pending-application-downlink.class-b-c.absolute-time[select the pending_mac_state.pending_application_downlink.class_b_c.absolute_time field]' \
    '--pending-mac-state.pending-application-downlink.class-b-c.gateways[select the pending_mac_state.pending_application_downlink.class_b_c.gateways field]' \
    '--pending-mac-state.pending-application-downlink.confirmed[select the pending_mac_state.pending_application_downlink.confirmed field]' \
    '--pending-mac-state.pending-application-downlink.correlation-ids[select the pending_mac_state.pending_application_downlink.correlation_ids field]' \
    '--pending-mac-state.pending-application-downlink.decoded-payload[select the pending_mac_state.pending_application_downlink.decoded_payload field and all allowed sub-fields]' \
    '--pending-mac-state.pending-application-downlink.f-cnt[select the pending_mac_state.pending_application_downlink.f_cnt field]' \
    '--pending-mac-state.pending-application-downlink.f-port[select the pending_mac_state.pending_application_downlink.f_port field]' \
    '--pending-mac-state.pending-application-downlink.frm-payload[select the pending_mac_state.pending_application_downlink.frm_payload field]' \
    '--pending-mac-state.pending-application-downlink.priority[select the pending_mac_state.pending_application_downlink.priority field]' \
    '--pending-mac-state.pending-application-downlink.session-key-id[select the pending_mac_state.pending_application_downlink.session_key_id field]' \
    '--pending-mac-state.pending-join-request[select the pending_mac_state.pending_join_request field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.cf-list[select the pending_mac_state.pending_join_request.cf_list field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.cf-list.ch-masks[select the pending_mac_state.pending_join_request.cf_list.ch_masks field]' \
    '--pending-mac-state.pending-join-request.cf-list.freq[select the pending_mac_state.pending_join_request.cf_list.freq field]' \
    '--pending-mac-state.pending-join-request.cf-list.type[select the pending_mac_state.pending_join_request.cf_list.type field]' \
    '--pending-mac-state.pending-join-request.correlation-ids[select the pending_mac_state.pending_join_request.correlation_ids field]' \
    '--pending-mac-state.pending-join-request.dev-addr[select the pending_mac_state.pending_join_request.dev_addr field]' \
    '--pending-mac-state.pending-join-request.downlink-settings[select the pending_mac_state.pending_join_request.downlink_settings field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.downlink-settings.opt-neg[select the pending_mac_state.pending_join_request.downlink_settings.opt_neg field]' \
    '--pending-mac-state.pending-join-request.downlink-settings.rx1-dr-offset[select the pending_mac_state.pending_join_request.downlink_settings.rx1_dr_offset field]' \
    '--pending-mac-state.pending-join-request.downlink-settings.rx2-dr[select the pending_mac_state.pending_join_request.downlink_settings.rx2_dr field]' \
    '--pending-mac-state.pending-join-request.net-id[select the pending_mac_state.pending_join_request.net_id field]' \
    '--pending-mac-state.pending-join-request.payload[select the pending_mac_state.pending_join_request.payload field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.payload.m-hdr[select the pending_mac_state.pending_join_request.payload.m_hdr field and all allowed sub-fields]' \
    '--pending-mac-state.pending-join-request.payload.m-hdr.m-type[select the pending_mac_state.pending_join_request.payload.m_hdr.m_type field]' \
    '--pending-mac-state.pending-join-request.payload.m-hdr.major[select the pending_mac_state.pending_join_request.payload.m_hdr.major field]' \
    '--pending-mac-state.pending-join-request.payload.mic[select the pending_mac_state.pending_join_request.payload.mic field]' \
    '--pending-mac-state.pending-join-request.raw-payload[select the pending_mac_state.pending_join_request.raw_payload field]' \
    '--pending-mac-state.pending-join-request.rx-delay[select the pending_mac_state.pending_join_request.rx_delay field]' \
    '--pending-mac-state.pending-join-request.selected-mac-version[select the pending_mac_state.pending_join_request.selected_mac_version field]' \
    '--pending-mac-state.pending-requests[select the pending_mac_state.pending_requests field]' \
    '--pending-mac-state.ping-slot-periodicity[select the pending_mac_state.ping_slot_periodicity field]' \
    '--pending-mac-state.queued-join-accept[select the pending_mac_state.queued_join_accept field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys[select the pending_mac_state.queued_join_accept.keys field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.app-s-key[select the pending_mac_state.queued_join_accept.keys.app_s_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.app-s-key.key[select the pending_mac_state.queued_join_accept.keys.app_s_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.f-nwk-s-int-key[select the pending_mac_state.queued_join_accept.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.f-nwk-s-int-key.key[select the pending_mac_state.queued_join_accept.keys.f_nwk_s_int_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.nwk-s-enc-key[select the pending_mac_state.queued_join_accept.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.nwk-s-enc-key.key[select the pending_mac_state.queued_join_accept.keys.nwk_s_enc_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.s-nwk-s-int-key[select the pending_mac_state.queued_join_accept.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.keys.s-nwk-s-int-key.key[select the pending_mac_state.queued_join_accept.keys.s_nwk_s_int_key.key field]' \
    '--pending-mac-state.queued-join-accept.keys.session-key-id[select the pending_mac_state.queued_join_accept.keys.session_key_id field]' \
    '--pending-mac-state.queued-join-accept.payload[select the pending_mac_state.queued_join_accept.payload field]' \
    '--pending-mac-state.queued-join-accept.request[select the pending_mac_state.queued_join_accept.request field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.cf-list[select the pending_mac_state.queued_join_accept.request.cf_list field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.cf-list.ch-masks[select the pending_mac_state.queued_join_accept.request.cf_list.ch_masks field]' \
    '--pending-mac-state.queued-join-accept.request.cf-list.freq[select the pending_mac_state.queued_join_accept.request.cf_list.freq field]' \
    '--pending-mac-state.queued-join-accept.request.cf-list.type[select the pending_mac_state.queued_join_accept.request.cf_list.type field]' \
    '--pending-mac-state.queued-join-accept.request.correlation-ids[select the pending_mac_state.queued_join_accept.request.correlation_ids field]' \
    '--pending-mac-state.queued-join-accept.request.dev-addr[select the pending_mac_state.queued_join_accept.request.dev_addr field]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings[select the pending_mac_state.queued_join_accept.request.downlink_settings field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings.opt-neg[select the pending_mac_state.queued_join_accept.request.downlink_settings.opt_neg field]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings.rx1-dr-offset[select the pending_mac_state.queued_join_accept.request.downlink_settings.rx1_dr_offset field]' \
    '--pending-mac-state.queued-join-accept.request.downlink-settings.rx2-dr[select the pending_mac_state.queued_join_accept.request.downlink_settings.rx2_dr field]' \
    '--pending-mac-state.queued-join-accept.request.net-id[select the pending_mac_state.queued_join_accept.request.net_id field]' \
    '--pending-mac-state.queued-join-accept.request.payload[select the pending_mac_state.queued_join_accept.request.payload field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.payload.m-hdr[select the pending_mac_state.queued_join_accept.request.payload.m_hdr field and all allowed sub-fields]' \
    '--pending-mac-state.queued-join-accept.request.payload.m-hdr.m-type[select the pending_mac_state.queued_join_accept.request.payload.m_hdr.m_type field]' \
    '--pending-mac-state.queued-join-accept.request.payload.m-hdr.major[select the pending_mac_state.queued_join_accept.request.payload.m_hdr.major field]' \
    '--pending-mac-state.queued-join-accept.request.payload.mic[select the pending_mac_state.queued_join_accept.request.payload.mic field]' \
    '--pending-mac-state.queued-join-accept.request.raw-payload[select the pending_mac_state.queued_join_accept.request.raw_payload field]' \
    '--pending-mac-state.queued-join-accept.request.rx-delay[select the pending_mac_state.queued_join_accept.request.rx_delay field]' \
    '--pending-mac-state.queued-join-accept.request.selected-mac-version[select the pending_mac_state.queued_join_accept.request.selected_mac_version field]' \
    '--pending-mac-state.queued-responses[select the pending_mac_state.queued_responses field]' \
    '--pending-mac-state.rx-windows-available[select the pending_mac_state.rx_windows_available field]' \
    '--pending-session[select the pending_session field and all allowed sub-fields]' \
    '--pending-session.dev-addr[select the pending_session.dev_addr field]' \
    '--pending-session.keys[select the pending_session.keys field and all allowed sub-fields]' \
    '--pending-session.keys.app-s-key[select the pending_session.keys.app_s_key field and all allowed sub-fields]' \
    '--pending-session.keys.app-s-key.key[select the pending_session.keys.app_s_key.key field]' \
    '--pending-session.keys.f-nwk-s-int-key[select the pending_session.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-session.keys.f-nwk-s-int-key.key[select the pending_session.keys.f_nwk_s_int_key.key field]' \
    '--pending-session.keys.nwk-s-enc-key[select the pending_session.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--pending-session.keys.nwk-s-enc-key.key[select the pending_session.keys.nwk_s_enc_key.key field]' \
    '--pending-session.keys.s-nwk-s-int-key[select the pending_session.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--pending-session.keys.s-nwk-s-int-key.key[select the pending_session.keys.s_nwk_s_int_key.key field]' \
    '--pending-session.keys.session-key-id[select the pending_session.keys.session_key_id field]' \
    '--pending-session.last-a-f-cnt-down[select the pending_session.last_a_f_cnt_down field]' \
    '--pending-session.last-conf-f-cnt-down[select the pending_session.last_conf_f_cnt_down field]' \
    '--pending-session.last-f-cnt-up[select the pending_session.last_f_cnt_up field]' \
    '--pending-session.last-n-f-cnt-down[select the pending_session.last_n_f_cnt_down field]' \
    '--pending-session.queued-application-downlinks[select the pending_session.queued_application_downlinks field]' \
    '--picture[select the picture field]' \
    '--power-state[select the power_state field]' \
    '--provisioner-id[select the provisioner_id field]' \
    '--provisioning-data[select the provisioning_data field and all allowed sub-fields]' \
    '--queued-application-downlinks[select the queued_application_downlinks field]' \
    '--recent-adr-uplinks[select the recent_adr_uplinks field]' \
    '--recent-downlinks[select the recent_downlinks field]' \
    '--recent-uplinks[select the recent_uplinks field]' \
    '--resets-join-nonces[select the resets_join_nonces field]' \
    '--root-keys[select the root_keys field and all allowed sub-fields]' \
    '--root-keys.app-key[select the root_keys.app_key field and all allowed sub-fields]' \
    '--root-keys.app-key.key[select the root_keys.app_key.key field]' \
    '--root-keys.nwk-key[select the root_keys.nwk_key field and all allowed sub-fields]' \
    '--root-keys.nwk-key.key[select the root_keys.nwk_key.key field]' \
    '--root-keys.root-key-id[select the root_keys.root_key_id field]' \
    '--service-profile-id[select the service_profile_id field]' \
    '--session[select the session field and all allowed sub-fields]' \
    '--session.dev-addr[select the session.dev_addr field]' \
    '--session.keys[select the session.keys field and all allowed sub-fields]' \
    '--session.keys.app-s-key[select the session.keys.app_s_key field and all allowed sub-fields]' \
    '--session.keys.app-s-key.key[select the session.keys.app_s_key.key field]' \
    '--session.keys.f-nwk-s-int-key[select the session.keys.f_nwk_s_int_key field and all allowed sub-fields]' \
    '--session.keys.f-nwk-s-int-key.key[select the session.keys.f_nwk_s_int_key.key field]' \
    '--session.keys.nwk-s-enc-key[select the session.keys.nwk_s_enc_key field and all allowed sub-fields]' \
    '--session.keys.nwk-s-enc-key.key[select the session.keys.nwk_s_enc_key.key field]' \
    '--session.keys.s-nwk-s-int-key[select the session.keys.s_nwk_s_int_key field and all allowed sub-fields]' \
    '--session.keys.s-nwk-s-int-key.key[select the session.keys.s_nwk_s_int_key.key field]' \
    '--session.keys.session-key-id[select the session.keys.session_key_id field]' \
    '--session.last-a-f-cnt-down[select the session.last_a_f_cnt_down field]' \
    '--session.last-conf-f-cnt-down[select the session.last_conf_f_cnt_down field]' \
    '--session.last-f-cnt-up[select the session.last_f_cnt_up field]' \
    '--session.last-n-f-cnt-down[select the session.last_n_f_cnt_down field]' \
    '--session.queued-application-downlinks[select the session.queued_application_downlinks field]' \
    '--session.started-at[select the session.started_at field]' \
    '--skip-payload-crypto[select the skip_payload_crypto field]' \
    '--skip-payload-crypto-override[select the skip_payload_crypto_override field]' \
    '--supports-class-b[select the supports_class_b field]' \
    '--supports-class-c[select the supports_class_c field]' \
    '--supports-join[select the supports_join field]' \
    '--used-dev-nonces[select the used_dev_nonces field]' \
    '--version-ids[select the version_ids field and all allowed sub-fields]' \
    '--version-ids.brand-id[select the version_ids.brand_id field]' \
    '--version-ids.firmware-version[select the version_ids.firmware_version field]' \
    '--version-ids.hardware-version[select the version_ids.hardware_version field]' \
    '--version-ids.model-id[select the version_ids.model_id field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_execute {
  _arguments \
    '--application-server-address[]:' \
    '--application-server-id[]:' \
    '--application-server-kek-label[]:' \
    '--claim-authentication-code.valid-from[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.valid-to[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.value[]:' \
    '--description[]:' \
    '--formatters.down-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.down-formatter-parameter[]:' \
    '--formatters.up-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.up-formatter-parameter[]:' \
    '--frequency-plan-id[]:' \
    '--join-server-address[]:' \
    '--last-dev-nonce[]:' \
    '--last-join-nonce[]:' \
    '--last-rj-count-0[]:' \
    '--last-rj-count-1[]:' \
    '--lorawan-phy-version[1.0.0|1.0.1|1.0.2-a|1.0.2-b|1.0.3-a|1.1.0-a|1.1.0-b|PHY_UNKNOWN|PHY_V1_0|PHY_V1_0_1|PHY_V1_0_2_REV_A|PHY_V1_0_2_REV_B|PHY_V1_0_3_REV_A|PHY_V1_1_REV_A|PHY_V1_1_REV_B|unknown]:' \
    '--lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-settings.adr-margin[]:' \
    '--mac-settings.beacon-frequency[]:' \
    '--mac-settings.class-b-timeout[(1h2m3s)]:' \
    '--mac-settings.class-c-timeout[(1h2m3s)]:' \
    '--mac-settings.desired-adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-settings.desired-adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-settings.desired-beacon-frequency[]:' \
    '--mac-settings.desired-max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.desired-ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-ping-slot-frequency[]:' \
    '--mac-settings.desired-rx1-data-rate-offset[]:' \
    '--mac-settings.desired-rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.desired-rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-rx2-frequency[]:' \
    '*--mac-settings.factory-preset-frequencies[]:' \
    '--mac-settings.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.ping-slot-frequency[]:' \
    '--mac-settings.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--mac-settings.resets-f-cnt[]' \
    '--mac-settings.rx1-data-rate-offset[]:' \
    '--mac-settings.rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.rx2-frequency[]:' \
    '--mac-settings.status-count-periodicity[]:' \
    '--mac-settings.status-time-periodicity[(1h2m3s)]:' \
    '--mac-settings.supports-32-bit-f-cnt[]' \
    '--mac-settings.use-adr[]' \
    '--mac-state.current-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.current-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.current-parameters.adr-nb-trans[]:' \
    '--mac-state.current-parameters.adr-tx-power-index[]:' \
    '--mac-state.current-parameters.beacon-frequency[]:' \
    '--mac-state.current-parameters.downlink-dwell-time[]' \
    '--mac-state.current-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.current-parameters.max-eirp[]:' \
    '--mac-state.current-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.ping-slot-frequency[]:' \
    '--mac-state.current-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.current-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.current-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.current-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.current-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.rx2-frequency[]:' \
    '--mac-state.current-parameters.uplink-dwell-time[]' \
    '--mac-state.desired-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.desired-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.desired-parameters.adr-nb-trans[]:' \
    '--mac-state.desired-parameters.adr-tx-power-index[]:' \
    '--mac-state.desired-parameters.beacon-frequency[]:' \
    '--mac-state.desired-parameters.downlink-dwell-time[]' \
    '--mac-state.desired-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.desired-parameters.max-eirp[]:' \
    '--mac-state.desired-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.ping-slot-frequency[]:' \
    '--mac-state.desired-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.desired-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.desired-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.desired-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.desired-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.rx2-frequency[]:' \
    '--mac-state.desired-parameters.uplink-dwell-time[]' \
    '--mac-state.device-class[CLASS_A|CLASS_B|CLASS_C]:' \
    '--mac-state.lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-state.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--max-frequency[]:' \
    '--min-frequency[]:' \
    '--multicast[]' \
    '--name[]:' \
    '--net-id[(hex)]:' \
    '--network-server-address[]:' \
    '--network-server-kek-label[]:' \
    '--provisioner-id[]:' \
    '--resets-join-nonces[]' \
    '--root-keys.app-key.key[(hex)]:' \
    '--root-keys.nwk-key.key[(hex)]:' \
    '--root-keys.root-key-id[]:' \
    '--service-profile-id[]:' \
    '--session.dev-addr[(hex)]:' \
    '--session.keys.app-s-key.key[(hex)]:' \
    '--session.keys.f-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.nwk-s-enc-key.key[(hex)]:' \
    '--session.keys.s-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.session-key-id[(hex)]:' \
    '--session.last-a-f-cnt-down[]:' \
    '--session.last-conf-f-cnt-down[]:' \
    '--session.last-f-cnt-up[]:' \
    '--session.last-n-f-cnt-down[]:' \
    '--session.started-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--skip-payload-crypto[]' \
    '--skip-payload-crypto-override[]' \
    '--supports-class-b[]' \
    '--supports-class-c[]' \
    '--supports-join[]' \
    '*--used-dev-nonces[]:' \
    '--version-ids.brand-id[]:' \
    '--version-ids.firmware-version[]:' \
    '--version-ids.hardware-version[]:' \
    '--version-ids.model-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_extend {
  _arguments \
    '--application-server-address[]:' \
    '--application-server-id[]:' \
    '--application-server-kek-label[]:' \
    '*--attributes[key=value]:' \
    '--claim-authentication-code.valid-from[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.valid-to[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--claim-authentication-code.value[]:' \
    '--description[]:' \
    '--formatters.down-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.down-formatter-parameter[]:' \
    '--formatters.up-formatter[FORMATTER_CAYENNELPP|FORMATTER_GRPC_SERVICE|FORMATTER_JAVASCRIPT|FORMATTER_NONE|FORMATTER_REPOSITORY]:' \
    '--formatters.up-formatter-parameter[]:' \
    '--frequency-plan-id[]:' \
    '--join-server-address[]:' \
    '--last-dev-nonce[]:' \
    '--last-join-nonce[]:' \
    '--last-rj-count-0[]:' \
    '--last-rj-count-1[]:' \
    '--lorawan-phy-version[1.0.0|1.0.1|1.0.2-a|1.0.2-b|1.0.3-a|1.1.0-a|1.1.0-b|PHY_UNKNOWN|PHY_V1_0|PHY_V1_0_1|PHY_V1_0_2_REV_A|PHY_V1_0_2_REV_B|PHY_V1_0_3_REV_A|PHY_V1_1_REV_A|PHY_V1_1_REV_B|unknown]:' \
    '--lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-settings.adr-margin[]:' \
    '--mac-settings.beacon-frequency[]:' \
    '--mac-settings.class-b-timeout[(1h2m3s)]:' \
    '--mac-settings.class-c-timeout[(1h2m3s)]:' \
    '--mac-settings.desired-adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-settings.desired-adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-settings.desired-beacon-frequency[]:' \
    '--mac-settings.desired-max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.desired-ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-ping-slot-frequency[]:' \
    '--mac-settings.desired-rx1-data-rate-offset[]:' \
    '--mac-settings.desired-rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.desired-rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.desired-rx2-frequency[]:' \
    '*--mac-settings.factory-preset-frequencies[]:' \
    '--mac-settings.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-settings.ping-slot-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.ping-slot-frequency[]:' \
    '--mac-settings.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--mac-settings.resets-f-cnt[]' \
    '--mac-settings.rx1-data-rate-offset[]:' \
    '--mac-settings.rx1-delay[RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-settings.rx2-data-rate-index[DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-settings.rx2-frequency[]:' \
    '--mac-settings.status-count-periodicity[]:' \
    '--mac-settings.status-time-periodicity[(1h2m3s)]:' \
    '--mac-settings.supports-32-bit-f-cnt[]' \
    '--mac-settings.use-adr[]' \
    '--mac-state.current-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.current-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.current-parameters.adr-nb-trans[]:' \
    '--mac-state.current-parameters.adr-tx-power-index[]:' \
    '--mac-state.current-parameters.beacon-frequency[]:' \
    '--mac-state.current-parameters.downlink-dwell-time[]' \
    '--mac-state.current-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.current-parameters.max-eirp[]:' \
    '--mac-state.current-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.ping-slot-frequency[]:' \
    '--mac-state.current-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.current-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.current-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.current-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.current-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.current-parameters.rx2-frequency[]:' \
    '--mac-state.current-parameters.uplink-dwell-time[]' \
    '--mac-state.desired-parameters.adr-ack-delay-exponent[ADR_ACK_DELAY_1|ADR_ACK_DELAY_1024|ADR_ACK_DELAY_128|ADR_ACK_DELAY_16|ADR_ACK_DELAY_16384|ADR_ACK_DELAY_2|ADR_ACK_DELAY_2048|ADR_ACK_DELAY_256|ADR_ACK_DELAY_32|ADR_ACK_DELAY_32768|ADR_ACK_DELAY_4|ADR_ACK_DELAY_4096|ADR_ACK_DELAY_512|ADR_ACK_DELAY_64|ADR_ACK_DELAY_8|ADR_ACK_DELAY_8192]:' \
    '--mac-state.desired-parameters.adr-ack-limit-exponent[ADR_ACK_LIMIT_1|ADR_ACK_LIMIT_1024|ADR_ACK_LIMIT_128|ADR_ACK_LIMIT_16|ADR_ACK_LIMIT_16384|ADR_ACK_LIMIT_2|ADR_ACK_LIMIT_2048|ADR_ACK_LIMIT_256|ADR_ACK_LIMIT_32|ADR_ACK_LIMIT_32768|ADR_ACK_LIMIT_4|ADR_ACK_LIMIT_4096|ADR_ACK_LIMIT_512|ADR_ACK_LIMIT_64|ADR_ACK_LIMIT_8|ADR_ACK_LIMIT_8192]:' \
    '--mac-state.desired-parameters.adr-nb-trans[]:' \
    '--mac-state.desired-parameters.adr-tx-power-index[]:' \
    '--mac-state.desired-parameters.beacon-frequency[]:' \
    '--mac-state.desired-parameters.downlink-dwell-time[]' \
    '--mac-state.desired-parameters.max-duty-cycle[DUTY_CYCLE_1|DUTY_CYCLE_1024|DUTY_CYCLE_128|DUTY_CYCLE_16|DUTY_CYCLE_16384|DUTY_CYCLE_2|DUTY_CYCLE_2048|DUTY_CYCLE_256|DUTY_CYCLE_32|DUTY_CYCLE_32768|DUTY_CYCLE_4|DUTY_CYCLE_4096|DUTY_CYCLE_512|DUTY_CYCLE_64|DUTY_CYCLE_8|DUTY_CYCLE_8192]:' \
    '--mac-state.desired-parameters.max-eirp[]:' \
    '--mac-state.desired-parameters.ping-slot-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.ping-slot-frequency[]:' \
    '--mac-state.desired-parameters.rejoin-count-periodicity[REJOIN_COUNT_1024|REJOIN_COUNT_128|REJOIN_COUNT_131072|REJOIN_COUNT_16|REJOIN_COUNT_16384|REJOIN_COUNT_2048|REJOIN_COUNT_256|REJOIN_COUNT_262144|REJOIN_COUNT_32|REJOIN_COUNT_32768|REJOIN_COUNT_4096|REJOIN_COUNT_512|REJOIN_COUNT_524288|REJOIN_COUNT_64|REJOIN_COUNT_65536|REJOIN_COUNT_8192]:' \
    '--mac-state.desired-parameters.rejoin-time-periodicity[REJOIN_TIME_0|REJOIN_TIME_1|REJOIN_TIME_10|REJOIN_TIME_11|REJOIN_TIME_12|REJOIN_TIME_13|REJOIN_TIME_14|REJOIN_TIME_15|REJOIN_TIME_2|REJOIN_TIME_3|REJOIN_TIME_4|REJOIN_TIME_5|REJOIN_TIME_6|REJOIN_TIME_7|REJOIN_TIME_8|REJOIN_TIME_9]:' \
    '--mac-state.desired-parameters.rx1-data-rate-offset[]:' \
    '--mac-state.desired-parameters.rx1-delay[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|RX_DELAY_0|RX_DELAY_1|RX_DELAY_10|RX_DELAY_11|RX_DELAY_12|RX_DELAY_13|RX_DELAY_14|RX_DELAY_15|RX_DELAY_2|RX_DELAY_3|RX_DELAY_4|RX_DELAY_5|RX_DELAY_6|RX_DELAY_7|RX_DELAY_8|RX_DELAY_9]:' \
    '--mac-state.desired-parameters.rx2-data-rate-index[0|1|10|11|12|13|14|15|2|3|4|5|6|7|8|9|DATA_RATE_0|DATA_RATE_1|DATA_RATE_10|DATA_RATE_11|DATA_RATE_12|DATA_RATE_13|DATA_RATE_14|DATA_RATE_15|DATA_RATE_2|DATA_RATE_3|DATA_RATE_4|DATA_RATE_5|DATA_RATE_6|DATA_RATE_7|DATA_RATE_8|DATA_RATE_9]:' \
    '--mac-state.desired-parameters.rx2-frequency[]:' \
    '--mac-state.desired-parameters.uplink-dwell-time[]' \
    '--mac-state.device-class[CLASS_A|CLASS_B|CLASS_C]:' \
    '--mac-state.lorawan-version[1.0.0|1.0.1|1.0.2|1.0.3|1.0.4|1.1.0|MAC_UNKNOWN|MAC_V1_0|MAC_V1_0_1|MAC_V1_0_2|MAC_V1_0_3|MAC_V1_0_4|MAC_V1_1|unknown]:' \
    '--mac-state.ping-slot-periodicity[PING_EVERY_128S|PING_EVERY_16S|PING_EVERY_1S|PING_EVERY_2S|PING_EVERY_32S|PING_EVERY_4S|PING_EVERY_64S|PING_EVERY_8S]:' \
    '--mapping-key[]:' \
    '--max-frequency[]:' \
    '--min-frequency[]:' \
    '--multicast[]' \
    '--name[]:' \
    '--net-id[(hex)]:' \
    '--network-server-address[]:' \
    '--network-server-kek-label[]:' \
    '--provisioner-id[]:' \
    '--resets-join-nonces[]' \
    '--root-keys.app-key.key[(hex)]:' \
    '--root-keys.nwk-key.key[(hex)]:' \
    '--root-keys.root-key-id[]:' \
    '--service-profile-id[]:' \
    '--session.dev-addr[(hex)]:' \
    '--session.keys.app-s-key.key[(hex)]:' \
    '--session.keys.f-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.nwk-s-enc-key.key[(hex)]:' \
    '--session.keys.s-nwk-s-int-key.key[(hex)]:' \
    '--session.keys.session-key-id[(hex)]:' \
    '--session.last-a-f-cnt-down[]:' \
    '--session.last-conf-f-cnt-down[]:' \
    '--session.last-f-cnt-up[]:' \
    '--session.last-n-f-cnt-down[]:' \
    '--session.started-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--skip-payload-crypto[]' \
    '--skip-payload-crypto-override[]' \
    '--supports-class-b[]' \
    '--supports-class-c[]' \
    '--supports-join[]' \
    '*--used-dev-nonces[]:' \
    '--version-ids.brand-id[]:' \
    '--version-ids.firmware-version[]:' \
    '--version-ids.hardware-version[]:' \
    '--version-ids.model-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_from-data {
  _arguments \
    '--format-id[]:' \
    '--local-file[(local file name)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_list-formats {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_templates_map {
  _arguments \
    '--fail-not-found[fail if no matching mapping is found]' \
    '--input-local-file[input file (local file name)]:' \
    '--mapping-local-file[mapping file (local file name)]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_use {
  _arguments \
    '--fetch-ca[Connect to server and retrieve CA]' \
    '--grpc-port[]:' \
    '--host[Server host name]:' \
    '--overwrite[Overwrite existing config files]' \
    '--user[Write config file in user config directory]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_users {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "api-keys:Manage user API keys"
      "contact-info:Manage user contact info"
      "create:Create a user"
      "delete:Delete a user"
      "forgot-password:Request a temporary user password"
      "get:Get a user"
      "invitations:Manage user invitations"
      "list:List users"
      "oauth:Manage OAuth authorizations and access tokens"
      "rights:List the rights to a user"
      "search:Search for users"
      "update:Update a user"
      "update-password:Update a user password"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  api-keys)
    _ttn-lw-cli_users_api-keys
    ;;
  contact-info)
    _ttn-lw-cli_users_contact-info
    ;;
  create)
    _ttn-lw-cli_users_create
    ;;
  delete)
    _ttn-lw-cli_users_delete
    ;;
  forgot-password)
    _ttn-lw-cli_users_forgot-password
    ;;
  get)
    _ttn-lw-cli_users_get
    ;;
  invitations)
    _ttn-lw-cli_users_invitations
    ;;
  list)
    _ttn-lw-cli_users_list
    ;;
  oauth)
    _ttn-lw-cli_users_oauth
    ;;
  rights)
    _ttn-lw-cli_users_rights
    ;;
  search)
    _ttn-lw-cli_users_search
    ;;
  update)
    _ttn-lw-cli_users_update
    ;;
  update-password)
    _ttn-lw-cli_users_update-password
    ;;
  esac
}


function _ttn-lw-cli_users_api-keys {
  local -a commands

  _arguments -C \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create a user API key"
      "delete:Delete a user API key"
      "list:List user API keys"
      "update:Update a user API key"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _ttn-lw-cli_users_api-keys_create
    ;;
  delete)
    _ttn-lw-cli_users_api-keys_delete
    ;;
  list)
    _ttn-lw-cli_users_api-keys_list
    ;;
  update)
    _ttn-lw-cli_users_api-keys_update
    ;;
  esac
}

function _ttn-lw-cli_users_api-keys_create {
  _arguments \
    '--name[]:' \
    '--right-application-all[]' \
    '--right-application-delete[]' \
    '--right-application-devices-read[]' \
    '--right-application-devices-read-keys[]' \
    '--right-application-devices-write[]' \
    '--right-application-devices-write-keys[]' \
    '--right-application-info[]' \
    '--right-application-link[]' \
    '--right-application-settings-api-keys[]' \
    '--right-application-settings-basic[]' \
    '--right-application-settings-collaborators[]' \
    '--right-application-settings-packages[]' \
    '--right-application-traffic-down-write[]' \
    '--right-application-traffic-read[]' \
    '--right-application-traffic-up-write[]' \
    '--right-client-all[]' \
    '--right-gateway-all[]' \
    '--right-gateway-delete[]' \
    '--right-gateway-info[]' \
    '--right-gateway-link[]' \
    '--right-gateway-location-read[]' \
    '--right-gateway-settings-api-keys[]' \
    '--right-gateway-settings-basic[]' \
    '--right-gateway-settings-collaborators[]' \
    '--right-gateway-status-read[]' \
    '--right-gateway-traffic-down-write[]' \
    '--right-gateway-traffic-read[]' \
    '--right-organization-add-as-collaborator[]' \
    '--right-organization-all[]' \
    '--right-organization-applications-create[]' \
    '--right-organization-applications-list[]' \
    '--right-organization-clients-create[]' \
    '--right-organization-clients-list[]' \
    '--right-organization-delete[]' \
    '--right-organization-gateways-create[]' \
    '--right-organization-gateways-list[]' \
    '--right-organization-info[]' \
    '--right-organization-settings-api-keys[]' \
    '--right-organization-settings-basic[]' \
    '--right-organization-settings-members[]' \
    '--right-user-all[]' \
    '--right-user-applications-create[]' \
    '--right-user-applications-list[]' \
    '--right-user-authorized-clients[]' \
    '--right-user-clients-create[]' \
    '--right-user-clients-list[]' \
    '--right-user-delete[]' \
    '--right-user-gateways-create[]' \
    '--right-user-gateways-list[]' \
    '--right-user-info[]' \
    '--right-user-organizations-create[]' \
    '--right-user-organizations-list[]' \
    '--right-user-settings-api-keys[]' \
    '--right-user-settings-basic[]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    '--user-id[]:'
}

function _ttn-lw-cli_users_api-keys_delete {
  _arguments \
    '--api-key-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    '--user-id[]:'
}

function _ttn-lw-cli_users_api-keys_list {
  _arguments \
    '--limit[maximum number of results to get]:' \
    '--page[results page number]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    '--user-id[]:'
}

function _ttn-lw-cli_users_api-keys_update {
  _arguments \
    '--api-key-id[]:' \
    '--name[]:' \
    '--right-application-all[]' \
    '--right-application-delete[]' \
    '--right-application-devices-read[]' \
    '--right-application-devices-read-keys[]' \
    '--right-application-devices-write[]' \
    '--right-application-devices-write-keys[]' \
    '--right-application-info[]' \
    '--right-application-link[]' \
    '--right-application-settings-api-keys[]' \
    '--right-application-settings-basic[]' \
    '--right-application-settings-collaborators[]' \
    '--right-application-settings-packages[]' \
    '--right-application-traffic-down-write[]' \
    '--right-application-traffic-read[]' \
    '--right-application-traffic-up-write[]' \
    '--right-client-all[]' \
    '--right-gateway-all[]' \
    '--right-gateway-delete[]' \
    '--right-gateway-info[]' \
    '--right-gateway-link[]' \
    '--right-gateway-location-read[]' \
    '--right-gateway-settings-api-keys[]' \
    '--right-gateway-settings-basic[]' \
    '--right-gateway-settings-collaborators[]' \
    '--right-gateway-status-read[]' \
    '--right-gateway-traffic-down-write[]' \
    '--right-gateway-traffic-read[]' \
    '--right-organization-add-as-collaborator[]' \
    '--right-organization-all[]' \
    '--right-organization-applications-create[]' \
    '--right-organization-applications-list[]' \
    '--right-organization-clients-create[]' \
    '--right-organization-clients-list[]' \
    '--right-organization-delete[]' \
    '--right-organization-gateways-create[]' \
    '--right-organization-gateways-list[]' \
    '--right-organization-info[]' \
    '--right-organization-settings-api-keys[]' \
    '--right-organization-settings-basic[]' \
    '--right-organization-settings-members[]' \
    '--right-user-all[]' \
    '--right-user-applications-create[]' \
    '--right-user-applications-list[]' \
    '--right-user-authorized-clients[]' \
    '--right-user-clients-create[]' \
    '--right-user-clients-list[]' \
    '--right-user-delete[]' \
    '--right-user-gateways-create[]' \
    '--right-user-gateways-list[]' \
    '--right-user-info[]' \
    '--right-user-organizations-create[]' \
    '--right-user-organizations-list[]' \
    '--right-user-settings-api-keys[]' \
    '--right-user-settings-basic[]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    '--user-id[]:'
}


function _ttn-lw-cli_users_contact-info {
  local -a commands

  _arguments -C \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "add:"
      "list:"
      "remove:"
      "request-validation:Request validation for entity contact info"
      "validate:Validate contact info"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  add)
    _ttn-lw-cli_users_contact-info_add
    ;;
  list)
    _ttn-lw-cli_users_contact-info_list
    ;;
  remove)
    _ttn-lw-cli_users_contact-info_remove
    ;;
  request-validation)
    _ttn-lw-cli_users_contact-info_request-validation
    ;;
  validate)
    _ttn-lw-cli_users_contact-info_validate
    ;;
  esac
}

function _ttn-lw-cli_users_contact-info_add {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    '--user-id[]:'
}

function _ttn-lw-cli_users_contact-info_list {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    '--user-id[]:'
}

function _ttn-lw-cli_users_contact-info_remove {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    '--user-id[]:'
}

function _ttn-lw-cli_users_contact-info_request-validation {
  _arguments \
    '--contact-method[CONTACT_METHOD_EMAIL|CONTACT_METHOD_OTHER|CONTACT_METHOD_PHONE]:' \
    '--contact-type[CONTACT_TYPE_ABUSE|CONTACT_TYPE_BILLING|CONTACT_TYPE_OTHER|CONTACT_TYPE_TECHNICAL]:' \
    '--public[]' \
    '--validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--value[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    '--user-id[]:'
}

function _ttn-lw-cli_users_contact-info_validate {
  _arguments \
    '--reference[Reference of the requested validation]:' \
    '--token[Token that you received]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    '--user-id[]:'
}

function _ttn-lw-cli_users_create {
  _arguments \
    '--admin[]' \
    '*--attributes[key=value]:' \
    '--description[]:' \
    '--invitation-token[]:' \
    '--name[]:' \
    '--password[]:' \
    '--primary-email-address[]:' \
    '--primary-email-address-validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--profile-picture[upload the profile picture from this file]:' \
    '--require-password-update[]' \
    '--state[STATE_APPROVED|STATE_FLAGGED|STATE_REJECTED|STATE_REQUESTED|STATE_SUSPENDED]:' \
    '--temporary-password[]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_delete {
  _arguments \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_forgot-password {
  _arguments \
    '--email[]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_get {
  _arguments \
    '--admin[select the admin field]' \
    '--all[select all user fields]' \
    '--attributes[select the attributes field]' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--name[select the name field]' \
    '--password[select the password field]' \
    '--password-updated-at[select the password_updated_at field]' \
    '--primary-email-address[select the primary_email_address field]' \
    '--primary-email-address-validated-at[select the primary_email_address_validated_at field]' \
    '--profile-picture[select the profile_picture field]' \
    '--require-password-update[select the require_password_update field]' \
    '--state[select the state field]' \
    '--temporary-password[select the temporary_password field]' \
    '--temporary-password-created-at[select the temporary_password_created_at field]' \
    '--temporary-password-expires-at[select the temporary_password_expires_at field]' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_users_invitations {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create a user invitation"
      "delete:Delete a user invitation"
      "list:List user invitations"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _ttn-lw-cli_users_invitations_create
    ;;
  delete)
    _ttn-lw-cli_users_invitations_delete
    ;;
  list)
    _ttn-lw-cli_users_invitations_list
    ;;
  esac
}

function _ttn-lw-cli_users_invitations_create {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_invitations_delete {
  _arguments \
    '--email[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_invitations_list {
  _arguments \
    '--email[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_list {
  _arguments \
    '--admin[select the admin field]' \
    '--all[select all user fields]' \
    '--attributes[select the attributes field]' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--limit[maximum number of results to get]:' \
    '--name[select the name field]' \
    '--order[order by this field]:' \
    '--page[results page number]:' \
    '--password[select the password field]' \
    '--password-updated-at[select the password_updated_at field]' \
    '--primary-email-address[select the primary_email_address field]' \
    '--primary-email-address-validated-at[select the primary_email_address_validated_at field]' \
    '--profile-picture[select the profile_picture field]' \
    '--require-password-update[select the require_password_update field]' \
    '--state[select the state field]' \
    '--temporary-password[select the temporary_password field]' \
    '--temporary-password-created-at[select the temporary_password_created_at field]' \
    '--temporary-password-expires-at[select the temporary_password_expires_at field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_users_oauth {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "access-tokens:Manage OAuth tokens"
      "authorizations:Manage OAuth authorizations"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  access-tokens)
    _ttn-lw-cli_users_oauth_access-tokens
    ;;
  authorizations)
    _ttn-lw-cli_users_oauth_authorizations
    ;;
  esac
}


function _ttn-lw-cli_users_oauth_access-tokens {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete an OAuth access token"
      "list:List OAuth access tokens"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _ttn-lw-cli_users_oauth_access-tokens_delete
    ;;
  list)
    _ttn-lw-cli_users_oauth_access-tokens_list
    ;;
  esac
}

function _ttn-lw-cli_users_oauth_access-tokens_delete {
  _arguments \
    '--client-id[]:' \
    '--token-id[]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_oauth_access-tokens_list {
  _arguments \
    '--client-id[]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}


function _ttn-lw-cli_users_oauth_authorizations {
  local -a commands

  _arguments -C \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete an OAuth authorization and all access tokens"
      "list:List OAuth authorizations"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _ttn-lw-cli_users_oauth_authorizations_delete
    ;;
  list)
    _ttn-lw-cli_users_oauth_authorizations_list
    ;;
  esac
}

function _ttn-lw-cli_users_oauth_authorizations_delete {
  _arguments \
    '--client-id[]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_oauth_authorizations_list {
  _arguments \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_rights {
  _arguments \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_search {
  _arguments \
    '--admin[select the admin field]' \
    '--all[select all user fields]' \
    '--attributes[select the attributes field]' \
    '--attributes-contain[(key=value)]:' \
    '--contact-info[select the contact_info field]' \
    '--description[select the description field]' \
    '--description-contains[]:' \
    '--id-contains[]:' \
    '--limit[maximum number of results to get]:' \
    '--name[select the name field]' \
    '--name-contains[]:' \
    '--order[order by this field]:' \
    '--page[results page number]:' \
    '--password[select the password field]' \
    '--password-updated-at[select the password_updated_at field]' \
    '--primary-email-address[select the primary_email_address field]' \
    '--primary-email-address-validated-at[select the primary_email_address_validated_at field]' \
    '--profile-picture[select the profile_picture field]' \
    '--require-password-update[select the require_password_update field]' \
    '--state[select the state field]' \
    '--temporary-password[select the temporary_password field]' \
    '--temporary-password-created-at[select the temporary_password_created_at field]' \
    '--temporary-password-expires-at[select the temporary_password_expires_at field]' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_update {
  _arguments \
    '--admin[]' \
    '*--attributes[key=value]:' \
    '--description[]:' \
    '--name[]:' \
    '--password[]:' \
    '--primary-email-address[]:' \
    '--primary-email-address-validated-at[(YYYY-MM-DDTHH:MM:SSZ)]:' \
    '--profile-picture[upload the profile picture from this file]:' \
    '--require-password-update[]' \
    '--state[STATE_APPROVED|STATE_FLAGGED|STATE_REJECTED|STATE_REQUESTED|STATE_SUSPENDED]:' \
    '--temporary-password[]:' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_users_update-password {
  _arguments \
    '--new[]:' \
    '--old[]:' \
    '--revoke-all-access[revoke all sessions and access tokens after the password is updated]' \
    '--user-id[]:' \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

function _ttn-lw-cli_version {
  _arguments \
    '--allow-unknown-hosts[Allow sending credentials to unknown hosts]' \
    '--application-server-enabled[Application Server enabled]' \
    '--application-server-grpc-address[Application Server address]:' \
    '--ca[CA certificate file]:' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--credentials-id[Credentials ID (if using multiple configurations)]:' \
    '--device-claiming-server-grpc-address[Device Claiming Server address]:' \
    '--device-template-converter-grpc-address[Device Template Converter address]:' \
    '--dump-requests[When log level is set to debug, also dump request payload as JSON]' \
    '--gateway-server-enabled[Gateway Server enabled]' \
    '--gateway-server-grpc-address[Gateway Server address]:' \
    '--identity-server-grpc-address[Identity Server address]:' \
    '--input-format[Input format]:' \
    '--insecure[Connect without TLS]' \
    '--join-server-enabled[Join Server enabled]' \
    '--join-server-grpc-address[Join Server address]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--network-server-enabled[Network Server enabled]' \
    '--network-server-grpc-address[Network Server address]:' \
    '--oauth-server-address[OAuth Server address]:' \
    '--output-format[Output format]:' \
    '--qr-code-generator-grpc-address[QR Code Generator address]:'
}

