#compdef _ttn-lw-stack ttn-lw-stack


function _ttn-lw-stack {
  local -a commands

  _arguments -C \
    '--as.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--as.interop.blob.bucket[Bucket to use]:' \
    '--as.interop.blob.path[Path to use]:' \
    '--as.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--as.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--as.interop.id[AS-ID used for interoperability]:' \
    '--as.interop.url[URL, which contains interoperability client configuration]:' \
    '--as.link-mode[Mode to link applications to their Network Server (all, explicit)]:' \
    '--as.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--as.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--as.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--as.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--as.webhooks.downlink.public-address[Public address of the HTTP webhooks frontend]:' \
    '--as.webhooks.downlink.public-tls-address[Public address of the HTTPS webhooks frontend]:' \
    '--as.webhooks.queue-size[Number of requests to queue]:' \
    '--as.webhooks.target[Target of the integration (direct)]:' \
    '--as.webhooks.templates.directory[Retrieve the webhook templates from the filesystem]:' \
    '--as.webhooks.templates.logo-base-url[The base URL for the logo storage]:' \
    '--as.webhooks.templates.url[Retrieve the webhook templates from a web server]:' \
    '--as.webhooks.timeout[Wait timeout of the target to process the request]:' \
    '--as.webhooks.workers[Number of workers to process requests]:' \
    '--blob.aws.access-key-id[Access key ID]:' \
    '--blob.aws.endpoint[S3 endpoint]:' \
    '--blob.aws.region[S3 region]:' \
    '--blob.aws.secret-access-key[Secret access key]:' \
    '--blob.aws.session-token[Session token]:' \
    '--blob.gcp.credentials[JSON data of the GCP credentials, if not using JSON file]:' \
    '--blob.gcp.credentials-file[Path to the GCP credentials JSON file]:' \
    '--blob.local.directory[OS filesystem directory, which contains buckets]:' \
    '--blob.provider[Blob store provider (local, aws, gcp)]:' \
    '--cache.redis.address[Address of the Redis server]:' \
    '--cache.redis.database[Redis database to use]:' \
    '*--cache.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--cache.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--cache.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--cache.redis.namespace[Namespace for Redis keys]:' \
    '--cache.redis.password[Password of the Redis server]:' \
    '--cache.redis.pool-size[The maximum number of database connections]:' \
    '--cache.service[Service used for caching (redis)]:' \
    '--cluster.address[Address to use for cluster communication]:' \
    '--cluster.application-server[Address for the Application Server]:' \
    '--cluster.crypto-server[Address for the Crypto Server]:' \
    '--cluster.gateway-server[Address for the Gateway Server]:' \
    '--cluster.identity-server[Address for the Identity Server]:' \
    '*--cluster.join[Addresses of cluster peers to join]:' \
    '--cluster.join-server[Address for the Join Server]:' \
    '*--cluster.keys[Keys used to communicate between components of the cluster. The first one will be used by the cluster to identify itself]:' \
    '--cluster.name[Name of the current cluster peer (default: $HOSTNAME)]:' \
    '--cluster.network-server[Address for the Network Server]:' \
    '--cluster.tls[Do cluster gRPC over TLS]' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--console.mount[Path on the server where the Console will be served]:' \
    '--console.oauth.authorize-url[The OAuth Authorize URL]:' \
    '--console.oauth.client-id[The OAuth client ID]:' \
    '--console.oauth.client-secret[The OAuth client secret]:' \
    '--console.oauth.logout-url[The OAuth Logout URL]:' \
    '--console.oauth.token-url[The OAuth Token Exchange URL]:' \
    '--console.ui.as.base-url[Base URL to the HTTP API]:' \
    '--console.ui.as.enabled[Enable this API]' \
    '--console.ui.assets-base-url[The base URL to the page assets]:' \
    '--console.ui.branding-base-url[The base URL to the branding assets]:' \
    '--console.ui.canonical-url[The page canonical URL]:' \
    '--console.ui.csrftoken[]:' \
    '*--console.ui.css-file[The names of the CSS files]:' \
    '--console.ui.descriptions[The page description]:' \
    '--console.ui.documentation-base-url[The base URL for generating documentation links]:' \
    '--console.ui.edtc.base-url[Base URL to the HTTP API]:' \
    '--console.ui.edtc.enabled[Enable this API]' \
    '--console.ui.gs.base-url[Base URL to the HTTP API]:' \
    '--console.ui.gs.enabled[Enable this API]' \
    '--console.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--console.ui.is.base-url[Base URL to the HTTP API]:' \
    '--console.ui.is.enabled[Enable this API]' \
    '*--console.ui.js-file[The names of the JS files]:' \
    '--console.ui.js.base-url[Base URL to the HTTP API]:' \
    '--console.ui.js.enabled[Enable this API]' \
    '--console.ui.language[The page language]:' \
    '--console.ui.ns.base-url[Base URL to the HTTP API]:' \
    '--console.ui.ns.enabled[Enable this API]' \
    '--console.ui.qrg.base-url[Base URL to the HTTP API]:' \
    '--console.ui.qrg.enabled[Enable this API]' \
    '--console.ui.sentry-dsn[The Sentry DSN]:' \
    '--console.ui.site-name[The site name]:' \
    '--console.ui.sub-title[The page sub-title]:' \
    '--console.ui.support-link[The URI that the support button will point to]:' \
    '--console.ui.theme-color[The page theme color]:' \
    '--console.ui.title[The page title]:' \
    '--device-repository.blob.bucket[Bucket to use]:' \
    '--device-repository.blob.path[Path to use]:' \
    '--device-repository.config-source[Source of the device repository (static, directory, url, blob)]:' \
    '--device-repository.directory[OS filesystem directory, which contains device repository]:' \
    '--device-repository.url[URL, which contains device repository]:' \
    '*--dtc.enabled[Enabled converters]:' \
    '--events.backend[Backend to use for events (internal, redis, cloud)]:' \
    '--events.cloud.publish-url[URL for the topic to send events]:' \
    '--events.cloud.subscribe-url[URL for the subscription to receiving events]:' \
    '--events.redis.address[Address of the Redis server]:' \
    '--events.redis.database[Redis database to use]:' \
    '*--events.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--events.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--events.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--events.redis.namespace[Namespace for Redis keys]:' \
    '--events.redis.password[Password of the Redis server]:' \
    '--events.redis.pool-size[The maximum number of database connections]:' \
    '--frequency-plans.blob.bucket[Bucket to use]:' \
    '--frequency-plans.blob.path[Path to use]:' \
    '--frequency-plans.config-source[Source of the frequency plans (static, directory, url, blob)]:' \
    '--frequency-plans.directory[OS filesystem directory, which contains frequency plans]:' \
    '--frequency-plans.url[URL, which contains frequency plans]:' \
    '--gcs.basic-station.allow-cups-uri-update[Allow CUPS URI updates]' \
    '--gcs.basic-station.default.lns-uri[The default LNS URI that the gateways should use]:' \
    '--gcs.basic-station.owner-for-unknown.account-type[Type of account to register unknown gateways to (user|organization)]:' \
    '--gcs.basic-station.owner-for-unknown.api-key[API Key to use for unknown gateway registration]:' \
    '--gcs.basic-station.owner-for-unknown.id[ID of the account to register unknown gateways to]:' \
    '--gcs.basic-station.require-explicit-enable[Require gateways to explicitly enable CUPS]' \
    '--gcs.require-auth[Require authentication for the HTTP endpoints.]' \
    '--gcs.the-things-gateway.default.firmware-url[The default URL to the firmware storage]:' \
    '--gcs.the-things-gateway.default.mqtt-server[The default MQTT server that the gateways should use]:' \
    '--gcs.the-things-gateway.default.update-channel[The default update channel that the gateways should use]:' \
    '--grpc.allow-insecure-for-credentials[Allow transmission of credentials over insecure transport]' \
    '--grpc.listen[Address for the TCP gRPC server to listen on]:' \
    '--grpc.listen-tls[Address for the TLS gRPC server to listen on]:' \
    '*--grpc.log-ignore-methods[List of paths for which successful requests will not be logged]:' \
    '--gs.basic-station.fallback-frequency-plan-id[Fallback frequency plan ID for non-registered gateways]:' \
    '--gs.basic-station.listen[Address for the Basic Station frontend to listen on]:' \
    '--gs.basic-station.listen-tls[Address for the Basic Station frontend to listen on (with TLS)]:' \
    '--gs.basic-station.use-traffic-tls-address[Use WSS for the traffic address regardless of the TLS setting]' \
    '--gs.basic-station.ws-ping-interval[Interval to send WS ping messages]:' \
    '*--gs.forward[Forward the DevAddr prefixes to the specified hosts]:' \
    '--gs.mqtt-v2.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt-v2.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt-v2.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt-v2.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.require-registered-gateways[Require the gateways to be registered in the Identity Server]' \
    '--gs.udp.addr-change-block[Time to block traffic when a gateway'\''s address changes]:' \
    '--gs.udp.connection-expires[Time after which a connection of a gateway expires]:' \
    '--gs.udp.downlink-path-expires[Time after which a downlink path to a gateway expires]:' \
    '*--gs.udp.listeners[Listen addresses with (optional) fallback frequency plan ID for non-registered gateways]:' \
    '--gs.udp.packet-buffer[Buffer size of unhandled packets]:' \
    '--gs.udp.packet-handlers[Number of concurrent packet handlers]:' \
    '--gs.udp.rate-limiting.enable[Enable rate limiting for gateways]' \
    '--gs.udp.rate-limiting.messages[Number of past messages to check timestamp for]:' \
    '--gs.udp.rate-limiting.threshold[Filter packet if timestamp is not newer than the older timestamps of the previous messages by this threshold]:' \
    '--gs.udp.schedule-late-time[Time in advance to send downlink to the gateway when scheduling late]:' \
    '--gs.update-connection-stats-debounce-time[Time before repeated refresh of the gateway connection stats]:' \
    '--gs.update-gateway-location-debounce-time[Debounce time for gateway location updates from status messages]:' \
    '--http.cookie.block-key[Key for cookie contents encryption (16, 24 or 32 bytes)]:' \
    '--http.cookie.hash-key[Key for cookie contents verification (32 or 64 bytes)]:' \
    '--http.health.enable[Enable health check endpoint on HTTP server]' \
    '--http.health.password[Password to protect health endpoint (username is health)]:' \
    '--http.listen[Address for the HTTP server to listen on]:' \
    '--http.listen-tls[Address for the HTTPS server to listen on]:' \
    '*--http.log-ignore-paths[List of paths for which successful requests will not be logged]:' \
    '--http.metrics.enable[Enable metrics endpoint on HTTP server]' \
    '--http.metrics.password[Password to protect metrics endpoint (username is metrics)]:' \
    '--http.pprof.enable[Enable pprof endpoint on HTTP server]' \
    '--http.pprof.password[Password to protect pprof endpoint (username is pprof)]:' \
    '--http.redirect-to-host[Redirect all requests to one host]:' \
    '--http.redirect-to-tls[Redirect HTTP requests to HTTPS]' \
    '--http.static.mount[Path on the server where static assets will be served]:' \
    '*--http.static.search-path[List of paths for finding the directory to serve static assets from]:' \
    '*--http.trusted-proxies[CIDRs of trusted reverse proxies]:' \
    '--interop.listen-tls[Address for the interop server to listen on]:' \
    '--interop.sender-client-ca.blob.bucket[Bucket to use]:' \
    '--interop.sender-client-ca.blob.path[Path to use]:' \
    '--interop.sender-client-ca.directory[OS filesystem directory, which contains sender client CA configuration]:' \
    '--interop.sender-client-ca.source[Source of the sender client CA configuration (static, directory, url, blob)]:' \
    '--interop.sender-client-ca.url[URL, which contains sender client CA configuration]:' \
    '--is.auth-cache.membership-ttl[TTL of membership caches]:' \
    '--is.database-uri[Database connection URI]:' \
    '--is.email.network.console-url[The URL of the Console]:' \
    '--is.email.network.identity-server-url[The URL of the Identity Server]:' \
    '--is.email.network.name[The name of the network]:' \
    '--is.email.provider[Email provider to use]:' \
    '--is.email.sender-address[The address of the sender]:' \
    '--is.email.sender-name[The name of the sender]:' \
    '--is.email.sendgrid.api-key[The SendGrid API key to use]:' \
    '--is.email.sendgrid.sandbox[Use SendGrid sandbox mode for testing]' \
    '--is.email.smtp.address[SMTP server address]:' \
    '--is.email.smtp.connections[Maximum number of connections to the SMTP server]:' \
    '--is.email.smtp.password[Password to authenticate with]:' \
    '--is.email.smtp.username[Username to authenticate with]:' \
    '--is.email.templates.blob.bucket[Bucket to use]:' \
    '--is.email.templates.blob.path[Path to use]:' \
    '--is.email.templates.directory[Retrieve the email templates from the filesystem]:' \
    '*--is.email.templates.includes[The email templates that will be preloaded on startup]:' \
    '--is.email.templates.source[Source of the email template files (static, directory, url, blob)]:' \
    '--is.email.templates.url[Retrieve the email templates from a web server]:' \
    '--is.end-device-picture.bucket[Bucket used for storing end device pictures]:' \
    '--is.end-device-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.end-device-picture.disable-upload[Disable uploading end device pictures]' \
    '--is.oauth.mount[Path on the server where the OAuth server will be served]:' \
    '--is.oauth.ui.assets-base-url[The base URL to the page assets]:' \
    '--is.oauth.ui.branding-base-url[The base URL to the branding assets]:' \
    '--is.oauth.ui.canonical-url[The page canonical URL]:' \
    '--is.oauth.ui.csrftoken[]:' \
    '*--is.oauth.ui.css-file[The names of the CSS files]:' \
    '--is.oauth.ui.descriptions[The page description]:' \
    '--is.oauth.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--is.oauth.ui.is.base-url[Base URL to the HTTP API]:' \
    '--is.oauth.ui.is.enabled[Enable this API]' \
    '*--is.oauth.ui.js-file[The names of the JS files]:' \
    '--is.oauth.ui.language[The page language]:' \
    '--is.oauth.ui.sentry-dsn[The Sentry DSN]:' \
    '--is.oauth.ui.site-name[The site name]:' \
    '--is.oauth.ui.sub-title[The page sub-title]:' \
    '--is.oauth.ui.theme-color[The page theme color]:' \
    '--is.oauth.ui.title[The page title]:' \
    '--is.profile-picture.bucket[Bucket used for storing profile pictures]:' \
    '--is.profile-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.profile-picture.disable-upload[Disable uploading profile pictures]' \
    '--is.profile-picture.use-gravatar[Use Gravatar fallback for users without profile picture]' \
    '--is.user-registration.admin-approval.required[Require admin approval for new users]' \
    '--is.user-registration.contact-info-validation.required[Require contact info validation for new users]' \
    '--is.user-registration.invitation.required[Require invitations for new users]' \
    '--is.user-registration.invitation.token-ttl[TTL of user invitation tokens]:' \
    '--is.user-registration.password-requirements.max-length[Maximum password length]:' \
    '--is.user-registration.password-requirements.min-digits[Minimum number of digits]:' \
    '--is.user-registration.password-requirements.min-length[Minimum password length]:' \
    '--is.user-registration.password-requirements.min-special[Minimum number of special characters]:' \
    '--is.user-registration.password-requirements.min-uppercase[Minimum number of uppercase letters]:' \
    '--is.user-rights.create-applications[Allow non-admin users to create applications in their user account]' \
    '--is.user-rights.create-clients[Allow non-admin users to create OAuth clients in their user account]' \
    '--is.user-rights.create-gateways[Allow non-admin users to create gateways in their user account]' \
    '--is.user-rights.create-organizations[Allow non-admin users to create organizations in their user account]' \
    '--js.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '*--js.join-eui-prefix[JoinEUI prefixes handled by this JS]:' \
    '--key-vault.cache.size[Cache size. Caching is disabled if size is 0]:' \
    '--key-vault.cache.ttl[Cache elements time to live. No expiration mechanism is used if TTL is 0]:' \
    '--key-vault.provider[Provider (static)]:' \
    '*--key-vault.static[]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--ns.application-uplink-queue.buffer-size[]:' \
    '--ns.cooldown-window[Time window starting right after deduplication window, during which, duplicate messages are discarded]:' \
    '--ns.deduplication-window[Time window during which, duplicate messages are collected for metadata]:' \
    '--ns.default-mac-settings.adr-margin[The default margin Network Server should add in ADR requests if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-b-timeout[Deadline for a device in class B mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-c-timeout[Deadline for a device in class C mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.desired-rx1-delay[Desired Rx1Delay value Network Server should use if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-count-periodicity[Number of uplink messages after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-time-periodicity[The interval after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '*--ns.dev-addr-prefixes[Device address prefixes of this Network Server]:' \
    '--ns.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--ns.downlink-priorities.join-accept[Priority for join-accept messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.mac-commands[Priority for messages carrying MAC commands (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.max-application-downlink[Maximum priority for application downlink messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.interop.blob.bucket[Bucket to use]:' \
    '--ns.interop.blob.path[Path to use]:' \
    '--ns.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--ns.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--ns.interop.url[URL, which contains interoperability client configuration]:' \
    '--ns.net-id[NetID of this Network Server]:' \
    '--pba.cluster-id[Cluster ID uniquely identifying this cluster within a NetID and tenant]:' \
    '--pba.data-plane-address[Address of the Packet Broker Data Plane]:' \
    '--pba.forwarder.enable[Enable Forwarder role]' \
    '--pba.forwarder.token-key[AES 128 or 256-bit key for encrypting tokens]:' \
    '--pba.forwarder.worker-pool.limit[Limit of active workers]:' \
    '--pba.home-network.blacklist-forwarder[Blacklist traffic from Forwarder to avoid traffic loops]' \
    '*--pba.home-network.dev-addr-prefixes[DevAddr prefixes to subscribe to]:' \
    '--pba.home-network.enable[Enable Home Network role]' \
    '--pba.home-network.worker-pool.limit[Limit of active workers]:' \
    '--pba.net-id[LoRa Alliance NetID]:' \
    '--pba.tenant-id[Tenant ID within the NetID]:' \
    '--pba.tls.certificate[Location of TLS certificate]:' \
    '--pba.tls.key[Location of TLS private key]:' \
    '--pba.tls.key-vault.id[ID of the certificate]:' \
    '--pba.tls.source[Source of the TLS certificate (file, key-vault)]:' \
    '--redis.address[Address of the Redis server]:' \
    '--redis.database[Redis database to use]:' \
    '*--redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--redis.failover.master-name[Redis Sentinel master name]:' \
    '*--redis.namespace[Namespace for Redis keys]:' \
    '--redis.password[Password of the Redis server]:' \
    '--redis.pool-size[The maximum number of database connections]:' \
    '--rights.ttl[Validity of Identity Server responses]:' \
    '--sentry.dsn[Sentry Data Source Name]:' \
    '--tls.acme.default-host[Default host to assume for clients without SNI]:' \
    '--tls.acme.dir[Location of ACME storage directory]:' \
    '--tls.acme.email[Email address to register with the ACME account]:' \
    '--tls.acme.enable[Enable automated certificate management (ACME). This setting is deprecated; set the TLS config source to acme instead]' \
    '--tls.acme.endpoint[ACME endpoint]:' \
    '*--tls.acme.hosts[Hosts to enable automatic certificates for]:' \
    '--tls.certificate[Location of TLS certificate]:' \
    '--tls.insecure-skip-verify[Skip verification of certificate chains (insecure)]' \
    '--tls.key[Location of TLS private key]:' \
    '--tls.key-vault.id[ID of the certificate]:' \
    '--tls.root-ca[Location of TLS root CA certificate (optional)]:' \
    '--tls.source[Source of the TLS certificate (file, acme, key-vault)]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "config:View the current configuration"
      "help:Help about any command"
      "is-db:Manage the Identity Server database"
      "start:Start The Things Stack"
      "version:Print version information"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  config)
    _ttn-lw-stack_config
    ;;
  help)
    _ttn-lw-stack_help
    ;;
  is-db)
    _ttn-lw-stack_is-db
    ;;
  start)
    _ttn-lw-stack_start
    ;;
  version)
    _ttn-lw-stack_version
    ;;
  esac
}

function _ttn-lw-stack_config {
  _arguments \
    '--env[print as environment]' \
    '--yml[print as yml]' \
    '--as.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--as.interop.blob.bucket[Bucket to use]:' \
    '--as.interop.blob.path[Path to use]:' \
    '--as.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--as.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--as.interop.id[AS-ID used for interoperability]:' \
    '--as.interop.url[URL, which contains interoperability client configuration]:' \
    '--as.link-mode[Mode to link applications to their Network Server (all, explicit)]:' \
    '--as.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--as.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--as.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--as.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--as.webhooks.downlink.public-address[Public address of the HTTP webhooks frontend]:' \
    '--as.webhooks.downlink.public-tls-address[Public address of the HTTPS webhooks frontend]:' \
    '--as.webhooks.queue-size[Number of requests to queue]:' \
    '--as.webhooks.target[Target of the integration (direct)]:' \
    '--as.webhooks.templates.directory[Retrieve the webhook templates from the filesystem]:' \
    '--as.webhooks.templates.logo-base-url[The base URL for the logo storage]:' \
    '--as.webhooks.templates.url[Retrieve the webhook templates from a web server]:' \
    '--as.webhooks.timeout[Wait timeout of the target to process the request]:' \
    '--as.webhooks.workers[Number of workers to process requests]:' \
    '--blob.aws.access-key-id[Access key ID]:' \
    '--blob.aws.endpoint[S3 endpoint]:' \
    '--blob.aws.region[S3 region]:' \
    '--blob.aws.secret-access-key[Secret access key]:' \
    '--blob.aws.session-token[Session token]:' \
    '--blob.gcp.credentials[JSON data of the GCP credentials, if not using JSON file]:' \
    '--blob.gcp.credentials-file[Path to the GCP credentials JSON file]:' \
    '--blob.local.directory[OS filesystem directory, which contains buckets]:' \
    '--blob.provider[Blob store provider (local, aws, gcp)]:' \
    '--cache.redis.address[Address of the Redis server]:' \
    '--cache.redis.database[Redis database to use]:' \
    '*--cache.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--cache.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--cache.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--cache.redis.namespace[Namespace for Redis keys]:' \
    '--cache.redis.password[Password of the Redis server]:' \
    '--cache.redis.pool-size[The maximum number of database connections]:' \
    '--cache.service[Service used for caching (redis)]:' \
    '--cluster.address[Address to use for cluster communication]:' \
    '--cluster.application-server[Address for the Application Server]:' \
    '--cluster.crypto-server[Address for the Crypto Server]:' \
    '--cluster.gateway-server[Address for the Gateway Server]:' \
    '--cluster.identity-server[Address for the Identity Server]:' \
    '*--cluster.join[Addresses of cluster peers to join]:' \
    '--cluster.join-server[Address for the Join Server]:' \
    '*--cluster.keys[Keys used to communicate between components of the cluster. The first one will be used by the cluster to identify itself]:' \
    '--cluster.name[Name of the current cluster peer (default: $HOSTNAME)]:' \
    '--cluster.network-server[Address for the Network Server]:' \
    '--cluster.tls[Do cluster gRPC over TLS]' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--console.mount[Path on the server where the Console will be served]:' \
    '--console.oauth.authorize-url[The OAuth Authorize URL]:' \
    '--console.oauth.client-id[The OAuth client ID]:' \
    '--console.oauth.client-secret[The OAuth client secret]:' \
    '--console.oauth.logout-url[The OAuth Logout URL]:' \
    '--console.oauth.token-url[The OAuth Token Exchange URL]:' \
    '--console.ui.as.base-url[Base URL to the HTTP API]:' \
    '--console.ui.as.enabled[Enable this API]' \
    '--console.ui.assets-base-url[The base URL to the page assets]:' \
    '--console.ui.branding-base-url[The base URL to the branding assets]:' \
    '--console.ui.canonical-url[The page canonical URL]:' \
    '--console.ui.csrftoken[]:' \
    '*--console.ui.css-file[The names of the CSS files]:' \
    '--console.ui.descriptions[The page description]:' \
    '--console.ui.documentation-base-url[The base URL for generating documentation links]:' \
    '--console.ui.edtc.base-url[Base URL to the HTTP API]:' \
    '--console.ui.edtc.enabled[Enable this API]' \
    '--console.ui.gs.base-url[Base URL to the HTTP API]:' \
    '--console.ui.gs.enabled[Enable this API]' \
    '--console.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--console.ui.is.base-url[Base URL to the HTTP API]:' \
    '--console.ui.is.enabled[Enable this API]' \
    '*--console.ui.js-file[The names of the JS files]:' \
    '--console.ui.js.base-url[Base URL to the HTTP API]:' \
    '--console.ui.js.enabled[Enable this API]' \
    '--console.ui.language[The page language]:' \
    '--console.ui.ns.base-url[Base URL to the HTTP API]:' \
    '--console.ui.ns.enabled[Enable this API]' \
    '--console.ui.qrg.base-url[Base URL to the HTTP API]:' \
    '--console.ui.qrg.enabled[Enable this API]' \
    '--console.ui.sentry-dsn[The Sentry DSN]:' \
    '--console.ui.site-name[The site name]:' \
    '--console.ui.sub-title[The page sub-title]:' \
    '--console.ui.support-link[The URI that the support button will point to]:' \
    '--console.ui.theme-color[The page theme color]:' \
    '--console.ui.title[The page title]:' \
    '--device-repository.blob.bucket[Bucket to use]:' \
    '--device-repository.blob.path[Path to use]:' \
    '--device-repository.config-source[Source of the device repository (static, directory, url, blob)]:' \
    '--device-repository.directory[OS filesystem directory, which contains device repository]:' \
    '--device-repository.url[URL, which contains device repository]:' \
    '*--dtc.enabled[Enabled converters]:' \
    '--events.backend[Backend to use for events (internal, redis, cloud)]:' \
    '--events.cloud.publish-url[URL for the topic to send events]:' \
    '--events.cloud.subscribe-url[URL for the subscription to receiving events]:' \
    '--events.redis.address[Address of the Redis server]:' \
    '--events.redis.database[Redis database to use]:' \
    '*--events.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--events.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--events.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--events.redis.namespace[Namespace for Redis keys]:' \
    '--events.redis.password[Password of the Redis server]:' \
    '--events.redis.pool-size[The maximum number of database connections]:' \
    '--frequency-plans.blob.bucket[Bucket to use]:' \
    '--frequency-plans.blob.path[Path to use]:' \
    '--frequency-plans.config-source[Source of the frequency plans (static, directory, url, blob)]:' \
    '--frequency-plans.directory[OS filesystem directory, which contains frequency plans]:' \
    '--frequency-plans.url[URL, which contains frequency plans]:' \
    '--gcs.basic-station.allow-cups-uri-update[Allow CUPS URI updates]' \
    '--gcs.basic-station.default.lns-uri[The default LNS URI that the gateways should use]:' \
    '--gcs.basic-station.owner-for-unknown.account-type[Type of account to register unknown gateways to (user|organization)]:' \
    '--gcs.basic-station.owner-for-unknown.api-key[API Key to use for unknown gateway registration]:' \
    '--gcs.basic-station.owner-for-unknown.id[ID of the account to register unknown gateways to]:' \
    '--gcs.basic-station.require-explicit-enable[Require gateways to explicitly enable CUPS]' \
    '--gcs.require-auth[Require authentication for the HTTP endpoints.]' \
    '--gcs.the-things-gateway.default.firmware-url[The default URL to the firmware storage]:' \
    '--gcs.the-things-gateway.default.mqtt-server[The default MQTT server that the gateways should use]:' \
    '--gcs.the-things-gateway.default.update-channel[The default update channel that the gateways should use]:' \
    '--grpc.allow-insecure-for-credentials[Allow transmission of credentials over insecure transport]' \
    '--grpc.listen[Address for the TCP gRPC server to listen on]:' \
    '--grpc.listen-tls[Address for the TLS gRPC server to listen on]:' \
    '*--grpc.log-ignore-methods[List of paths for which successful requests will not be logged]:' \
    '--gs.basic-station.fallback-frequency-plan-id[Fallback frequency plan ID for non-registered gateways]:' \
    '--gs.basic-station.listen[Address for the Basic Station frontend to listen on]:' \
    '--gs.basic-station.listen-tls[Address for the Basic Station frontend to listen on (with TLS)]:' \
    '--gs.basic-station.use-traffic-tls-address[Use WSS for the traffic address regardless of the TLS setting]' \
    '--gs.basic-station.ws-ping-interval[Interval to send WS ping messages]:' \
    '*--gs.forward[Forward the DevAddr prefixes to the specified hosts]:' \
    '--gs.mqtt-v2.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt-v2.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt-v2.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt-v2.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.require-registered-gateways[Require the gateways to be registered in the Identity Server]' \
    '--gs.udp.addr-change-block[Time to block traffic when a gateway'\''s address changes]:' \
    '--gs.udp.connection-expires[Time after which a connection of a gateway expires]:' \
    '--gs.udp.downlink-path-expires[Time after which a downlink path to a gateway expires]:' \
    '*--gs.udp.listeners[Listen addresses with (optional) fallback frequency plan ID for non-registered gateways]:' \
    '--gs.udp.packet-buffer[Buffer size of unhandled packets]:' \
    '--gs.udp.packet-handlers[Number of concurrent packet handlers]:' \
    '--gs.udp.rate-limiting.enable[Enable rate limiting for gateways]' \
    '--gs.udp.rate-limiting.messages[Number of past messages to check timestamp for]:' \
    '--gs.udp.rate-limiting.threshold[Filter packet if timestamp is not newer than the older timestamps of the previous messages by this threshold]:' \
    '--gs.udp.schedule-late-time[Time in advance to send downlink to the gateway when scheduling late]:' \
    '--gs.update-connection-stats-debounce-time[Time before repeated refresh of the gateway connection stats]:' \
    '--gs.update-gateway-location-debounce-time[Debounce time for gateway location updates from status messages]:' \
    '--http.cookie.block-key[Key for cookie contents encryption (16, 24 or 32 bytes)]:' \
    '--http.cookie.hash-key[Key for cookie contents verification (32 or 64 bytes)]:' \
    '--http.health.enable[Enable health check endpoint on HTTP server]' \
    '--http.health.password[Password to protect health endpoint (username is health)]:' \
    '--http.listen[Address for the HTTP server to listen on]:' \
    '--http.listen-tls[Address for the HTTPS server to listen on]:' \
    '*--http.log-ignore-paths[List of paths for which successful requests will not be logged]:' \
    '--http.metrics.enable[Enable metrics endpoint on HTTP server]' \
    '--http.metrics.password[Password to protect metrics endpoint (username is metrics)]:' \
    '--http.pprof.enable[Enable pprof endpoint on HTTP server]' \
    '--http.pprof.password[Password to protect pprof endpoint (username is pprof)]:' \
    '--http.redirect-to-host[Redirect all requests to one host]:' \
    '--http.redirect-to-tls[Redirect HTTP requests to HTTPS]' \
    '--http.static.mount[Path on the server where static assets will be served]:' \
    '*--http.static.search-path[List of paths for finding the directory to serve static assets from]:' \
    '*--http.trusted-proxies[CIDRs of trusted reverse proxies]:' \
    '--interop.listen-tls[Address for the interop server to listen on]:' \
    '--interop.sender-client-ca.blob.bucket[Bucket to use]:' \
    '--interop.sender-client-ca.blob.path[Path to use]:' \
    '--interop.sender-client-ca.directory[OS filesystem directory, which contains sender client CA configuration]:' \
    '--interop.sender-client-ca.source[Source of the sender client CA configuration (static, directory, url, blob)]:' \
    '--interop.sender-client-ca.url[URL, which contains sender client CA configuration]:' \
    '--is.auth-cache.membership-ttl[TTL of membership caches]:' \
    '--is.database-uri[Database connection URI]:' \
    '--is.email.network.console-url[The URL of the Console]:' \
    '--is.email.network.identity-server-url[The URL of the Identity Server]:' \
    '--is.email.network.name[The name of the network]:' \
    '--is.email.provider[Email provider to use]:' \
    '--is.email.sender-address[The address of the sender]:' \
    '--is.email.sender-name[The name of the sender]:' \
    '--is.email.sendgrid.api-key[The SendGrid API key to use]:' \
    '--is.email.sendgrid.sandbox[Use SendGrid sandbox mode for testing]' \
    '--is.email.smtp.address[SMTP server address]:' \
    '--is.email.smtp.connections[Maximum number of connections to the SMTP server]:' \
    '--is.email.smtp.password[Password to authenticate with]:' \
    '--is.email.smtp.username[Username to authenticate with]:' \
    '--is.email.templates.blob.bucket[Bucket to use]:' \
    '--is.email.templates.blob.path[Path to use]:' \
    '--is.email.templates.directory[Retrieve the email templates from the filesystem]:' \
    '*--is.email.templates.includes[The email templates that will be preloaded on startup]:' \
    '--is.email.templates.source[Source of the email template files (static, directory, url, blob)]:' \
    '--is.email.templates.url[Retrieve the email templates from a web server]:' \
    '--is.end-device-picture.bucket[Bucket used for storing end device pictures]:' \
    '--is.end-device-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.end-device-picture.disable-upload[Disable uploading end device pictures]' \
    '--is.oauth.mount[Path on the server where the OAuth server will be served]:' \
    '--is.oauth.ui.assets-base-url[The base URL to the page assets]:' \
    '--is.oauth.ui.branding-base-url[The base URL to the branding assets]:' \
    '--is.oauth.ui.canonical-url[The page canonical URL]:' \
    '--is.oauth.ui.csrftoken[]:' \
    '*--is.oauth.ui.css-file[The names of the CSS files]:' \
    '--is.oauth.ui.descriptions[The page description]:' \
    '--is.oauth.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--is.oauth.ui.is.base-url[Base URL to the HTTP API]:' \
    '--is.oauth.ui.is.enabled[Enable this API]' \
    '*--is.oauth.ui.js-file[The names of the JS files]:' \
    '--is.oauth.ui.language[The page language]:' \
    '--is.oauth.ui.sentry-dsn[The Sentry DSN]:' \
    '--is.oauth.ui.site-name[The site name]:' \
    '--is.oauth.ui.sub-title[The page sub-title]:' \
    '--is.oauth.ui.theme-color[The page theme color]:' \
    '--is.oauth.ui.title[The page title]:' \
    '--is.profile-picture.bucket[Bucket used for storing profile pictures]:' \
    '--is.profile-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.profile-picture.disable-upload[Disable uploading profile pictures]' \
    '--is.profile-picture.use-gravatar[Use Gravatar fallback for users without profile picture]' \
    '--is.user-registration.admin-approval.required[Require admin approval for new users]' \
    '--is.user-registration.contact-info-validation.required[Require contact info validation for new users]' \
    '--is.user-registration.invitation.required[Require invitations for new users]' \
    '--is.user-registration.invitation.token-ttl[TTL of user invitation tokens]:' \
    '--is.user-registration.password-requirements.max-length[Maximum password length]:' \
    '--is.user-registration.password-requirements.min-digits[Minimum number of digits]:' \
    '--is.user-registration.password-requirements.min-length[Minimum password length]:' \
    '--is.user-registration.password-requirements.min-special[Minimum number of special characters]:' \
    '--is.user-registration.password-requirements.min-uppercase[Minimum number of uppercase letters]:' \
    '--is.user-rights.create-applications[Allow non-admin users to create applications in their user account]' \
    '--is.user-rights.create-clients[Allow non-admin users to create OAuth clients in their user account]' \
    '--is.user-rights.create-gateways[Allow non-admin users to create gateways in their user account]' \
    '--is.user-rights.create-organizations[Allow non-admin users to create organizations in their user account]' \
    '--js.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '*--js.join-eui-prefix[JoinEUI prefixes handled by this JS]:' \
    '--key-vault.cache.size[Cache size. Caching is disabled if size is 0]:' \
    '--key-vault.cache.ttl[Cache elements time to live. No expiration mechanism is used if TTL is 0]:' \
    '--key-vault.provider[Provider (static)]:' \
    '*--key-vault.static[]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--ns.application-uplink-queue.buffer-size[]:' \
    '--ns.cooldown-window[Time window starting right after deduplication window, during which, duplicate messages are discarded]:' \
    '--ns.deduplication-window[Time window during which, duplicate messages are collected for metadata]:' \
    '--ns.default-mac-settings.adr-margin[The default margin Network Server should add in ADR requests if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-b-timeout[Deadline for a device in class B mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-c-timeout[Deadline for a device in class C mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.desired-rx1-delay[Desired Rx1Delay value Network Server should use if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-count-periodicity[Number of uplink messages after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-time-periodicity[The interval after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '*--ns.dev-addr-prefixes[Device address prefixes of this Network Server]:' \
    '--ns.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--ns.downlink-priorities.join-accept[Priority for join-accept messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.mac-commands[Priority for messages carrying MAC commands (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.max-application-downlink[Maximum priority for application downlink messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.interop.blob.bucket[Bucket to use]:' \
    '--ns.interop.blob.path[Path to use]:' \
    '--ns.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--ns.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--ns.interop.url[URL, which contains interoperability client configuration]:' \
    '--ns.net-id[NetID of this Network Server]:' \
    '--pba.cluster-id[Cluster ID uniquely identifying this cluster within a NetID and tenant]:' \
    '--pba.data-plane-address[Address of the Packet Broker Data Plane]:' \
    '--pba.forwarder.enable[Enable Forwarder role]' \
    '--pba.forwarder.token-key[AES 128 or 256-bit key for encrypting tokens]:' \
    '--pba.forwarder.worker-pool.limit[Limit of active workers]:' \
    '--pba.home-network.blacklist-forwarder[Blacklist traffic from Forwarder to avoid traffic loops]' \
    '*--pba.home-network.dev-addr-prefixes[DevAddr prefixes to subscribe to]:' \
    '--pba.home-network.enable[Enable Home Network role]' \
    '--pba.home-network.worker-pool.limit[Limit of active workers]:' \
    '--pba.net-id[LoRa Alliance NetID]:' \
    '--pba.tenant-id[Tenant ID within the NetID]:' \
    '--pba.tls.certificate[Location of TLS certificate]:' \
    '--pba.tls.key[Location of TLS private key]:' \
    '--pba.tls.key-vault.id[ID of the certificate]:' \
    '--pba.tls.source[Source of the TLS certificate (file, key-vault)]:' \
    '--redis.address[Address of the Redis server]:' \
    '--redis.database[Redis database to use]:' \
    '*--redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--redis.failover.master-name[Redis Sentinel master name]:' \
    '*--redis.namespace[Namespace for Redis keys]:' \
    '--redis.password[Password of the Redis server]:' \
    '--redis.pool-size[The maximum number of database connections]:' \
    '--rights.ttl[Validity of Identity Server responses]:' \
    '--sentry.dsn[Sentry Data Source Name]:' \
    '--tls.acme.default-host[Default host to assume for clients without SNI]:' \
    '--tls.acme.dir[Location of ACME storage directory]:' \
    '--tls.acme.email[Email address to register with the ACME account]:' \
    '--tls.acme.enable[Enable automated certificate management (ACME). This setting is deprecated; set the TLS config source to acme instead]' \
    '--tls.acme.endpoint[ACME endpoint]:' \
    '*--tls.acme.hosts[Hosts to enable automatic certificates for]:' \
    '--tls.certificate[Location of TLS certificate]:' \
    '--tls.insecure-skip-verify[Skip verification of certificate chains (insecure)]' \
    '--tls.key[Location of TLS private key]:' \
    '--tls.key-vault.id[ID of the certificate]:' \
    '--tls.root-ca[Location of TLS root CA certificate (optional)]:' \
    '--tls.source[Source of the TLS certificate (file, acme, key-vault)]:'
}

function _ttn-lw-stack_help {
  _arguments \
    '--as.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--as.interop.blob.bucket[Bucket to use]:' \
    '--as.interop.blob.path[Path to use]:' \
    '--as.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--as.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--as.interop.id[AS-ID used for interoperability]:' \
    '--as.interop.url[URL, which contains interoperability client configuration]:' \
    '--as.link-mode[Mode to link applications to their Network Server (all, explicit)]:' \
    '--as.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--as.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--as.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--as.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--as.webhooks.downlink.public-address[Public address of the HTTP webhooks frontend]:' \
    '--as.webhooks.downlink.public-tls-address[Public address of the HTTPS webhooks frontend]:' \
    '--as.webhooks.queue-size[Number of requests to queue]:' \
    '--as.webhooks.target[Target of the integration (direct)]:' \
    '--as.webhooks.templates.directory[Retrieve the webhook templates from the filesystem]:' \
    '--as.webhooks.templates.logo-base-url[The base URL for the logo storage]:' \
    '--as.webhooks.templates.url[Retrieve the webhook templates from a web server]:' \
    '--as.webhooks.timeout[Wait timeout of the target to process the request]:' \
    '--as.webhooks.workers[Number of workers to process requests]:' \
    '--blob.aws.access-key-id[Access key ID]:' \
    '--blob.aws.endpoint[S3 endpoint]:' \
    '--blob.aws.region[S3 region]:' \
    '--blob.aws.secret-access-key[Secret access key]:' \
    '--blob.aws.session-token[Session token]:' \
    '--blob.gcp.credentials[JSON data of the GCP credentials, if not using JSON file]:' \
    '--blob.gcp.credentials-file[Path to the GCP credentials JSON file]:' \
    '--blob.local.directory[OS filesystem directory, which contains buckets]:' \
    '--blob.provider[Blob store provider (local, aws, gcp)]:' \
    '--cache.redis.address[Address of the Redis server]:' \
    '--cache.redis.database[Redis database to use]:' \
    '*--cache.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--cache.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--cache.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--cache.redis.namespace[Namespace for Redis keys]:' \
    '--cache.redis.password[Password of the Redis server]:' \
    '--cache.redis.pool-size[The maximum number of database connections]:' \
    '--cache.service[Service used for caching (redis)]:' \
    '--cluster.address[Address to use for cluster communication]:' \
    '--cluster.application-server[Address for the Application Server]:' \
    '--cluster.crypto-server[Address for the Crypto Server]:' \
    '--cluster.gateway-server[Address for the Gateway Server]:' \
    '--cluster.identity-server[Address for the Identity Server]:' \
    '*--cluster.join[Addresses of cluster peers to join]:' \
    '--cluster.join-server[Address for the Join Server]:' \
    '*--cluster.keys[Keys used to communicate between components of the cluster. The first one will be used by the cluster to identify itself]:' \
    '--cluster.name[Name of the current cluster peer (default: $HOSTNAME)]:' \
    '--cluster.network-server[Address for the Network Server]:' \
    '--cluster.tls[Do cluster gRPC over TLS]' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--console.mount[Path on the server where the Console will be served]:' \
    '--console.oauth.authorize-url[The OAuth Authorize URL]:' \
    '--console.oauth.client-id[The OAuth client ID]:' \
    '--console.oauth.client-secret[The OAuth client secret]:' \
    '--console.oauth.logout-url[The OAuth Logout URL]:' \
    '--console.oauth.token-url[The OAuth Token Exchange URL]:' \
    '--console.ui.as.base-url[Base URL to the HTTP API]:' \
    '--console.ui.as.enabled[Enable this API]' \
    '--console.ui.assets-base-url[The base URL to the page assets]:' \
    '--console.ui.branding-base-url[The base URL to the branding assets]:' \
    '--console.ui.canonical-url[The page canonical URL]:' \
    '--console.ui.csrftoken[]:' \
    '*--console.ui.css-file[The names of the CSS files]:' \
    '--console.ui.descriptions[The page description]:' \
    '--console.ui.documentation-base-url[The base URL for generating documentation links]:' \
    '--console.ui.edtc.base-url[Base URL to the HTTP API]:' \
    '--console.ui.edtc.enabled[Enable this API]' \
    '--console.ui.gs.base-url[Base URL to the HTTP API]:' \
    '--console.ui.gs.enabled[Enable this API]' \
    '--console.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--console.ui.is.base-url[Base URL to the HTTP API]:' \
    '--console.ui.is.enabled[Enable this API]' \
    '*--console.ui.js-file[The names of the JS files]:' \
    '--console.ui.js.base-url[Base URL to the HTTP API]:' \
    '--console.ui.js.enabled[Enable this API]' \
    '--console.ui.language[The page language]:' \
    '--console.ui.ns.base-url[Base URL to the HTTP API]:' \
    '--console.ui.ns.enabled[Enable this API]' \
    '--console.ui.qrg.base-url[Base URL to the HTTP API]:' \
    '--console.ui.qrg.enabled[Enable this API]' \
    '--console.ui.sentry-dsn[The Sentry DSN]:' \
    '--console.ui.site-name[The site name]:' \
    '--console.ui.sub-title[The page sub-title]:' \
    '--console.ui.support-link[The URI that the support button will point to]:' \
    '--console.ui.theme-color[The page theme color]:' \
    '--console.ui.title[The page title]:' \
    '--device-repository.blob.bucket[Bucket to use]:' \
    '--device-repository.blob.path[Path to use]:' \
    '--device-repository.config-source[Source of the device repository (static, directory, url, blob)]:' \
    '--device-repository.directory[OS filesystem directory, which contains device repository]:' \
    '--device-repository.url[URL, which contains device repository]:' \
    '*--dtc.enabled[Enabled converters]:' \
    '--events.backend[Backend to use for events (internal, redis, cloud)]:' \
    '--events.cloud.publish-url[URL for the topic to send events]:' \
    '--events.cloud.subscribe-url[URL for the subscription to receiving events]:' \
    '--events.redis.address[Address of the Redis server]:' \
    '--events.redis.database[Redis database to use]:' \
    '*--events.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--events.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--events.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--events.redis.namespace[Namespace for Redis keys]:' \
    '--events.redis.password[Password of the Redis server]:' \
    '--events.redis.pool-size[The maximum number of database connections]:' \
    '--frequency-plans.blob.bucket[Bucket to use]:' \
    '--frequency-plans.blob.path[Path to use]:' \
    '--frequency-plans.config-source[Source of the frequency plans (static, directory, url, blob)]:' \
    '--frequency-plans.directory[OS filesystem directory, which contains frequency plans]:' \
    '--frequency-plans.url[URL, which contains frequency plans]:' \
    '--gcs.basic-station.allow-cups-uri-update[Allow CUPS URI updates]' \
    '--gcs.basic-station.default.lns-uri[The default LNS URI that the gateways should use]:' \
    '--gcs.basic-station.owner-for-unknown.account-type[Type of account to register unknown gateways to (user|organization)]:' \
    '--gcs.basic-station.owner-for-unknown.api-key[API Key to use for unknown gateway registration]:' \
    '--gcs.basic-station.owner-for-unknown.id[ID of the account to register unknown gateways to]:' \
    '--gcs.basic-station.require-explicit-enable[Require gateways to explicitly enable CUPS]' \
    '--gcs.require-auth[Require authentication for the HTTP endpoints.]' \
    '--gcs.the-things-gateway.default.firmware-url[The default URL to the firmware storage]:' \
    '--gcs.the-things-gateway.default.mqtt-server[The default MQTT server that the gateways should use]:' \
    '--gcs.the-things-gateway.default.update-channel[The default update channel that the gateways should use]:' \
    '--grpc.allow-insecure-for-credentials[Allow transmission of credentials over insecure transport]' \
    '--grpc.listen[Address for the TCP gRPC server to listen on]:' \
    '--grpc.listen-tls[Address for the TLS gRPC server to listen on]:' \
    '*--grpc.log-ignore-methods[List of paths for which successful requests will not be logged]:' \
    '--gs.basic-station.fallback-frequency-plan-id[Fallback frequency plan ID for non-registered gateways]:' \
    '--gs.basic-station.listen[Address for the Basic Station frontend to listen on]:' \
    '--gs.basic-station.listen-tls[Address for the Basic Station frontend to listen on (with TLS)]:' \
    '--gs.basic-station.use-traffic-tls-address[Use WSS for the traffic address regardless of the TLS setting]' \
    '--gs.basic-station.ws-ping-interval[Interval to send WS ping messages]:' \
    '*--gs.forward[Forward the DevAddr prefixes to the specified hosts]:' \
    '--gs.mqtt-v2.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt-v2.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt-v2.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt-v2.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.require-registered-gateways[Require the gateways to be registered in the Identity Server]' \
    '--gs.udp.addr-change-block[Time to block traffic when a gateway'\''s address changes]:' \
    '--gs.udp.connection-expires[Time after which a connection of a gateway expires]:' \
    '--gs.udp.downlink-path-expires[Time after which a downlink path to a gateway expires]:' \
    '*--gs.udp.listeners[Listen addresses with (optional) fallback frequency plan ID for non-registered gateways]:' \
    '--gs.udp.packet-buffer[Buffer size of unhandled packets]:' \
    '--gs.udp.packet-handlers[Number of concurrent packet handlers]:' \
    '--gs.udp.rate-limiting.enable[Enable rate limiting for gateways]' \
    '--gs.udp.rate-limiting.messages[Number of past messages to check timestamp for]:' \
    '--gs.udp.rate-limiting.threshold[Filter packet if timestamp is not newer than the older timestamps of the previous messages by this threshold]:' \
    '--gs.udp.schedule-late-time[Time in advance to send downlink to the gateway when scheduling late]:' \
    '--gs.update-connection-stats-debounce-time[Time before repeated refresh of the gateway connection stats]:' \
    '--gs.update-gateway-location-debounce-time[Debounce time for gateway location updates from status messages]:' \
    '--http.cookie.block-key[Key for cookie contents encryption (16, 24 or 32 bytes)]:' \
    '--http.cookie.hash-key[Key for cookie contents verification (32 or 64 bytes)]:' \
    '--http.health.enable[Enable health check endpoint on HTTP server]' \
    '--http.health.password[Password to protect health endpoint (username is health)]:' \
    '--http.listen[Address for the HTTP server to listen on]:' \
    '--http.listen-tls[Address for the HTTPS server to listen on]:' \
    '*--http.log-ignore-paths[List of paths for which successful requests will not be logged]:' \
    '--http.metrics.enable[Enable metrics endpoint on HTTP server]' \
    '--http.metrics.password[Password to protect metrics endpoint (username is metrics)]:' \
    '--http.pprof.enable[Enable pprof endpoint on HTTP server]' \
    '--http.pprof.password[Password to protect pprof endpoint (username is pprof)]:' \
    '--http.redirect-to-host[Redirect all requests to one host]:' \
    '--http.redirect-to-tls[Redirect HTTP requests to HTTPS]' \
    '--http.static.mount[Path on the server where static assets will be served]:' \
    '*--http.static.search-path[List of paths for finding the directory to serve static assets from]:' \
    '*--http.trusted-proxies[CIDRs of trusted reverse proxies]:' \
    '--interop.listen-tls[Address for the interop server to listen on]:' \
    '--interop.sender-client-ca.blob.bucket[Bucket to use]:' \
    '--interop.sender-client-ca.blob.path[Path to use]:' \
    '--interop.sender-client-ca.directory[OS filesystem directory, which contains sender client CA configuration]:' \
    '--interop.sender-client-ca.source[Source of the sender client CA configuration (static, directory, url, blob)]:' \
    '--interop.sender-client-ca.url[URL, which contains sender client CA configuration]:' \
    '--is.auth-cache.membership-ttl[TTL of membership caches]:' \
    '--is.database-uri[Database connection URI]:' \
    '--is.email.network.console-url[The URL of the Console]:' \
    '--is.email.network.identity-server-url[The URL of the Identity Server]:' \
    '--is.email.network.name[The name of the network]:' \
    '--is.email.provider[Email provider to use]:' \
    '--is.email.sender-address[The address of the sender]:' \
    '--is.email.sender-name[The name of the sender]:' \
    '--is.email.sendgrid.api-key[The SendGrid API key to use]:' \
    '--is.email.sendgrid.sandbox[Use SendGrid sandbox mode for testing]' \
    '--is.email.smtp.address[SMTP server address]:' \
    '--is.email.smtp.connections[Maximum number of connections to the SMTP server]:' \
    '--is.email.smtp.password[Password to authenticate with]:' \
    '--is.email.smtp.username[Username to authenticate with]:' \
    '--is.email.templates.blob.bucket[Bucket to use]:' \
    '--is.email.templates.blob.path[Path to use]:' \
    '--is.email.templates.directory[Retrieve the email templates from the filesystem]:' \
    '*--is.email.templates.includes[The email templates that will be preloaded on startup]:' \
    '--is.email.templates.source[Source of the email template files (static, directory, url, blob)]:' \
    '--is.email.templates.url[Retrieve the email templates from a web server]:' \
    '--is.end-device-picture.bucket[Bucket used for storing end device pictures]:' \
    '--is.end-device-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.end-device-picture.disable-upload[Disable uploading end device pictures]' \
    '--is.oauth.mount[Path on the server where the OAuth server will be served]:' \
    '--is.oauth.ui.assets-base-url[The base URL to the page assets]:' \
    '--is.oauth.ui.branding-base-url[The base URL to the branding assets]:' \
    '--is.oauth.ui.canonical-url[The page canonical URL]:' \
    '--is.oauth.ui.csrftoken[]:' \
    '*--is.oauth.ui.css-file[The names of the CSS files]:' \
    '--is.oauth.ui.descriptions[The page description]:' \
    '--is.oauth.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--is.oauth.ui.is.base-url[Base URL to the HTTP API]:' \
    '--is.oauth.ui.is.enabled[Enable this API]' \
    '*--is.oauth.ui.js-file[The names of the JS files]:' \
    '--is.oauth.ui.language[The page language]:' \
    '--is.oauth.ui.sentry-dsn[The Sentry DSN]:' \
    '--is.oauth.ui.site-name[The site name]:' \
    '--is.oauth.ui.sub-title[The page sub-title]:' \
    '--is.oauth.ui.theme-color[The page theme color]:' \
    '--is.oauth.ui.title[The page title]:' \
    '--is.profile-picture.bucket[Bucket used for storing profile pictures]:' \
    '--is.profile-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.profile-picture.disable-upload[Disable uploading profile pictures]' \
    '--is.profile-picture.use-gravatar[Use Gravatar fallback for users without profile picture]' \
    '--is.user-registration.admin-approval.required[Require admin approval for new users]' \
    '--is.user-registration.contact-info-validation.required[Require contact info validation for new users]' \
    '--is.user-registration.invitation.required[Require invitations for new users]' \
    '--is.user-registration.invitation.token-ttl[TTL of user invitation tokens]:' \
    '--is.user-registration.password-requirements.max-length[Maximum password length]:' \
    '--is.user-registration.password-requirements.min-digits[Minimum number of digits]:' \
    '--is.user-registration.password-requirements.min-length[Minimum password length]:' \
    '--is.user-registration.password-requirements.min-special[Minimum number of special characters]:' \
    '--is.user-registration.password-requirements.min-uppercase[Minimum number of uppercase letters]:' \
    '--is.user-rights.create-applications[Allow non-admin users to create applications in their user account]' \
    '--is.user-rights.create-clients[Allow non-admin users to create OAuth clients in their user account]' \
    '--is.user-rights.create-gateways[Allow non-admin users to create gateways in their user account]' \
    '--is.user-rights.create-organizations[Allow non-admin users to create organizations in their user account]' \
    '--js.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '*--js.join-eui-prefix[JoinEUI prefixes handled by this JS]:' \
    '--key-vault.cache.size[Cache size. Caching is disabled if size is 0]:' \
    '--key-vault.cache.ttl[Cache elements time to live. No expiration mechanism is used if TTL is 0]:' \
    '--key-vault.provider[Provider (static)]:' \
    '*--key-vault.static[]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--ns.application-uplink-queue.buffer-size[]:' \
    '--ns.cooldown-window[Time window starting right after deduplication window, during which, duplicate messages are discarded]:' \
    '--ns.deduplication-window[Time window during which, duplicate messages are collected for metadata]:' \
    '--ns.default-mac-settings.adr-margin[The default margin Network Server should add in ADR requests if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-b-timeout[Deadline for a device in class B mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-c-timeout[Deadline for a device in class C mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.desired-rx1-delay[Desired Rx1Delay value Network Server should use if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-count-periodicity[Number of uplink messages after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-time-periodicity[The interval after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '*--ns.dev-addr-prefixes[Device address prefixes of this Network Server]:' \
    '--ns.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--ns.downlink-priorities.join-accept[Priority for join-accept messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.mac-commands[Priority for messages carrying MAC commands (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.max-application-downlink[Maximum priority for application downlink messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.interop.blob.bucket[Bucket to use]:' \
    '--ns.interop.blob.path[Path to use]:' \
    '--ns.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--ns.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--ns.interop.url[URL, which contains interoperability client configuration]:' \
    '--ns.net-id[NetID of this Network Server]:' \
    '--pba.cluster-id[Cluster ID uniquely identifying this cluster within a NetID and tenant]:' \
    '--pba.data-plane-address[Address of the Packet Broker Data Plane]:' \
    '--pba.forwarder.enable[Enable Forwarder role]' \
    '--pba.forwarder.token-key[AES 128 or 256-bit key for encrypting tokens]:' \
    '--pba.forwarder.worker-pool.limit[Limit of active workers]:' \
    '--pba.home-network.blacklist-forwarder[Blacklist traffic from Forwarder to avoid traffic loops]' \
    '*--pba.home-network.dev-addr-prefixes[DevAddr prefixes to subscribe to]:' \
    '--pba.home-network.enable[Enable Home Network role]' \
    '--pba.home-network.worker-pool.limit[Limit of active workers]:' \
    '--pba.net-id[LoRa Alliance NetID]:' \
    '--pba.tenant-id[Tenant ID within the NetID]:' \
    '--pba.tls.certificate[Location of TLS certificate]:' \
    '--pba.tls.key[Location of TLS private key]:' \
    '--pba.tls.key-vault.id[ID of the certificate]:' \
    '--pba.tls.source[Source of the TLS certificate (file, key-vault)]:' \
    '--redis.address[Address of the Redis server]:' \
    '--redis.database[Redis database to use]:' \
    '*--redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--redis.failover.master-name[Redis Sentinel master name]:' \
    '*--redis.namespace[Namespace for Redis keys]:' \
    '--redis.password[Password of the Redis server]:' \
    '--redis.pool-size[The maximum number of database connections]:' \
    '--rights.ttl[Validity of Identity Server responses]:' \
    '--sentry.dsn[Sentry Data Source Name]:' \
    '--tls.acme.default-host[Default host to assume for clients without SNI]:' \
    '--tls.acme.dir[Location of ACME storage directory]:' \
    '--tls.acme.email[Email address to register with the ACME account]:' \
    '--tls.acme.enable[Enable automated certificate management (ACME). This setting is deprecated; set the TLS config source to acme instead]' \
    '--tls.acme.endpoint[ACME endpoint]:' \
    '*--tls.acme.hosts[Hosts to enable automatic certificates for]:' \
    '--tls.certificate[Location of TLS certificate]:' \
    '--tls.insecure-skip-verify[Skip verification of certificate chains (insecure)]' \
    '--tls.key[Location of TLS private key]:' \
    '--tls.key-vault.id[ID of the certificate]:' \
    '--tls.root-ca[Location of TLS root CA certificate (optional)]:' \
    '--tls.source[Source of the TLS certificate (file, acme, key-vault)]:'
}


function _ttn-lw-stack_is-db {
  local -a commands

  _arguments -C \
    '--as.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--as.interop.blob.bucket[Bucket to use]:' \
    '--as.interop.blob.path[Path to use]:' \
    '--as.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--as.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--as.interop.id[AS-ID used for interoperability]:' \
    '--as.interop.url[URL, which contains interoperability client configuration]:' \
    '--as.link-mode[Mode to link applications to their Network Server (all, explicit)]:' \
    '--as.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--as.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--as.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--as.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--as.webhooks.downlink.public-address[Public address of the HTTP webhooks frontend]:' \
    '--as.webhooks.downlink.public-tls-address[Public address of the HTTPS webhooks frontend]:' \
    '--as.webhooks.queue-size[Number of requests to queue]:' \
    '--as.webhooks.target[Target of the integration (direct)]:' \
    '--as.webhooks.templates.directory[Retrieve the webhook templates from the filesystem]:' \
    '--as.webhooks.templates.logo-base-url[The base URL for the logo storage]:' \
    '--as.webhooks.templates.url[Retrieve the webhook templates from a web server]:' \
    '--as.webhooks.timeout[Wait timeout of the target to process the request]:' \
    '--as.webhooks.workers[Number of workers to process requests]:' \
    '--blob.aws.access-key-id[Access key ID]:' \
    '--blob.aws.endpoint[S3 endpoint]:' \
    '--blob.aws.region[S3 region]:' \
    '--blob.aws.secret-access-key[Secret access key]:' \
    '--blob.aws.session-token[Session token]:' \
    '--blob.gcp.credentials[JSON data of the GCP credentials, if not using JSON file]:' \
    '--blob.gcp.credentials-file[Path to the GCP credentials JSON file]:' \
    '--blob.local.directory[OS filesystem directory, which contains buckets]:' \
    '--blob.provider[Blob store provider (local, aws, gcp)]:' \
    '--cache.redis.address[Address of the Redis server]:' \
    '--cache.redis.database[Redis database to use]:' \
    '*--cache.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--cache.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--cache.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--cache.redis.namespace[Namespace for Redis keys]:' \
    '--cache.redis.password[Password of the Redis server]:' \
    '--cache.redis.pool-size[The maximum number of database connections]:' \
    '--cache.service[Service used for caching (redis)]:' \
    '--cluster.address[Address to use for cluster communication]:' \
    '--cluster.application-server[Address for the Application Server]:' \
    '--cluster.crypto-server[Address for the Crypto Server]:' \
    '--cluster.gateway-server[Address for the Gateway Server]:' \
    '--cluster.identity-server[Address for the Identity Server]:' \
    '*--cluster.join[Addresses of cluster peers to join]:' \
    '--cluster.join-server[Address for the Join Server]:' \
    '*--cluster.keys[Keys used to communicate between components of the cluster. The first one will be used by the cluster to identify itself]:' \
    '--cluster.name[Name of the current cluster peer (default: $HOSTNAME)]:' \
    '--cluster.network-server[Address for the Network Server]:' \
    '--cluster.tls[Do cluster gRPC over TLS]' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--console.mount[Path on the server where the Console will be served]:' \
    '--console.oauth.authorize-url[The OAuth Authorize URL]:' \
    '--console.oauth.client-id[The OAuth client ID]:' \
    '--console.oauth.client-secret[The OAuth client secret]:' \
    '--console.oauth.logout-url[The OAuth Logout URL]:' \
    '--console.oauth.token-url[The OAuth Token Exchange URL]:' \
    '--console.ui.as.base-url[Base URL to the HTTP API]:' \
    '--console.ui.as.enabled[Enable this API]' \
    '--console.ui.assets-base-url[The base URL to the page assets]:' \
    '--console.ui.branding-base-url[The base URL to the branding assets]:' \
    '--console.ui.canonical-url[The page canonical URL]:' \
    '--console.ui.csrftoken[]:' \
    '*--console.ui.css-file[The names of the CSS files]:' \
    '--console.ui.descriptions[The page description]:' \
    '--console.ui.documentation-base-url[The base URL for generating documentation links]:' \
    '--console.ui.edtc.base-url[Base URL to the HTTP API]:' \
    '--console.ui.edtc.enabled[Enable this API]' \
    '--console.ui.gs.base-url[Base URL to the HTTP API]:' \
    '--console.ui.gs.enabled[Enable this API]' \
    '--console.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--console.ui.is.base-url[Base URL to the HTTP API]:' \
    '--console.ui.is.enabled[Enable this API]' \
    '*--console.ui.js-file[The names of the JS files]:' \
    '--console.ui.js.base-url[Base URL to the HTTP API]:' \
    '--console.ui.js.enabled[Enable this API]' \
    '--console.ui.language[The page language]:' \
    '--console.ui.ns.base-url[Base URL to the HTTP API]:' \
    '--console.ui.ns.enabled[Enable this API]' \
    '--console.ui.qrg.base-url[Base URL to the HTTP API]:' \
    '--console.ui.qrg.enabled[Enable this API]' \
    '--console.ui.sentry-dsn[The Sentry DSN]:' \
    '--console.ui.site-name[The site name]:' \
    '--console.ui.sub-title[The page sub-title]:' \
    '--console.ui.support-link[The URI that the support button will point to]:' \
    '--console.ui.theme-color[The page theme color]:' \
    '--console.ui.title[The page title]:' \
    '--device-repository.blob.bucket[Bucket to use]:' \
    '--device-repository.blob.path[Path to use]:' \
    '--device-repository.config-source[Source of the device repository (static, directory, url, blob)]:' \
    '--device-repository.directory[OS filesystem directory, which contains device repository]:' \
    '--device-repository.url[URL, which contains device repository]:' \
    '*--dtc.enabled[Enabled converters]:' \
    '--events.backend[Backend to use for events (internal, redis, cloud)]:' \
    '--events.cloud.publish-url[URL for the topic to send events]:' \
    '--events.cloud.subscribe-url[URL for the subscription to receiving events]:' \
    '--events.redis.address[Address of the Redis server]:' \
    '--events.redis.database[Redis database to use]:' \
    '*--events.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--events.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--events.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--events.redis.namespace[Namespace for Redis keys]:' \
    '--events.redis.password[Password of the Redis server]:' \
    '--events.redis.pool-size[The maximum number of database connections]:' \
    '--frequency-plans.blob.bucket[Bucket to use]:' \
    '--frequency-plans.blob.path[Path to use]:' \
    '--frequency-plans.config-source[Source of the frequency plans (static, directory, url, blob)]:' \
    '--frequency-plans.directory[OS filesystem directory, which contains frequency plans]:' \
    '--frequency-plans.url[URL, which contains frequency plans]:' \
    '--gcs.basic-station.allow-cups-uri-update[Allow CUPS URI updates]' \
    '--gcs.basic-station.default.lns-uri[The default LNS URI that the gateways should use]:' \
    '--gcs.basic-station.owner-for-unknown.account-type[Type of account to register unknown gateways to (user|organization)]:' \
    '--gcs.basic-station.owner-for-unknown.api-key[API Key to use for unknown gateway registration]:' \
    '--gcs.basic-station.owner-for-unknown.id[ID of the account to register unknown gateways to]:' \
    '--gcs.basic-station.require-explicit-enable[Require gateways to explicitly enable CUPS]' \
    '--gcs.require-auth[Require authentication for the HTTP endpoints.]' \
    '--gcs.the-things-gateway.default.firmware-url[The default URL to the firmware storage]:' \
    '--gcs.the-things-gateway.default.mqtt-server[The default MQTT server that the gateways should use]:' \
    '--gcs.the-things-gateway.default.update-channel[The default update channel that the gateways should use]:' \
    '--grpc.allow-insecure-for-credentials[Allow transmission of credentials over insecure transport]' \
    '--grpc.listen[Address for the TCP gRPC server to listen on]:' \
    '--grpc.listen-tls[Address for the TLS gRPC server to listen on]:' \
    '*--grpc.log-ignore-methods[List of paths for which successful requests will not be logged]:' \
    '--gs.basic-station.fallback-frequency-plan-id[Fallback frequency plan ID for non-registered gateways]:' \
    '--gs.basic-station.listen[Address for the Basic Station frontend to listen on]:' \
    '--gs.basic-station.listen-tls[Address for the Basic Station frontend to listen on (with TLS)]:' \
    '--gs.basic-station.use-traffic-tls-address[Use WSS for the traffic address regardless of the TLS setting]' \
    '--gs.basic-station.ws-ping-interval[Interval to send WS ping messages]:' \
    '*--gs.forward[Forward the DevAddr prefixes to the specified hosts]:' \
    '--gs.mqtt-v2.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt-v2.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt-v2.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt-v2.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.require-registered-gateways[Require the gateways to be registered in the Identity Server]' \
    '--gs.udp.addr-change-block[Time to block traffic when a gateway'\''s address changes]:' \
    '--gs.udp.connection-expires[Time after which a connection of a gateway expires]:' \
    '--gs.udp.downlink-path-expires[Time after which a downlink path to a gateway expires]:' \
    '*--gs.udp.listeners[Listen addresses with (optional) fallback frequency plan ID for non-registered gateways]:' \
    '--gs.udp.packet-buffer[Buffer size of unhandled packets]:' \
    '--gs.udp.packet-handlers[Number of concurrent packet handlers]:' \
    '--gs.udp.rate-limiting.enable[Enable rate limiting for gateways]' \
    '--gs.udp.rate-limiting.messages[Number of past messages to check timestamp for]:' \
    '--gs.udp.rate-limiting.threshold[Filter packet if timestamp is not newer than the older timestamps of the previous messages by this threshold]:' \
    '--gs.udp.schedule-late-time[Time in advance to send downlink to the gateway when scheduling late]:' \
    '--gs.update-connection-stats-debounce-time[Time before repeated refresh of the gateway connection stats]:' \
    '--gs.update-gateway-location-debounce-time[Debounce time for gateway location updates from status messages]:' \
    '--http.cookie.block-key[Key for cookie contents encryption (16, 24 or 32 bytes)]:' \
    '--http.cookie.hash-key[Key for cookie contents verification (32 or 64 bytes)]:' \
    '--http.health.enable[Enable health check endpoint on HTTP server]' \
    '--http.health.password[Password to protect health endpoint (username is health)]:' \
    '--http.listen[Address for the HTTP server to listen on]:' \
    '--http.listen-tls[Address for the HTTPS server to listen on]:' \
    '*--http.log-ignore-paths[List of paths for which successful requests will not be logged]:' \
    '--http.metrics.enable[Enable metrics endpoint on HTTP server]' \
    '--http.metrics.password[Password to protect metrics endpoint (username is metrics)]:' \
    '--http.pprof.enable[Enable pprof endpoint on HTTP server]' \
    '--http.pprof.password[Password to protect pprof endpoint (username is pprof)]:' \
    '--http.redirect-to-host[Redirect all requests to one host]:' \
    '--http.redirect-to-tls[Redirect HTTP requests to HTTPS]' \
    '--http.static.mount[Path on the server where static assets will be served]:' \
    '*--http.static.search-path[List of paths for finding the directory to serve static assets from]:' \
    '*--http.trusted-proxies[CIDRs of trusted reverse proxies]:' \
    '--interop.listen-tls[Address for the interop server to listen on]:' \
    '--interop.sender-client-ca.blob.bucket[Bucket to use]:' \
    '--interop.sender-client-ca.blob.path[Path to use]:' \
    '--interop.sender-client-ca.directory[OS filesystem directory, which contains sender client CA configuration]:' \
    '--interop.sender-client-ca.source[Source of the sender client CA configuration (static, directory, url, blob)]:' \
    '--interop.sender-client-ca.url[URL, which contains sender client CA configuration]:' \
    '--is.auth-cache.membership-ttl[TTL of membership caches]:' \
    '--is.database-uri[Database connection URI]:' \
    '--is.email.network.console-url[The URL of the Console]:' \
    '--is.email.network.identity-server-url[The URL of the Identity Server]:' \
    '--is.email.network.name[The name of the network]:' \
    '--is.email.provider[Email provider to use]:' \
    '--is.email.sender-address[The address of the sender]:' \
    '--is.email.sender-name[The name of the sender]:' \
    '--is.email.sendgrid.api-key[The SendGrid API key to use]:' \
    '--is.email.sendgrid.sandbox[Use SendGrid sandbox mode for testing]' \
    '--is.email.smtp.address[SMTP server address]:' \
    '--is.email.smtp.connections[Maximum number of connections to the SMTP server]:' \
    '--is.email.smtp.password[Password to authenticate with]:' \
    '--is.email.smtp.username[Username to authenticate with]:' \
    '--is.email.templates.blob.bucket[Bucket to use]:' \
    '--is.email.templates.blob.path[Path to use]:' \
    '--is.email.templates.directory[Retrieve the email templates from the filesystem]:' \
    '*--is.email.templates.includes[The email templates that will be preloaded on startup]:' \
    '--is.email.templates.source[Source of the email template files (static, directory, url, blob)]:' \
    '--is.email.templates.url[Retrieve the email templates from a web server]:' \
    '--is.end-device-picture.bucket[Bucket used for storing end device pictures]:' \
    '--is.end-device-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.end-device-picture.disable-upload[Disable uploading end device pictures]' \
    '--is.oauth.mount[Path on the server where the OAuth server will be served]:' \
    '--is.oauth.ui.assets-base-url[The base URL to the page assets]:' \
    '--is.oauth.ui.branding-base-url[The base URL to the branding assets]:' \
    '--is.oauth.ui.canonical-url[The page canonical URL]:' \
    '--is.oauth.ui.csrftoken[]:' \
    '*--is.oauth.ui.css-file[The names of the CSS files]:' \
    '--is.oauth.ui.descriptions[The page description]:' \
    '--is.oauth.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--is.oauth.ui.is.base-url[Base URL to the HTTP API]:' \
    '--is.oauth.ui.is.enabled[Enable this API]' \
    '*--is.oauth.ui.js-file[The names of the JS files]:' \
    '--is.oauth.ui.language[The page language]:' \
    '--is.oauth.ui.sentry-dsn[The Sentry DSN]:' \
    '--is.oauth.ui.site-name[The site name]:' \
    '--is.oauth.ui.sub-title[The page sub-title]:' \
    '--is.oauth.ui.theme-color[The page theme color]:' \
    '--is.oauth.ui.title[The page title]:' \
    '--is.profile-picture.bucket[Bucket used for storing profile pictures]:' \
    '--is.profile-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.profile-picture.disable-upload[Disable uploading profile pictures]' \
    '--is.profile-picture.use-gravatar[Use Gravatar fallback for users without profile picture]' \
    '--is.user-registration.admin-approval.required[Require admin approval for new users]' \
    '--is.user-registration.contact-info-validation.required[Require contact info validation for new users]' \
    '--is.user-registration.invitation.required[Require invitations for new users]' \
    '--is.user-registration.invitation.token-ttl[TTL of user invitation tokens]:' \
    '--is.user-registration.password-requirements.max-length[Maximum password length]:' \
    '--is.user-registration.password-requirements.min-digits[Minimum number of digits]:' \
    '--is.user-registration.password-requirements.min-length[Minimum password length]:' \
    '--is.user-registration.password-requirements.min-special[Minimum number of special characters]:' \
    '--is.user-registration.password-requirements.min-uppercase[Minimum number of uppercase letters]:' \
    '--is.user-rights.create-applications[Allow non-admin users to create applications in their user account]' \
    '--is.user-rights.create-clients[Allow non-admin users to create OAuth clients in their user account]' \
    '--is.user-rights.create-gateways[Allow non-admin users to create gateways in their user account]' \
    '--is.user-rights.create-organizations[Allow non-admin users to create organizations in their user account]' \
    '--js.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '*--js.join-eui-prefix[JoinEUI prefixes handled by this JS]:' \
    '--key-vault.cache.size[Cache size. Caching is disabled if size is 0]:' \
    '--key-vault.cache.ttl[Cache elements time to live. No expiration mechanism is used if TTL is 0]:' \
    '--key-vault.provider[Provider (static)]:' \
    '*--key-vault.static[]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--ns.application-uplink-queue.buffer-size[]:' \
    '--ns.cooldown-window[Time window starting right after deduplication window, during which, duplicate messages are discarded]:' \
    '--ns.deduplication-window[Time window during which, duplicate messages are collected for metadata]:' \
    '--ns.default-mac-settings.adr-margin[The default margin Network Server should add in ADR requests if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-b-timeout[Deadline for a device in class B mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-c-timeout[Deadline for a device in class C mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.desired-rx1-delay[Desired Rx1Delay value Network Server should use if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-count-periodicity[Number of uplink messages after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-time-periodicity[The interval after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '*--ns.dev-addr-prefixes[Device address prefixes of this Network Server]:' \
    '--ns.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--ns.downlink-priorities.join-accept[Priority for join-accept messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.mac-commands[Priority for messages carrying MAC commands (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.max-application-downlink[Maximum priority for application downlink messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.interop.blob.bucket[Bucket to use]:' \
    '--ns.interop.blob.path[Path to use]:' \
    '--ns.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--ns.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--ns.interop.url[URL, which contains interoperability client configuration]:' \
    '--ns.net-id[NetID of this Network Server]:' \
    '--pba.cluster-id[Cluster ID uniquely identifying this cluster within a NetID and tenant]:' \
    '--pba.data-plane-address[Address of the Packet Broker Data Plane]:' \
    '--pba.forwarder.enable[Enable Forwarder role]' \
    '--pba.forwarder.token-key[AES 128 or 256-bit key for encrypting tokens]:' \
    '--pba.forwarder.worker-pool.limit[Limit of active workers]:' \
    '--pba.home-network.blacklist-forwarder[Blacklist traffic from Forwarder to avoid traffic loops]' \
    '*--pba.home-network.dev-addr-prefixes[DevAddr prefixes to subscribe to]:' \
    '--pba.home-network.enable[Enable Home Network role]' \
    '--pba.home-network.worker-pool.limit[Limit of active workers]:' \
    '--pba.net-id[LoRa Alliance NetID]:' \
    '--pba.tenant-id[Tenant ID within the NetID]:' \
    '--pba.tls.certificate[Location of TLS certificate]:' \
    '--pba.tls.key[Location of TLS private key]:' \
    '--pba.tls.key-vault.id[ID of the certificate]:' \
    '--pba.tls.source[Source of the TLS certificate (file, key-vault)]:' \
    '--redis.address[Address of the Redis server]:' \
    '--redis.database[Redis database to use]:' \
    '*--redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--redis.failover.master-name[Redis Sentinel master name]:' \
    '*--redis.namespace[Namespace for Redis keys]:' \
    '--redis.password[Password of the Redis server]:' \
    '--redis.pool-size[The maximum number of database connections]:' \
    '--rights.ttl[Validity of Identity Server responses]:' \
    '--sentry.dsn[Sentry Data Source Name]:' \
    '--tls.acme.default-host[Default host to assume for clients without SNI]:' \
    '--tls.acme.dir[Location of ACME storage directory]:' \
    '--tls.acme.email[Email address to register with the ACME account]:' \
    '--tls.acme.enable[Enable automated certificate management (ACME). This setting is deprecated; set the TLS config source to acme instead]' \
    '--tls.acme.endpoint[ACME endpoint]:' \
    '*--tls.acme.hosts[Hosts to enable automatic certificates for]:' \
    '--tls.certificate[Location of TLS certificate]:' \
    '--tls.insecure-skip-verify[Skip verification of certificate chains (insecure)]' \
    '--tls.key[Location of TLS private key]:' \
    '--tls.key-vault.id[ID of the certificate]:' \
    '--tls.root-ca[Location of TLS root CA certificate (optional)]:' \
    '--tls.source[Source of the TLS certificate (file, acme, key-vault)]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create-admin-user:Create an admin user in the Identity Server database"
      "create-oauth-client:Create an OAuth client in the Identity Server database"
      "init:Initialize the Identity Server database"
      "migrate:Migrate the Identity Server database"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create-admin-user)
    _ttn-lw-stack_is-db_create-admin-user
    ;;
  create-oauth-client)
    _ttn-lw-stack_is-db_create-oauth-client
    ;;
  init)
    _ttn-lw-stack_is-db_init
    ;;
  migrate)
    _ttn-lw-stack_is-db_migrate
    ;;
  esac
}

function _ttn-lw-stack_is-db_create-admin-user {
  _arguments \
    '--email[Email address]:' \
    '--id[User ID]:' \
    '--password[Password]:' \
    '--as.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--as.interop.blob.bucket[Bucket to use]:' \
    '--as.interop.blob.path[Path to use]:' \
    '--as.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--as.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--as.interop.id[AS-ID used for interoperability]:' \
    '--as.interop.url[URL, which contains interoperability client configuration]:' \
    '--as.link-mode[Mode to link applications to their Network Server (all, explicit)]:' \
    '--as.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--as.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--as.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--as.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--as.webhooks.downlink.public-address[Public address of the HTTP webhooks frontend]:' \
    '--as.webhooks.downlink.public-tls-address[Public address of the HTTPS webhooks frontend]:' \
    '--as.webhooks.queue-size[Number of requests to queue]:' \
    '--as.webhooks.target[Target of the integration (direct)]:' \
    '--as.webhooks.templates.directory[Retrieve the webhook templates from the filesystem]:' \
    '--as.webhooks.templates.logo-base-url[The base URL for the logo storage]:' \
    '--as.webhooks.templates.url[Retrieve the webhook templates from a web server]:' \
    '--as.webhooks.timeout[Wait timeout of the target to process the request]:' \
    '--as.webhooks.workers[Number of workers to process requests]:' \
    '--blob.aws.access-key-id[Access key ID]:' \
    '--blob.aws.endpoint[S3 endpoint]:' \
    '--blob.aws.region[S3 region]:' \
    '--blob.aws.secret-access-key[Secret access key]:' \
    '--blob.aws.session-token[Session token]:' \
    '--blob.gcp.credentials[JSON data of the GCP credentials, if not using JSON file]:' \
    '--blob.gcp.credentials-file[Path to the GCP credentials JSON file]:' \
    '--blob.local.directory[OS filesystem directory, which contains buckets]:' \
    '--blob.provider[Blob store provider (local, aws, gcp)]:' \
    '--cache.redis.address[Address of the Redis server]:' \
    '--cache.redis.database[Redis database to use]:' \
    '*--cache.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--cache.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--cache.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--cache.redis.namespace[Namespace for Redis keys]:' \
    '--cache.redis.password[Password of the Redis server]:' \
    '--cache.redis.pool-size[The maximum number of database connections]:' \
    '--cache.service[Service used for caching (redis)]:' \
    '--cluster.address[Address to use for cluster communication]:' \
    '--cluster.application-server[Address for the Application Server]:' \
    '--cluster.crypto-server[Address for the Crypto Server]:' \
    '--cluster.gateway-server[Address for the Gateway Server]:' \
    '--cluster.identity-server[Address for the Identity Server]:' \
    '*--cluster.join[Addresses of cluster peers to join]:' \
    '--cluster.join-server[Address for the Join Server]:' \
    '*--cluster.keys[Keys used to communicate between components of the cluster. The first one will be used by the cluster to identify itself]:' \
    '--cluster.name[Name of the current cluster peer (default: $HOSTNAME)]:' \
    '--cluster.network-server[Address for the Network Server]:' \
    '--cluster.tls[Do cluster gRPC over TLS]' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--console.mount[Path on the server where the Console will be served]:' \
    '--console.oauth.authorize-url[The OAuth Authorize URL]:' \
    '--console.oauth.client-id[The OAuth client ID]:' \
    '--console.oauth.client-secret[The OAuth client secret]:' \
    '--console.oauth.logout-url[The OAuth Logout URL]:' \
    '--console.oauth.token-url[The OAuth Token Exchange URL]:' \
    '--console.ui.as.base-url[Base URL to the HTTP API]:' \
    '--console.ui.as.enabled[Enable this API]' \
    '--console.ui.assets-base-url[The base URL to the page assets]:' \
    '--console.ui.branding-base-url[The base URL to the branding assets]:' \
    '--console.ui.canonical-url[The page canonical URL]:' \
    '--console.ui.csrftoken[]:' \
    '*--console.ui.css-file[The names of the CSS files]:' \
    '--console.ui.descriptions[The page description]:' \
    '--console.ui.documentation-base-url[The base URL for generating documentation links]:' \
    '--console.ui.edtc.base-url[Base URL to the HTTP API]:' \
    '--console.ui.edtc.enabled[Enable this API]' \
    '--console.ui.gs.base-url[Base URL to the HTTP API]:' \
    '--console.ui.gs.enabled[Enable this API]' \
    '--console.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--console.ui.is.base-url[Base URL to the HTTP API]:' \
    '--console.ui.is.enabled[Enable this API]' \
    '*--console.ui.js-file[The names of the JS files]:' \
    '--console.ui.js.base-url[Base URL to the HTTP API]:' \
    '--console.ui.js.enabled[Enable this API]' \
    '--console.ui.language[The page language]:' \
    '--console.ui.ns.base-url[Base URL to the HTTP API]:' \
    '--console.ui.ns.enabled[Enable this API]' \
    '--console.ui.qrg.base-url[Base URL to the HTTP API]:' \
    '--console.ui.qrg.enabled[Enable this API]' \
    '--console.ui.sentry-dsn[The Sentry DSN]:' \
    '--console.ui.site-name[The site name]:' \
    '--console.ui.sub-title[The page sub-title]:' \
    '--console.ui.support-link[The URI that the support button will point to]:' \
    '--console.ui.theme-color[The page theme color]:' \
    '--console.ui.title[The page title]:' \
    '--device-repository.blob.bucket[Bucket to use]:' \
    '--device-repository.blob.path[Path to use]:' \
    '--device-repository.config-source[Source of the device repository (static, directory, url, blob)]:' \
    '--device-repository.directory[OS filesystem directory, which contains device repository]:' \
    '--device-repository.url[URL, which contains device repository]:' \
    '*--dtc.enabled[Enabled converters]:' \
    '--events.backend[Backend to use for events (internal, redis, cloud)]:' \
    '--events.cloud.publish-url[URL for the topic to send events]:' \
    '--events.cloud.subscribe-url[URL for the subscription to receiving events]:' \
    '--events.redis.address[Address of the Redis server]:' \
    '--events.redis.database[Redis database to use]:' \
    '*--events.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--events.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--events.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--events.redis.namespace[Namespace for Redis keys]:' \
    '--events.redis.password[Password of the Redis server]:' \
    '--events.redis.pool-size[The maximum number of database connections]:' \
    '--frequency-plans.blob.bucket[Bucket to use]:' \
    '--frequency-plans.blob.path[Path to use]:' \
    '--frequency-plans.config-source[Source of the frequency plans (static, directory, url, blob)]:' \
    '--frequency-plans.directory[OS filesystem directory, which contains frequency plans]:' \
    '--frequency-plans.url[URL, which contains frequency plans]:' \
    '--gcs.basic-station.allow-cups-uri-update[Allow CUPS URI updates]' \
    '--gcs.basic-station.default.lns-uri[The default LNS URI that the gateways should use]:' \
    '--gcs.basic-station.owner-for-unknown.account-type[Type of account to register unknown gateways to (user|organization)]:' \
    '--gcs.basic-station.owner-for-unknown.api-key[API Key to use for unknown gateway registration]:' \
    '--gcs.basic-station.owner-for-unknown.id[ID of the account to register unknown gateways to]:' \
    '--gcs.basic-station.require-explicit-enable[Require gateways to explicitly enable CUPS]' \
    '--gcs.require-auth[Require authentication for the HTTP endpoints.]' \
    '--gcs.the-things-gateway.default.firmware-url[The default URL to the firmware storage]:' \
    '--gcs.the-things-gateway.default.mqtt-server[The default MQTT server that the gateways should use]:' \
    '--gcs.the-things-gateway.default.update-channel[The default update channel that the gateways should use]:' \
    '--grpc.allow-insecure-for-credentials[Allow transmission of credentials over insecure transport]' \
    '--grpc.listen[Address for the TCP gRPC server to listen on]:' \
    '--grpc.listen-tls[Address for the TLS gRPC server to listen on]:' \
    '*--grpc.log-ignore-methods[List of paths for which successful requests will not be logged]:' \
    '--gs.basic-station.fallback-frequency-plan-id[Fallback frequency plan ID for non-registered gateways]:' \
    '--gs.basic-station.listen[Address for the Basic Station frontend to listen on]:' \
    '--gs.basic-station.listen-tls[Address for the Basic Station frontend to listen on (with TLS)]:' \
    '--gs.basic-station.use-traffic-tls-address[Use WSS for the traffic address regardless of the TLS setting]' \
    '--gs.basic-station.ws-ping-interval[Interval to send WS ping messages]:' \
    '*--gs.forward[Forward the DevAddr prefixes to the specified hosts]:' \
    '--gs.mqtt-v2.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt-v2.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt-v2.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt-v2.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.require-registered-gateways[Require the gateways to be registered in the Identity Server]' \
    '--gs.udp.addr-change-block[Time to block traffic when a gateway'\''s address changes]:' \
    '--gs.udp.connection-expires[Time after which a connection of a gateway expires]:' \
    '--gs.udp.downlink-path-expires[Time after which a downlink path to a gateway expires]:' \
    '*--gs.udp.listeners[Listen addresses with (optional) fallback frequency plan ID for non-registered gateways]:' \
    '--gs.udp.packet-buffer[Buffer size of unhandled packets]:' \
    '--gs.udp.packet-handlers[Number of concurrent packet handlers]:' \
    '--gs.udp.rate-limiting.enable[Enable rate limiting for gateways]' \
    '--gs.udp.rate-limiting.messages[Number of past messages to check timestamp for]:' \
    '--gs.udp.rate-limiting.threshold[Filter packet if timestamp is not newer than the older timestamps of the previous messages by this threshold]:' \
    '--gs.udp.schedule-late-time[Time in advance to send downlink to the gateway when scheduling late]:' \
    '--gs.update-connection-stats-debounce-time[Time before repeated refresh of the gateway connection stats]:' \
    '--gs.update-gateway-location-debounce-time[Debounce time for gateway location updates from status messages]:' \
    '--http.cookie.block-key[Key for cookie contents encryption (16, 24 or 32 bytes)]:' \
    '--http.cookie.hash-key[Key for cookie contents verification (32 or 64 bytes)]:' \
    '--http.health.enable[Enable health check endpoint on HTTP server]' \
    '--http.health.password[Password to protect health endpoint (username is health)]:' \
    '--http.listen[Address for the HTTP server to listen on]:' \
    '--http.listen-tls[Address for the HTTPS server to listen on]:' \
    '*--http.log-ignore-paths[List of paths for which successful requests will not be logged]:' \
    '--http.metrics.enable[Enable metrics endpoint on HTTP server]' \
    '--http.metrics.password[Password to protect metrics endpoint (username is metrics)]:' \
    '--http.pprof.enable[Enable pprof endpoint on HTTP server]' \
    '--http.pprof.password[Password to protect pprof endpoint (username is pprof)]:' \
    '--http.redirect-to-host[Redirect all requests to one host]:' \
    '--http.redirect-to-tls[Redirect HTTP requests to HTTPS]' \
    '--http.static.mount[Path on the server where static assets will be served]:' \
    '*--http.static.search-path[List of paths for finding the directory to serve static assets from]:' \
    '*--http.trusted-proxies[CIDRs of trusted reverse proxies]:' \
    '--interop.listen-tls[Address for the interop server to listen on]:' \
    '--interop.sender-client-ca.blob.bucket[Bucket to use]:' \
    '--interop.sender-client-ca.blob.path[Path to use]:' \
    '--interop.sender-client-ca.directory[OS filesystem directory, which contains sender client CA configuration]:' \
    '--interop.sender-client-ca.source[Source of the sender client CA configuration (static, directory, url, blob)]:' \
    '--interop.sender-client-ca.url[URL, which contains sender client CA configuration]:' \
    '--is.auth-cache.membership-ttl[TTL of membership caches]:' \
    '--is.database-uri[Database connection URI]:' \
    '--is.email.network.console-url[The URL of the Console]:' \
    '--is.email.network.identity-server-url[The URL of the Identity Server]:' \
    '--is.email.network.name[The name of the network]:' \
    '--is.email.provider[Email provider to use]:' \
    '--is.email.sender-address[The address of the sender]:' \
    '--is.email.sender-name[The name of the sender]:' \
    '--is.email.sendgrid.api-key[The SendGrid API key to use]:' \
    '--is.email.sendgrid.sandbox[Use SendGrid sandbox mode for testing]' \
    '--is.email.smtp.address[SMTP server address]:' \
    '--is.email.smtp.connections[Maximum number of connections to the SMTP server]:' \
    '--is.email.smtp.password[Password to authenticate with]:' \
    '--is.email.smtp.username[Username to authenticate with]:' \
    '--is.email.templates.blob.bucket[Bucket to use]:' \
    '--is.email.templates.blob.path[Path to use]:' \
    '--is.email.templates.directory[Retrieve the email templates from the filesystem]:' \
    '*--is.email.templates.includes[The email templates that will be preloaded on startup]:' \
    '--is.email.templates.source[Source of the email template files (static, directory, url, blob)]:' \
    '--is.email.templates.url[Retrieve the email templates from a web server]:' \
    '--is.end-device-picture.bucket[Bucket used for storing end device pictures]:' \
    '--is.end-device-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.end-device-picture.disable-upload[Disable uploading end device pictures]' \
    '--is.oauth.mount[Path on the server where the OAuth server will be served]:' \
    '--is.oauth.ui.assets-base-url[The base URL to the page assets]:' \
    '--is.oauth.ui.branding-base-url[The base URL to the branding assets]:' \
    '--is.oauth.ui.canonical-url[The page canonical URL]:' \
    '--is.oauth.ui.csrftoken[]:' \
    '*--is.oauth.ui.css-file[The names of the CSS files]:' \
    '--is.oauth.ui.descriptions[The page description]:' \
    '--is.oauth.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--is.oauth.ui.is.base-url[Base URL to the HTTP API]:' \
    '--is.oauth.ui.is.enabled[Enable this API]' \
    '*--is.oauth.ui.js-file[The names of the JS files]:' \
    '--is.oauth.ui.language[The page language]:' \
    '--is.oauth.ui.sentry-dsn[The Sentry DSN]:' \
    '--is.oauth.ui.site-name[The site name]:' \
    '--is.oauth.ui.sub-title[The page sub-title]:' \
    '--is.oauth.ui.theme-color[The page theme color]:' \
    '--is.oauth.ui.title[The page title]:' \
    '--is.profile-picture.bucket[Bucket used for storing profile pictures]:' \
    '--is.profile-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.profile-picture.disable-upload[Disable uploading profile pictures]' \
    '--is.profile-picture.use-gravatar[Use Gravatar fallback for users without profile picture]' \
    '--is.user-registration.admin-approval.required[Require admin approval for new users]' \
    '--is.user-registration.contact-info-validation.required[Require contact info validation for new users]' \
    '--is.user-registration.invitation.required[Require invitations for new users]' \
    '--is.user-registration.invitation.token-ttl[TTL of user invitation tokens]:' \
    '--is.user-registration.password-requirements.max-length[Maximum password length]:' \
    '--is.user-registration.password-requirements.min-digits[Minimum number of digits]:' \
    '--is.user-registration.password-requirements.min-length[Minimum password length]:' \
    '--is.user-registration.password-requirements.min-special[Minimum number of special characters]:' \
    '--is.user-registration.password-requirements.min-uppercase[Minimum number of uppercase letters]:' \
    '--is.user-rights.create-applications[Allow non-admin users to create applications in their user account]' \
    '--is.user-rights.create-clients[Allow non-admin users to create OAuth clients in their user account]' \
    '--is.user-rights.create-gateways[Allow non-admin users to create gateways in their user account]' \
    '--is.user-rights.create-organizations[Allow non-admin users to create organizations in their user account]' \
    '--js.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '*--js.join-eui-prefix[JoinEUI prefixes handled by this JS]:' \
    '--key-vault.cache.size[Cache size. Caching is disabled if size is 0]:' \
    '--key-vault.cache.ttl[Cache elements time to live. No expiration mechanism is used if TTL is 0]:' \
    '--key-vault.provider[Provider (static)]:' \
    '*--key-vault.static[]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--ns.application-uplink-queue.buffer-size[]:' \
    '--ns.cooldown-window[Time window starting right after deduplication window, during which, duplicate messages are discarded]:' \
    '--ns.deduplication-window[Time window during which, duplicate messages are collected for metadata]:' \
    '--ns.default-mac-settings.adr-margin[The default margin Network Server should add in ADR requests if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-b-timeout[Deadline for a device in class B mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-c-timeout[Deadline for a device in class C mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.desired-rx1-delay[Desired Rx1Delay value Network Server should use if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-count-periodicity[Number of uplink messages after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-time-periodicity[The interval after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '*--ns.dev-addr-prefixes[Device address prefixes of this Network Server]:' \
    '--ns.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--ns.downlink-priorities.join-accept[Priority for join-accept messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.mac-commands[Priority for messages carrying MAC commands (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.max-application-downlink[Maximum priority for application downlink messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.interop.blob.bucket[Bucket to use]:' \
    '--ns.interop.blob.path[Path to use]:' \
    '--ns.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--ns.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--ns.interop.url[URL, which contains interoperability client configuration]:' \
    '--ns.net-id[NetID of this Network Server]:' \
    '--pba.cluster-id[Cluster ID uniquely identifying this cluster within a NetID and tenant]:' \
    '--pba.data-plane-address[Address of the Packet Broker Data Plane]:' \
    '--pba.forwarder.enable[Enable Forwarder role]' \
    '--pba.forwarder.token-key[AES 128 or 256-bit key for encrypting tokens]:' \
    '--pba.forwarder.worker-pool.limit[Limit of active workers]:' \
    '--pba.home-network.blacklist-forwarder[Blacklist traffic from Forwarder to avoid traffic loops]' \
    '*--pba.home-network.dev-addr-prefixes[DevAddr prefixes to subscribe to]:' \
    '--pba.home-network.enable[Enable Home Network role]' \
    '--pba.home-network.worker-pool.limit[Limit of active workers]:' \
    '--pba.net-id[LoRa Alliance NetID]:' \
    '--pba.tenant-id[Tenant ID within the NetID]:' \
    '--pba.tls.certificate[Location of TLS certificate]:' \
    '--pba.tls.key[Location of TLS private key]:' \
    '--pba.tls.key-vault.id[ID of the certificate]:' \
    '--pba.tls.source[Source of the TLS certificate (file, key-vault)]:' \
    '--redis.address[Address of the Redis server]:' \
    '--redis.database[Redis database to use]:' \
    '*--redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--redis.failover.master-name[Redis Sentinel master name]:' \
    '*--redis.namespace[Namespace for Redis keys]:' \
    '--redis.password[Password of the Redis server]:' \
    '--redis.pool-size[The maximum number of database connections]:' \
    '--rights.ttl[Validity of Identity Server responses]:' \
    '--sentry.dsn[Sentry Data Source Name]:' \
    '--tls.acme.default-host[Default host to assume for clients without SNI]:' \
    '--tls.acme.dir[Location of ACME storage directory]:' \
    '--tls.acme.email[Email address to register with the ACME account]:' \
    '--tls.acme.enable[Enable automated certificate management (ACME). This setting is deprecated; set the TLS config source to acme instead]' \
    '--tls.acme.endpoint[ACME endpoint]:' \
    '*--tls.acme.hosts[Hosts to enable automatic certificates for]:' \
    '--tls.certificate[Location of TLS certificate]:' \
    '--tls.insecure-skip-verify[Skip verification of certificate chains (insecure)]' \
    '--tls.key[Location of TLS private key]:' \
    '--tls.key-vault.id[ID of the certificate]:' \
    '--tls.root-ca[Location of TLS root CA certificate (optional)]:' \
    '--tls.source[Source of the TLS certificate (file, acme, key-vault)]:'
}

function _ttn-lw-stack_is-db_create-oauth-client {
  _arguments \
    '--authorized[Mark OAuth client as pre-authorized]' \
    '--endorsed[Mark OAuth client as endorsed ]' \
    '--id[OAuth client ID]:' \
    '*--logout-redirect-uri[Logout redirect URIs of the OAuth client]:' \
    '--name[Name of the OAuth client]:' \
    '--no-secret[Do not generate a secret for the OAuth client]' \
    '--owner[Owner of the OAuth client]:' \
    '*--redirect-uri[Redirect URIs of the OAuth client]:' \
    '--secret[Secret of the OAuth client]:' \
    '--as.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--as.interop.blob.bucket[Bucket to use]:' \
    '--as.interop.blob.path[Path to use]:' \
    '--as.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--as.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--as.interop.id[AS-ID used for interoperability]:' \
    '--as.interop.url[URL, which contains interoperability client configuration]:' \
    '--as.link-mode[Mode to link applications to their Network Server (all, explicit)]:' \
    '--as.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--as.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--as.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--as.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--as.webhooks.downlink.public-address[Public address of the HTTP webhooks frontend]:' \
    '--as.webhooks.downlink.public-tls-address[Public address of the HTTPS webhooks frontend]:' \
    '--as.webhooks.queue-size[Number of requests to queue]:' \
    '--as.webhooks.target[Target of the integration (direct)]:' \
    '--as.webhooks.templates.directory[Retrieve the webhook templates from the filesystem]:' \
    '--as.webhooks.templates.logo-base-url[The base URL for the logo storage]:' \
    '--as.webhooks.templates.url[Retrieve the webhook templates from a web server]:' \
    '--as.webhooks.timeout[Wait timeout of the target to process the request]:' \
    '--as.webhooks.workers[Number of workers to process requests]:' \
    '--blob.aws.access-key-id[Access key ID]:' \
    '--blob.aws.endpoint[S3 endpoint]:' \
    '--blob.aws.region[S3 region]:' \
    '--blob.aws.secret-access-key[Secret access key]:' \
    '--blob.aws.session-token[Session token]:' \
    '--blob.gcp.credentials[JSON data of the GCP credentials, if not using JSON file]:' \
    '--blob.gcp.credentials-file[Path to the GCP credentials JSON file]:' \
    '--blob.local.directory[OS filesystem directory, which contains buckets]:' \
    '--blob.provider[Blob store provider (local, aws, gcp)]:' \
    '--cache.redis.address[Address of the Redis server]:' \
    '--cache.redis.database[Redis database to use]:' \
    '*--cache.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--cache.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--cache.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--cache.redis.namespace[Namespace for Redis keys]:' \
    '--cache.redis.password[Password of the Redis server]:' \
    '--cache.redis.pool-size[The maximum number of database connections]:' \
    '--cache.service[Service used for caching (redis)]:' \
    '--cluster.address[Address to use for cluster communication]:' \
    '--cluster.application-server[Address for the Application Server]:' \
    '--cluster.crypto-server[Address for the Crypto Server]:' \
    '--cluster.gateway-server[Address for the Gateway Server]:' \
    '--cluster.identity-server[Address for the Identity Server]:' \
    '*--cluster.join[Addresses of cluster peers to join]:' \
    '--cluster.join-server[Address for the Join Server]:' \
    '*--cluster.keys[Keys used to communicate between components of the cluster. The first one will be used by the cluster to identify itself]:' \
    '--cluster.name[Name of the current cluster peer (default: $HOSTNAME)]:' \
    '--cluster.network-server[Address for the Network Server]:' \
    '--cluster.tls[Do cluster gRPC over TLS]' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--console.mount[Path on the server where the Console will be served]:' \
    '--console.oauth.authorize-url[The OAuth Authorize URL]:' \
    '--console.oauth.client-id[The OAuth client ID]:' \
    '--console.oauth.client-secret[The OAuth client secret]:' \
    '--console.oauth.logout-url[The OAuth Logout URL]:' \
    '--console.oauth.token-url[The OAuth Token Exchange URL]:' \
    '--console.ui.as.base-url[Base URL to the HTTP API]:' \
    '--console.ui.as.enabled[Enable this API]' \
    '--console.ui.assets-base-url[The base URL to the page assets]:' \
    '--console.ui.branding-base-url[The base URL to the branding assets]:' \
    '--console.ui.canonical-url[The page canonical URL]:' \
    '--console.ui.csrftoken[]:' \
    '*--console.ui.css-file[The names of the CSS files]:' \
    '--console.ui.descriptions[The page description]:' \
    '--console.ui.documentation-base-url[The base URL for generating documentation links]:' \
    '--console.ui.edtc.base-url[Base URL to the HTTP API]:' \
    '--console.ui.edtc.enabled[Enable this API]' \
    '--console.ui.gs.base-url[Base URL to the HTTP API]:' \
    '--console.ui.gs.enabled[Enable this API]' \
    '--console.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--console.ui.is.base-url[Base URL to the HTTP API]:' \
    '--console.ui.is.enabled[Enable this API]' \
    '*--console.ui.js-file[The names of the JS files]:' \
    '--console.ui.js.base-url[Base URL to the HTTP API]:' \
    '--console.ui.js.enabled[Enable this API]' \
    '--console.ui.language[The page language]:' \
    '--console.ui.ns.base-url[Base URL to the HTTP API]:' \
    '--console.ui.ns.enabled[Enable this API]' \
    '--console.ui.qrg.base-url[Base URL to the HTTP API]:' \
    '--console.ui.qrg.enabled[Enable this API]' \
    '--console.ui.sentry-dsn[The Sentry DSN]:' \
    '--console.ui.site-name[The site name]:' \
    '--console.ui.sub-title[The page sub-title]:' \
    '--console.ui.support-link[The URI that the support button will point to]:' \
    '--console.ui.theme-color[The page theme color]:' \
    '--console.ui.title[The page title]:' \
    '--device-repository.blob.bucket[Bucket to use]:' \
    '--device-repository.blob.path[Path to use]:' \
    '--device-repository.config-source[Source of the device repository (static, directory, url, blob)]:' \
    '--device-repository.directory[OS filesystem directory, which contains device repository]:' \
    '--device-repository.url[URL, which contains device repository]:' \
    '*--dtc.enabled[Enabled converters]:' \
    '--events.backend[Backend to use for events (internal, redis, cloud)]:' \
    '--events.cloud.publish-url[URL for the topic to send events]:' \
    '--events.cloud.subscribe-url[URL for the subscription to receiving events]:' \
    '--events.redis.address[Address of the Redis server]:' \
    '--events.redis.database[Redis database to use]:' \
    '*--events.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--events.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--events.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--events.redis.namespace[Namespace for Redis keys]:' \
    '--events.redis.password[Password of the Redis server]:' \
    '--events.redis.pool-size[The maximum number of database connections]:' \
    '--frequency-plans.blob.bucket[Bucket to use]:' \
    '--frequency-plans.blob.path[Path to use]:' \
    '--frequency-plans.config-source[Source of the frequency plans (static, directory, url, blob)]:' \
    '--frequency-plans.directory[OS filesystem directory, which contains frequency plans]:' \
    '--frequency-plans.url[URL, which contains frequency plans]:' \
    '--gcs.basic-station.allow-cups-uri-update[Allow CUPS URI updates]' \
    '--gcs.basic-station.default.lns-uri[The default LNS URI that the gateways should use]:' \
    '--gcs.basic-station.owner-for-unknown.account-type[Type of account to register unknown gateways to (user|organization)]:' \
    '--gcs.basic-station.owner-for-unknown.api-key[API Key to use for unknown gateway registration]:' \
    '--gcs.basic-station.owner-for-unknown.id[ID of the account to register unknown gateways to]:' \
    '--gcs.basic-station.require-explicit-enable[Require gateways to explicitly enable CUPS]' \
    '--gcs.require-auth[Require authentication for the HTTP endpoints.]' \
    '--gcs.the-things-gateway.default.firmware-url[The default URL to the firmware storage]:' \
    '--gcs.the-things-gateway.default.mqtt-server[The default MQTT server that the gateways should use]:' \
    '--gcs.the-things-gateway.default.update-channel[The default update channel that the gateways should use]:' \
    '--grpc.allow-insecure-for-credentials[Allow transmission of credentials over insecure transport]' \
    '--grpc.listen[Address for the TCP gRPC server to listen on]:' \
    '--grpc.listen-tls[Address for the TLS gRPC server to listen on]:' \
    '*--grpc.log-ignore-methods[List of paths for which successful requests will not be logged]:' \
    '--gs.basic-station.fallback-frequency-plan-id[Fallback frequency plan ID for non-registered gateways]:' \
    '--gs.basic-station.listen[Address for the Basic Station frontend to listen on]:' \
    '--gs.basic-station.listen-tls[Address for the Basic Station frontend to listen on (with TLS)]:' \
    '--gs.basic-station.use-traffic-tls-address[Use WSS for the traffic address regardless of the TLS setting]' \
    '--gs.basic-station.ws-ping-interval[Interval to send WS ping messages]:' \
    '*--gs.forward[Forward the DevAddr prefixes to the specified hosts]:' \
    '--gs.mqtt-v2.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt-v2.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt-v2.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt-v2.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.require-registered-gateways[Require the gateways to be registered in the Identity Server]' \
    '--gs.udp.addr-change-block[Time to block traffic when a gateway'\''s address changes]:' \
    '--gs.udp.connection-expires[Time after which a connection of a gateway expires]:' \
    '--gs.udp.downlink-path-expires[Time after which a downlink path to a gateway expires]:' \
    '*--gs.udp.listeners[Listen addresses with (optional) fallback frequency plan ID for non-registered gateways]:' \
    '--gs.udp.packet-buffer[Buffer size of unhandled packets]:' \
    '--gs.udp.packet-handlers[Number of concurrent packet handlers]:' \
    '--gs.udp.rate-limiting.enable[Enable rate limiting for gateways]' \
    '--gs.udp.rate-limiting.messages[Number of past messages to check timestamp for]:' \
    '--gs.udp.rate-limiting.threshold[Filter packet if timestamp is not newer than the older timestamps of the previous messages by this threshold]:' \
    '--gs.udp.schedule-late-time[Time in advance to send downlink to the gateway when scheduling late]:' \
    '--gs.update-connection-stats-debounce-time[Time before repeated refresh of the gateway connection stats]:' \
    '--gs.update-gateway-location-debounce-time[Debounce time for gateway location updates from status messages]:' \
    '--http.cookie.block-key[Key for cookie contents encryption (16, 24 or 32 bytes)]:' \
    '--http.cookie.hash-key[Key for cookie contents verification (32 or 64 bytes)]:' \
    '--http.health.enable[Enable health check endpoint on HTTP server]' \
    '--http.health.password[Password to protect health endpoint (username is health)]:' \
    '--http.listen[Address for the HTTP server to listen on]:' \
    '--http.listen-tls[Address for the HTTPS server to listen on]:' \
    '*--http.log-ignore-paths[List of paths for which successful requests will not be logged]:' \
    '--http.metrics.enable[Enable metrics endpoint on HTTP server]' \
    '--http.metrics.password[Password to protect metrics endpoint (username is metrics)]:' \
    '--http.pprof.enable[Enable pprof endpoint on HTTP server]' \
    '--http.pprof.password[Password to protect pprof endpoint (username is pprof)]:' \
    '--http.redirect-to-host[Redirect all requests to one host]:' \
    '--http.redirect-to-tls[Redirect HTTP requests to HTTPS]' \
    '--http.static.mount[Path on the server where static assets will be served]:' \
    '*--http.static.search-path[List of paths for finding the directory to serve static assets from]:' \
    '*--http.trusted-proxies[CIDRs of trusted reverse proxies]:' \
    '--interop.listen-tls[Address for the interop server to listen on]:' \
    '--interop.sender-client-ca.blob.bucket[Bucket to use]:' \
    '--interop.sender-client-ca.blob.path[Path to use]:' \
    '--interop.sender-client-ca.directory[OS filesystem directory, which contains sender client CA configuration]:' \
    '--interop.sender-client-ca.source[Source of the sender client CA configuration (static, directory, url, blob)]:' \
    '--interop.sender-client-ca.url[URL, which contains sender client CA configuration]:' \
    '--is.auth-cache.membership-ttl[TTL of membership caches]:' \
    '--is.database-uri[Database connection URI]:' \
    '--is.email.network.console-url[The URL of the Console]:' \
    '--is.email.network.identity-server-url[The URL of the Identity Server]:' \
    '--is.email.network.name[The name of the network]:' \
    '--is.email.provider[Email provider to use]:' \
    '--is.email.sender-address[The address of the sender]:' \
    '--is.email.sender-name[The name of the sender]:' \
    '--is.email.sendgrid.api-key[The SendGrid API key to use]:' \
    '--is.email.sendgrid.sandbox[Use SendGrid sandbox mode for testing]' \
    '--is.email.smtp.address[SMTP server address]:' \
    '--is.email.smtp.connections[Maximum number of connections to the SMTP server]:' \
    '--is.email.smtp.password[Password to authenticate with]:' \
    '--is.email.smtp.username[Username to authenticate with]:' \
    '--is.email.templates.blob.bucket[Bucket to use]:' \
    '--is.email.templates.blob.path[Path to use]:' \
    '--is.email.templates.directory[Retrieve the email templates from the filesystem]:' \
    '*--is.email.templates.includes[The email templates that will be preloaded on startup]:' \
    '--is.email.templates.source[Source of the email template files (static, directory, url, blob)]:' \
    '--is.email.templates.url[Retrieve the email templates from a web server]:' \
    '--is.end-device-picture.bucket[Bucket used for storing end device pictures]:' \
    '--is.end-device-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.end-device-picture.disable-upload[Disable uploading end device pictures]' \
    '--is.oauth.mount[Path on the server where the OAuth server will be served]:' \
    '--is.oauth.ui.assets-base-url[The base URL to the page assets]:' \
    '--is.oauth.ui.branding-base-url[The base URL to the branding assets]:' \
    '--is.oauth.ui.canonical-url[The page canonical URL]:' \
    '--is.oauth.ui.csrftoken[]:' \
    '*--is.oauth.ui.css-file[The names of the CSS files]:' \
    '--is.oauth.ui.descriptions[The page description]:' \
    '--is.oauth.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--is.oauth.ui.is.base-url[Base URL to the HTTP API]:' \
    '--is.oauth.ui.is.enabled[Enable this API]' \
    '*--is.oauth.ui.js-file[The names of the JS files]:' \
    '--is.oauth.ui.language[The page language]:' \
    '--is.oauth.ui.sentry-dsn[The Sentry DSN]:' \
    '--is.oauth.ui.site-name[The site name]:' \
    '--is.oauth.ui.sub-title[The page sub-title]:' \
    '--is.oauth.ui.theme-color[The page theme color]:' \
    '--is.oauth.ui.title[The page title]:' \
    '--is.profile-picture.bucket[Bucket used for storing profile pictures]:' \
    '--is.profile-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.profile-picture.disable-upload[Disable uploading profile pictures]' \
    '--is.profile-picture.use-gravatar[Use Gravatar fallback for users without profile picture]' \
    '--is.user-registration.admin-approval.required[Require admin approval for new users]' \
    '--is.user-registration.contact-info-validation.required[Require contact info validation for new users]' \
    '--is.user-registration.invitation.required[Require invitations for new users]' \
    '--is.user-registration.invitation.token-ttl[TTL of user invitation tokens]:' \
    '--is.user-registration.password-requirements.max-length[Maximum password length]:' \
    '--is.user-registration.password-requirements.min-digits[Minimum number of digits]:' \
    '--is.user-registration.password-requirements.min-length[Minimum password length]:' \
    '--is.user-registration.password-requirements.min-special[Minimum number of special characters]:' \
    '--is.user-registration.password-requirements.min-uppercase[Minimum number of uppercase letters]:' \
    '--is.user-rights.create-applications[Allow non-admin users to create applications in their user account]' \
    '--is.user-rights.create-clients[Allow non-admin users to create OAuth clients in their user account]' \
    '--is.user-rights.create-gateways[Allow non-admin users to create gateways in their user account]' \
    '--is.user-rights.create-organizations[Allow non-admin users to create organizations in their user account]' \
    '--js.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '*--js.join-eui-prefix[JoinEUI prefixes handled by this JS]:' \
    '--key-vault.cache.size[Cache size. Caching is disabled if size is 0]:' \
    '--key-vault.cache.ttl[Cache elements time to live. No expiration mechanism is used if TTL is 0]:' \
    '--key-vault.provider[Provider (static)]:' \
    '*--key-vault.static[]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--ns.application-uplink-queue.buffer-size[]:' \
    '--ns.cooldown-window[Time window starting right after deduplication window, during which, duplicate messages are discarded]:' \
    '--ns.deduplication-window[Time window during which, duplicate messages are collected for metadata]:' \
    '--ns.default-mac-settings.adr-margin[The default margin Network Server should add in ADR requests if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-b-timeout[Deadline for a device in class B mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-c-timeout[Deadline for a device in class C mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.desired-rx1-delay[Desired Rx1Delay value Network Server should use if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-count-periodicity[Number of uplink messages after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-time-periodicity[The interval after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '*--ns.dev-addr-prefixes[Device address prefixes of this Network Server]:' \
    '--ns.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--ns.downlink-priorities.join-accept[Priority for join-accept messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.mac-commands[Priority for messages carrying MAC commands (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.max-application-downlink[Maximum priority for application downlink messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.interop.blob.bucket[Bucket to use]:' \
    '--ns.interop.blob.path[Path to use]:' \
    '--ns.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--ns.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--ns.interop.url[URL, which contains interoperability client configuration]:' \
    '--ns.net-id[NetID of this Network Server]:' \
    '--pba.cluster-id[Cluster ID uniquely identifying this cluster within a NetID and tenant]:' \
    '--pba.data-plane-address[Address of the Packet Broker Data Plane]:' \
    '--pba.forwarder.enable[Enable Forwarder role]' \
    '--pba.forwarder.token-key[AES 128 or 256-bit key for encrypting tokens]:' \
    '--pba.forwarder.worker-pool.limit[Limit of active workers]:' \
    '--pba.home-network.blacklist-forwarder[Blacklist traffic from Forwarder to avoid traffic loops]' \
    '*--pba.home-network.dev-addr-prefixes[DevAddr prefixes to subscribe to]:' \
    '--pba.home-network.enable[Enable Home Network role]' \
    '--pba.home-network.worker-pool.limit[Limit of active workers]:' \
    '--pba.net-id[LoRa Alliance NetID]:' \
    '--pba.tenant-id[Tenant ID within the NetID]:' \
    '--pba.tls.certificate[Location of TLS certificate]:' \
    '--pba.tls.key[Location of TLS private key]:' \
    '--pba.tls.key-vault.id[ID of the certificate]:' \
    '--pba.tls.source[Source of the TLS certificate (file, key-vault)]:' \
    '--redis.address[Address of the Redis server]:' \
    '--redis.database[Redis database to use]:' \
    '*--redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--redis.failover.master-name[Redis Sentinel master name]:' \
    '*--redis.namespace[Namespace for Redis keys]:' \
    '--redis.password[Password of the Redis server]:' \
    '--redis.pool-size[The maximum number of database connections]:' \
    '--rights.ttl[Validity of Identity Server responses]:' \
    '--sentry.dsn[Sentry Data Source Name]:' \
    '--tls.acme.default-host[Default host to assume for clients without SNI]:' \
    '--tls.acme.dir[Location of ACME storage directory]:' \
    '--tls.acme.email[Email address to register with the ACME account]:' \
    '--tls.acme.enable[Enable automated certificate management (ACME). This setting is deprecated; set the TLS config source to acme instead]' \
    '--tls.acme.endpoint[ACME endpoint]:' \
    '*--tls.acme.hosts[Hosts to enable automatic certificates for]:' \
    '--tls.certificate[Location of TLS certificate]:' \
    '--tls.insecure-skip-verify[Skip verification of certificate chains (insecure)]' \
    '--tls.key[Location of TLS private key]:' \
    '--tls.key-vault.id[ID of the certificate]:' \
    '--tls.root-ca[Location of TLS root CA certificate (optional)]:' \
    '--tls.source[Source of the TLS certificate (file, acme, key-vault)]:'
}

function _ttn-lw-stack_is-db_init {
  _arguments \
    '--as.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--as.interop.blob.bucket[Bucket to use]:' \
    '--as.interop.blob.path[Path to use]:' \
    '--as.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--as.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--as.interop.id[AS-ID used for interoperability]:' \
    '--as.interop.url[URL, which contains interoperability client configuration]:' \
    '--as.link-mode[Mode to link applications to their Network Server (all, explicit)]:' \
    '--as.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--as.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--as.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--as.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--as.webhooks.downlink.public-address[Public address of the HTTP webhooks frontend]:' \
    '--as.webhooks.downlink.public-tls-address[Public address of the HTTPS webhooks frontend]:' \
    '--as.webhooks.queue-size[Number of requests to queue]:' \
    '--as.webhooks.target[Target of the integration (direct)]:' \
    '--as.webhooks.templates.directory[Retrieve the webhook templates from the filesystem]:' \
    '--as.webhooks.templates.logo-base-url[The base URL for the logo storage]:' \
    '--as.webhooks.templates.url[Retrieve the webhook templates from a web server]:' \
    '--as.webhooks.timeout[Wait timeout of the target to process the request]:' \
    '--as.webhooks.workers[Number of workers to process requests]:' \
    '--blob.aws.access-key-id[Access key ID]:' \
    '--blob.aws.endpoint[S3 endpoint]:' \
    '--blob.aws.region[S3 region]:' \
    '--blob.aws.secret-access-key[Secret access key]:' \
    '--blob.aws.session-token[Session token]:' \
    '--blob.gcp.credentials[JSON data of the GCP credentials, if not using JSON file]:' \
    '--blob.gcp.credentials-file[Path to the GCP credentials JSON file]:' \
    '--blob.local.directory[OS filesystem directory, which contains buckets]:' \
    '--blob.provider[Blob store provider (local, aws, gcp)]:' \
    '--cache.redis.address[Address of the Redis server]:' \
    '--cache.redis.database[Redis database to use]:' \
    '*--cache.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--cache.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--cache.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--cache.redis.namespace[Namespace for Redis keys]:' \
    '--cache.redis.password[Password of the Redis server]:' \
    '--cache.redis.pool-size[The maximum number of database connections]:' \
    '--cache.service[Service used for caching (redis)]:' \
    '--cluster.address[Address to use for cluster communication]:' \
    '--cluster.application-server[Address for the Application Server]:' \
    '--cluster.crypto-server[Address for the Crypto Server]:' \
    '--cluster.gateway-server[Address for the Gateway Server]:' \
    '--cluster.identity-server[Address for the Identity Server]:' \
    '*--cluster.join[Addresses of cluster peers to join]:' \
    '--cluster.join-server[Address for the Join Server]:' \
    '*--cluster.keys[Keys used to communicate between components of the cluster. The first one will be used by the cluster to identify itself]:' \
    '--cluster.name[Name of the current cluster peer (default: $HOSTNAME)]:' \
    '--cluster.network-server[Address for the Network Server]:' \
    '--cluster.tls[Do cluster gRPC over TLS]' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--console.mount[Path on the server where the Console will be served]:' \
    '--console.oauth.authorize-url[The OAuth Authorize URL]:' \
    '--console.oauth.client-id[The OAuth client ID]:' \
    '--console.oauth.client-secret[The OAuth client secret]:' \
    '--console.oauth.logout-url[The OAuth Logout URL]:' \
    '--console.oauth.token-url[The OAuth Token Exchange URL]:' \
    '--console.ui.as.base-url[Base URL to the HTTP API]:' \
    '--console.ui.as.enabled[Enable this API]' \
    '--console.ui.assets-base-url[The base URL to the page assets]:' \
    '--console.ui.branding-base-url[The base URL to the branding assets]:' \
    '--console.ui.canonical-url[The page canonical URL]:' \
    '--console.ui.csrftoken[]:' \
    '*--console.ui.css-file[The names of the CSS files]:' \
    '--console.ui.descriptions[The page description]:' \
    '--console.ui.documentation-base-url[The base URL for generating documentation links]:' \
    '--console.ui.edtc.base-url[Base URL to the HTTP API]:' \
    '--console.ui.edtc.enabled[Enable this API]' \
    '--console.ui.gs.base-url[Base URL to the HTTP API]:' \
    '--console.ui.gs.enabled[Enable this API]' \
    '--console.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--console.ui.is.base-url[Base URL to the HTTP API]:' \
    '--console.ui.is.enabled[Enable this API]' \
    '*--console.ui.js-file[The names of the JS files]:' \
    '--console.ui.js.base-url[Base URL to the HTTP API]:' \
    '--console.ui.js.enabled[Enable this API]' \
    '--console.ui.language[The page language]:' \
    '--console.ui.ns.base-url[Base URL to the HTTP API]:' \
    '--console.ui.ns.enabled[Enable this API]' \
    '--console.ui.qrg.base-url[Base URL to the HTTP API]:' \
    '--console.ui.qrg.enabled[Enable this API]' \
    '--console.ui.sentry-dsn[The Sentry DSN]:' \
    '--console.ui.site-name[The site name]:' \
    '--console.ui.sub-title[The page sub-title]:' \
    '--console.ui.support-link[The URI that the support button will point to]:' \
    '--console.ui.theme-color[The page theme color]:' \
    '--console.ui.title[The page title]:' \
    '--device-repository.blob.bucket[Bucket to use]:' \
    '--device-repository.blob.path[Path to use]:' \
    '--device-repository.config-source[Source of the device repository (static, directory, url, blob)]:' \
    '--device-repository.directory[OS filesystem directory, which contains device repository]:' \
    '--device-repository.url[URL, which contains device repository]:' \
    '*--dtc.enabled[Enabled converters]:' \
    '--events.backend[Backend to use for events (internal, redis, cloud)]:' \
    '--events.cloud.publish-url[URL for the topic to send events]:' \
    '--events.cloud.subscribe-url[URL for the subscription to receiving events]:' \
    '--events.redis.address[Address of the Redis server]:' \
    '--events.redis.database[Redis database to use]:' \
    '*--events.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--events.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--events.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--events.redis.namespace[Namespace for Redis keys]:' \
    '--events.redis.password[Password of the Redis server]:' \
    '--events.redis.pool-size[The maximum number of database connections]:' \
    '--frequency-plans.blob.bucket[Bucket to use]:' \
    '--frequency-plans.blob.path[Path to use]:' \
    '--frequency-plans.config-source[Source of the frequency plans (static, directory, url, blob)]:' \
    '--frequency-plans.directory[OS filesystem directory, which contains frequency plans]:' \
    '--frequency-plans.url[URL, which contains frequency plans]:' \
    '--gcs.basic-station.allow-cups-uri-update[Allow CUPS URI updates]' \
    '--gcs.basic-station.default.lns-uri[The default LNS URI that the gateways should use]:' \
    '--gcs.basic-station.owner-for-unknown.account-type[Type of account to register unknown gateways to (user|organization)]:' \
    '--gcs.basic-station.owner-for-unknown.api-key[API Key to use for unknown gateway registration]:' \
    '--gcs.basic-station.owner-for-unknown.id[ID of the account to register unknown gateways to]:' \
    '--gcs.basic-station.require-explicit-enable[Require gateways to explicitly enable CUPS]' \
    '--gcs.require-auth[Require authentication for the HTTP endpoints.]' \
    '--gcs.the-things-gateway.default.firmware-url[The default URL to the firmware storage]:' \
    '--gcs.the-things-gateway.default.mqtt-server[The default MQTT server that the gateways should use]:' \
    '--gcs.the-things-gateway.default.update-channel[The default update channel that the gateways should use]:' \
    '--grpc.allow-insecure-for-credentials[Allow transmission of credentials over insecure transport]' \
    '--grpc.listen[Address for the TCP gRPC server to listen on]:' \
    '--grpc.listen-tls[Address for the TLS gRPC server to listen on]:' \
    '*--grpc.log-ignore-methods[List of paths for which successful requests will not be logged]:' \
    '--gs.basic-station.fallback-frequency-plan-id[Fallback frequency plan ID for non-registered gateways]:' \
    '--gs.basic-station.listen[Address for the Basic Station frontend to listen on]:' \
    '--gs.basic-station.listen-tls[Address for the Basic Station frontend to listen on (with TLS)]:' \
    '--gs.basic-station.use-traffic-tls-address[Use WSS for the traffic address regardless of the TLS setting]' \
    '--gs.basic-station.ws-ping-interval[Interval to send WS ping messages]:' \
    '*--gs.forward[Forward the DevAddr prefixes to the specified hosts]:' \
    '--gs.mqtt-v2.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt-v2.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt-v2.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt-v2.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.require-registered-gateways[Require the gateways to be registered in the Identity Server]' \
    '--gs.udp.addr-change-block[Time to block traffic when a gateway'\''s address changes]:' \
    '--gs.udp.connection-expires[Time after which a connection of a gateway expires]:' \
    '--gs.udp.downlink-path-expires[Time after which a downlink path to a gateway expires]:' \
    '*--gs.udp.listeners[Listen addresses with (optional) fallback frequency plan ID for non-registered gateways]:' \
    '--gs.udp.packet-buffer[Buffer size of unhandled packets]:' \
    '--gs.udp.packet-handlers[Number of concurrent packet handlers]:' \
    '--gs.udp.rate-limiting.enable[Enable rate limiting for gateways]' \
    '--gs.udp.rate-limiting.messages[Number of past messages to check timestamp for]:' \
    '--gs.udp.rate-limiting.threshold[Filter packet if timestamp is not newer than the older timestamps of the previous messages by this threshold]:' \
    '--gs.udp.schedule-late-time[Time in advance to send downlink to the gateway when scheduling late]:' \
    '--gs.update-connection-stats-debounce-time[Time before repeated refresh of the gateway connection stats]:' \
    '--gs.update-gateway-location-debounce-time[Debounce time for gateway location updates from status messages]:' \
    '--http.cookie.block-key[Key for cookie contents encryption (16, 24 or 32 bytes)]:' \
    '--http.cookie.hash-key[Key for cookie contents verification (32 or 64 bytes)]:' \
    '--http.health.enable[Enable health check endpoint on HTTP server]' \
    '--http.health.password[Password to protect health endpoint (username is health)]:' \
    '--http.listen[Address for the HTTP server to listen on]:' \
    '--http.listen-tls[Address for the HTTPS server to listen on]:' \
    '*--http.log-ignore-paths[List of paths for which successful requests will not be logged]:' \
    '--http.metrics.enable[Enable metrics endpoint on HTTP server]' \
    '--http.metrics.password[Password to protect metrics endpoint (username is metrics)]:' \
    '--http.pprof.enable[Enable pprof endpoint on HTTP server]' \
    '--http.pprof.password[Password to protect pprof endpoint (username is pprof)]:' \
    '--http.redirect-to-host[Redirect all requests to one host]:' \
    '--http.redirect-to-tls[Redirect HTTP requests to HTTPS]' \
    '--http.static.mount[Path on the server where static assets will be served]:' \
    '*--http.static.search-path[List of paths for finding the directory to serve static assets from]:' \
    '*--http.trusted-proxies[CIDRs of trusted reverse proxies]:' \
    '--interop.listen-tls[Address for the interop server to listen on]:' \
    '--interop.sender-client-ca.blob.bucket[Bucket to use]:' \
    '--interop.sender-client-ca.blob.path[Path to use]:' \
    '--interop.sender-client-ca.directory[OS filesystem directory, which contains sender client CA configuration]:' \
    '--interop.sender-client-ca.source[Source of the sender client CA configuration (static, directory, url, blob)]:' \
    '--interop.sender-client-ca.url[URL, which contains sender client CA configuration]:' \
    '--is.auth-cache.membership-ttl[TTL of membership caches]:' \
    '--is.database-uri[Database connection URI]:' \
    '--is.email.network.console-url[The URL of the Console]:' \
    '--is.email.network.identity-server-url[The URL of the Identity Server]:' \
    '--is.email.network.name[The name of the network]:' \
    '--is.email.provider[Email provider to use]:' \
    '--is.email.sender-address[The address of the sender]:' \
    '--is.email.sender-name[The name of the sender]:' \
    '--is.email.sendgrid.api-key[The SendGrid API key to use]:' \
    '--is.email.sendgrid.sandbox[Use SendGrid sandbox mode for testing]' \
    '--is.email.smtp.address[SMTP server address]:' \
    '--is.email.smtp.connections[Maximum number of connections to the SMTP server]:' \
    '--is.email.smtp.password[Password to authenticate with]:' \
    '--is.email.smtp.username[Username to authenticate with]:' \
    '--is.email.templates.blob.bucket[Bucket to use]:' \
    '--is.email.templates.blob.path[Path to use]:' \
    '--is.email.templates.directory[Retrieve the email templates from the filesystem]:' \
    '*--is.email.templates.includes[The email templates that will be preloaded on startup]:' \
    '--is.email.templates.source[Source of the email template files (static, directory, url, blob)]:' \
    '--is.email.templates.url[Retrieve the email templates from a web server]:' \
    '--is.end-device-picture.bucket[Bucket used for storing end device pictures]:' \
    '--is.end-device-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.end-device-picture.disable-upload[Disable uploading end device pictures]' \
    '--is.oauth.mount[Path on the server where the OAuth server will be served]:' \
    '--is.oauth.ui.assets-base-url[The base URL to the page assets]:' \
    '--is.oauth.ui.branding-base-url[The base URL to the branding assets]:' \
    '--is.oauth.ui.canonical-url[The page canonical URL]:' \
    '--is.oauth.ui.csrftoken[]:' \
    '*--is.oauth.ui.css-file[The names of the CSS files]:' \
    '--is.oauth.ui.descriptions[The page description]:' \
    '--is.oauth.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--is.oauth.ui.is.base-url[Base URL to the HTTP API]:' \
    '--is.oauth.ui.is.enabled[Enable this API]' \
    '*--is.oauth.ui.js-file[The names of the JS files]:' \
    '--is.oauth.ui.language[The page language]:' \
    '--is.oauth.ui.sentry-dsn[The Sentry DSN]:' \
    '--is.oauth.ui.site-name[The site name]:' \
    '--is.oauth.ui.sub-title[The page sub-title]:' \
    '--is.oauth.ui.theme-color[The page theme color]:' \
    '--is.oauth.ui.title[The page title]:' \
    '--is.profile-picture.bucket[Bucket used for storing profile pictures]:' \
    '--is.profile-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.profile-picture.disable-upload[Disable uploading profile pictures]' \
    '--is.profile-picture.use-gravatar[Use Gravatar fallback for users without profile picture]' \
    '--is.user-registration.admin-approval.required[Require admin approval for new users]' \
    '--is.user-registration.contact-info-validation.required[Require contact info validation for new users]' \
    '--is.user-registration.invitation.required[Require invitations for new users]' \
    '--is.user-registration.invitation.token-ttl[TTL of user invitation tokens]:' \
    '--is.user-registration.password-requirements.max-length[Maximum password length]:' \
    '--is.user-registration.password-requirements.min-digits[Minimum number of digits]:' \
    '--is.user-registration.password-requirements.min-length[Minimum password length]:' \
    '--is.user-registration.password-requirements.min-special[Minimum number of special characters]:' \
    '--is.user-registration.password-requirements.min-uppercase[Minimum number of uppercase letters]:' \
    '--is.user-rights.create-applications[Allow non-admin users to create applications in their user account]' \
    '--is.user-rights.create-clients[Allow non-admin users to create OAuth clients in their user account]' \
    '--is.user-rights.create-gateways[Allow non-admin users to create gateways in their user account]' \
    '--is.user-rights.create-organizations[Allow non-admin users to create organizations in their user account]' \
    '--js.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '*--js.join-eui-prefix[JoinEUI prefixes handled by this JS]:' \
    '--key-vault.cache.size[Cache size. Caching is disabled if size is 0]:' \
    '--key-vault.cache.ttl[Cache elements time to live. No expiration mechanism is used if TTL is 0]:' \
    '--key-vault.provider[Provider (static)]:' \
    '*--key-vault.static[]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--ns.application-uplink-queue.buffer-size[]:' \
    '--ns.cooldown-window[Time window starting right after deduplication window, during which, duplicate messages are discarded]:' \
    '--ns.deduplication-window[Time window during which, duplicate messages are collected for metadata]:' \
    '--ns.default-mac-settings.adr-margin[The default margin Network Server should add in ADR requests if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-b-timeout[Deadline for a device in class B mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-c-timeout[Deadline for a device in class C mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.desired-rx1-delay[Desired Rx1Delay value Network Server should use if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-count-periodicity[Number of uplink messages after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-time-periodicity[The interval after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '*--ns.dev-addr-prefixes[Device address prefixes of this Network Server]:' \
    '--ns.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--ns.downlink-priorities.join-accept[Priority for join-accept messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.mac-commands[Priority for messages carrying MAC commands (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.max-application-downlink[Maximum priority for application downlink messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.interop.blob.bucket[Bucket to use]:' \
    '--ns.interop.blob.path[Path to use]:' \
    '--ns.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--ns.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--ns.interop.url[URL, which contains interoperability client configuration]:' \
    '--ns.net-id[NetID of this Network Server]:' \
    '--pba.cluster-id[Cluster ID uniquely identifying this cluster within a NetID and tenant]:' \
    '--pba.data-plane-address[Address of the Packet Broker Data Plane]:' \
    '--pba.forwarder.enable[Enable Forwarder role]' \
    '--pba.forwarder.token-key[AES 128 or 256-bit key for encrypting tokens]:' \
    '--pba.forwarder.worker-pool.limit[Limit of active workers]:' \
    '--pba.home-network.blacklist-forwarder[Blacklist traffic from Forwarder to avoid traffic loops]' \
    '*--pba.home-network.dev-addr-prefixes[DevAddr prefixes to subscribe to]:' \
    '--pba.home-network.enable[Enable Home Network role]' \
    '--pba.home-network.worker-pool.limit[Limit of active workers]:' \
    '--pba.net-id[LoRa Alliance NetID]:' \
    '--pba.tenant-id[Tenant ID within the NetID]:' \
    '--pba.tls.certificate[Location of TLS certificate]:' \
    '--pba.tls.key[Location of TLS private key]:' \
    '--pba.tls.key-vault.id[ID of the certificate]:' \
    '--pba.tls.source[Source of the TLS certificate (file, key-vault)]:' \
    '--redis.address[Address of the Redis server]:' \
    '--redis.database[Redis database to use]:' \
    '*--redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--redis.failover.master-name[Redis Sentinel master name]:' \
    '*--redis.namespace[Namespace for Redis keys]:' \
    '--redis.password[Password of the Redis server]:' \
    '--redis.pool-size[The maximum number of database connections]:' \
    '--rights.ttl[Validity of Identity Server responses]:' \
    '--sentry.dsn[Sentry Data Source Name]:' \
    '--tls.acme.default-host[Default host to assume for clients without SNI]:' \
    '--tls.acme.dir[Location of ACME storage directory]:' \
    '--tls.acme.email[Email address to register with the ACME account]:' \
    '--tls.acme.enable[Enable automated certificate management (ACME). This setting is deprecated; set the TLS config source to acme instead]' \
    '--tls.acme.endpoint[ACME endpoint]:' \
    '*--tls.acme.hosts[Hosts to enable automatic certificates for]:' \
    '--tls.certificate[Location of TLS certificate]:' \
    '--tls.insecure-skip-verify[Skip verification of certificate chains (insecure)]' \
    '--tls.key[Location of TLS private key]:' \
    '--tls.key-vault.id[ID of the certificate]:' \
    '--tls.root-ca[Location of TLS root CA certificate (optional)]:' \
    '--tls.source[Source of the TLS certificate (file, acme, key-vault)]:'
}

function _ttn-lw-stack_is-db_migrate {
  _arguments \
    '--as.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--as.interop.blob.bucket[Bucket to use]:' \
    '--as.interop.blob.path[Path to use]:' \
    '--as.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--as.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--as.interop.id[AS-ID used for interoperability]:' \
    '--as.interop.url[URL, which contains interoperability client configuration]:' \
    '--as.link-mode[Mode to link applications to their Network Server (all, explicit)]:' \
    '--as.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--as.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--as.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--as.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--as.webhooks.downlink.public-address[Public address of the HTTP webhooks frontend]:' \
    '--as.webhooks.downlink.public-tls-address[Public address of the HTTPS webhooks frontend]:' \
    '--as.webhooks.queue-size[Number of requests to queue]:' \
    '--as.webhooks.target[Target of the integration (direct)]:' \
    '--as.webhooks.templates.directory[Retrieve the webhook templates from the filesystem]:' \
    '--as.webhooks.templates.logo-base-url[The base URL for the logo storage]:' \
    '--as.webhooks.templates.url[Retrieve the webhook templates from a web server]:' \
    '--as.webhooks.timeout[Wait timeout of the target to process the request]:' \
    '--as.webhooks.workers[Number of workers to process requests]:' \
    '--blob.aws.access-key-id[Access key ID]:' \
    '--blob.aws.endpoint[S3 endpoint]:' \
    '--blob.aws.region[S3 region]:' \
    '--blob.aws.secret-access-key[Secret access key]:' \
    '--blob.aws.session-token[Session token]:' \
    '--blob.gcp.credentials[JSON data of the GCP credentials, if not using JSON file]:' \
    '--blob.gcp.credentials-file[Path to the GCP credentials JSON file]:' \
    '--blob.local.directory[OS filesystem directory, which contains buckets]:' \
    '--blob.provider[Blob store provider (local, aws, gcp)]:' \
    '--cache.redis.address[Address of the Redis server]:' \
    '--cache.redis.database[Redis database to use]:' \
    '*--cache.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--cache.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--cache.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--cache.redis.namespace[Namespace for Redis keys]:' \
    '--cache.redis.password[Password of the Redis server]:' \
    '--cache.redis.pool-size[The maximum number of database connections]:' \
    '--cache.service[Service used for caching (redis)]:' \
    '--cluster.address[Address to use for cluster communication]:' \
    '--cluster.application-server[Address for the Application Server]:' \
    '--cluster.crypto-server[Address for the Crypto Server]:' \
    '--cluster.gateway-server[Address for the Gateway Server]:' \
    '--cluster.identity-server[Address for the Identity Server]:' \
    '*--cluster.join[Addresses of cluster peers to join]:' \
    '--cluster.join-server[Address for the Join Server]:' \
    '*--cluster.keys[Keys used to communicate between components of the cluster. The first one will be used by the cluster to identify itself]:' \
    '--cluster.name[Name of the current cluster peer (default: $HOSTNAME)]:' \
    '--cluster.network-server[Address for the Network Server]:' \
    '--cluster.tls[Do cluster gRPC over TLS]' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--console.mount[Path on the server where the Console will be served]:' \
    '--console.oauth.authorize-url[The OAuth Authorize URL]:' \
    '--console.oauth.client-id[The OAuth client ID]:' \
    '--console.oauth.client-secret[The OAuth client secret]:' \
    '--console.oauth.logout-url[The OAuth Logout URL]:' \
    '--console.oauth.token-url[The OAuth Token Exchange URL]:' \
    '--console.ui.as.base-url[Base URL to the HTTP API]:' \
    '--console.ui.as.enabled[Enable this API]' \
    '--console.ui.assets-base-url[The base URL to the page assets]:' \
    '--console.ui.branding-base-url[The base URL to the branding assets]:' \
    '--console.ui.canonical-url[The page canonical URL]:' \
    '--console.ui.csrftoken[]:' \
    '*--console.ui.css-file[The names of the CSS files]:' \
    '--console.ui.descriptions[The page description]:' \
    '--console.ui.documentation-base-url[The base URL for generating documentation links]:' \
    '--console.ui.edtc.base-url[Base URL to the HTTP API]:' \
    '--console.ui.edtc.enabled[Enable this API]' \
    '--console.ui.gs.base-url[Base URL to the HTTP API]:' \
    '--console.ui.gs.enabled[Enable this API]' \
    '--console.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--console.ui.is.base-url[Base URL to the HTTP API]:' \
    '--console.ui.is.enabled[Enable this API]' \
    '*--console.ui.js-file[The names of the JS files]:' \
    '--console.ui.js.base-url[Base URL to the HTTP API]:' \
    '--console.ui.js.enabled[Enable this API]' \
    '--console.ui.language[The page language]:' \
    '--console.ui.ns.base-url[Base URL to the HTTP API]:' \
    '--console.ui.ns.enabled[Enable this API]' \
    '--console.ui.qrg.base-url[Base URL to the HTTP API]:' \
    '--console.ui.qrg.enabled[Enable this API]' \
    '--console.ui.sentry-dsn[The Sentry DSN]:' \
    '--console.ui.site-name[The site name]:' \
    '--console.ui.sub-title[The page sub-title]:' \
    '--console.ui.support-link[The URI that the support button will point to]:' \
    '--console.ui.theme-color[The page theme color]:' \
    '--console.ui.title[The page title]:' \
    '--device-repository.blob.bucket[Bucket to use]:' \
    '--device-repository.blob.path[Path to use]:' \
    '--device-repository.config-source[Source of the device repository (static, directory, url, blob)]:' \
    '--device-repository.directory[OS filesystem directory, which contains device repository]:' \
    '--device-repository.url[URL, which contains device repository]:' \
    '*--dtc.enabled[Enabled converters]:' \
    '--events.backend[Backend to use for events (internal, redis, cloud)]:' \
    '--events.cloud.publish-url[URL for the topic to send events]:' \
    '--events.cloud.subscribe-url[URL for the subscription to receiving events]:' \
    '--events.redis.address[Address of the Redis server]:' \
    '--events.redis.database[Redis database to use]:' \
    '*--events.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--events.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--events.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--events.redis.namespace[Namespace for Redis keys]:' \
    '--events.redis.password[Password of the Redis server]:' \
    '--events.redis.pool-size[The maximum number of database connections]:' \
    '--frequency-plans.blob.bucket[Bucket to use]:' \
    '--frequency-plans.blob.path[Path to use]:' \
    '--frequency-plans.config-source[Source of the frequency plans (static, directory, url, blob)]:' \
    '--frequency-plans.directory[OS filesystem directory, which contains frequency plans]:' \
    '--frequency-plans.url[URL, which contains frequency plans]:' \
    '--gcs.basic-station.allow-cups-uri-update[Allow CUPS URI updates]' \
    '--gcs.basic-station.default.lns-uri[The default LNS URI that the gateways should use]:' \
    '--gcs.basic-station.owner-for-unknown.account-type[Type of account to register unknown gateways to (user|organization)]:' \
    '--gcs.basic-station.owner-for-unknown.api-key[API Key to use for unknown gateway registration]:' \
    '--gcs.basic-station.owner-for-unknown.id[ID of the account to register unknown gateways to]:' \
    '--gcs.basic-station.require-explicit-enable[Require gateways to explicitly enable CUPS]' \
    '--gcs.require-auth[Require authentication for the HTTP endpoints.]' \
    '--gcs.the-things-gateway.default.firmware-url[The default URL to the firmware storage]:' \
    '--gcs.the-things-gateway.default.mqtt-server[The default MQTT server that the gateways should use]:' \
    '--gcs.the-things-gateway.default.update-channel[The default update channel that the gateways should use]:' \
    '--grpc.allow-insecure-for-credentials[Allow transmission of credentials over insecure transport]' \
    '--grpc.listen[Address for the TCP gRPC server to listen on]:' \
    '--grpc.listen-tls[Address for the TLS gRPC server to listen on]:' \
    '*--grpc.log-ignore-methods[List of paths for which successful requests will not be logged]:' \
    '--gs.basic-station.fallback-frequency-plan-id[Fallback frequency plan ID for non-registered gateways]:' \
    '--gs.basic-station.listen[Address for the Basic Station frontend to listen on]:' \
    '--gs.basic-station.listen-tls[Address for the Basic Station frontend to listen on (with TLS)]:' \
    '--gs.basic-station.use-traffic-tls-address[Use WSS for the traffic address regardless of the TLS setting]' \
    '--gs.basic-station.ws-ping-interval[Interval to send WS ping messages]:' \
    '*--gs.forward[Forward the DevAddr prefixes to the specified hosts]:' \
    '--gs.mqtt-v2.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt-v2.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt-v2.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt-v2.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.require-registered-gateways[Require the gateways to be registered in the Identity Server]' \
    '--gs.udp.addr-change-block[Time to block traffic when a gateway'\''s address changes]:' \
    '--gs.udp.connection-expires[Time after which a connection of a gateway expires]:' \
    '--gs.udp.downlink-path-expires[Time after which a downlink path to a gateway expires]:' \
    '*--gs.udp.listeners[Listen addresses with (optional) fallback frequency plan ID for non-registered gateways]:' \
    '--gs.udp.packet-buffer[Buffer size of unhandled packets]:' \
    '--gs.udp.packet-handlers[Number of concurrent packet handlers]:' \
    '--gs.udp.rate-limiting.enable[Enable rate limiting for gateways]' \
    '--gs.udp.rate-limiting.messages[Number of past messages to check timestamp for]:' \
    '--gs.udp.rate-limiting.threshold[Filter packet if timestamp is not newer than the older timestamps of the previous messages by this threshold]:' \
    '--gs.udp.schedule-late-time[Time in advance to send downlink to the gateway when scheduling late]:' \
    '--gs.update-connection-stats-debounce-time[Time before repeated refresh of the gateway connection stats]:' \
    '--gs.update-gateway-location-debounce-time[Debounce time for gateway location updates from status messages]:' \
    '--http.cookie.block-key[Key for cookie contents encryption (16, 24 or 32 bytes)]:' \
    '--http.cookie.hash-key[Key for cookie contents verification (32 or 64 bytes)]:' \
    '--http.health.enable[Enable health check endpoint on HTTP server]' \
    '--http.health.password[Password to protect health endpoint (username is health)]:' \
    '--http.listen[Address for the HTTP server to listen on]:' \
    '--http.listen-tls[Address for the HTTPS server to listen on]:' \
    '*--http.log-ignore-paths[List of paths for which successful requests will not be logged]:' \
    '--http.metrics.enable[Enable metrics endpoint on HTTP server]' \
    '--http.metrics.password[Password to protect metrics endpoint (username is metrics)]:' \
    '--http.pprof.enable[Enable pprof endpoint on HTTP server]' \
    '--http.pprof.password[Password to protect pprof endpoint (username is pprof)]:' \
    '--http.redirect-to-host[Redirect all requests to one host]:' \
    '--http.redirect-to-tls[Redirect HTTP requests to HTTPS]' \
    '--http.static.mount[Path on the server where static assets will be served]:' \
    '*--http.static.search-path[List of paths for finding the directory to serve static assets from]:' \
    '*--http.trusted-proxies[CIDRs of trusted reverse proxies]:' \
    '--interop.listen-tls[Address for the interop server to listen on]:' \
    '--interop.sender-client-ca.blob.bucket[Bucket to use]:' \
    '--interop.sender-client-ca.blob.path[Path to use]:' \
    '--interop.sender-client-ca.directory[OS filesystem directory, which contains sender client CA configuration]:' \
    '--interop.sender-client-ca.source[Source of the sender client CA configuration (static, directory, url, blob)]:' \
    '--interop.sender-client-ca.url[URL, which contains sender client CA configuration]:' \
    '--is.auth-cache.membership-ttl[TTL of membership caches]:' \
    '--is.database-uri[Database connection URI]:' \
    '--is.email.network.console-url[The URL of the Console]:' \
    '--is.email.network.identity-server-url[The URL of the Identity Server]:' \
    '--is.email.network.name[The name of the network]:' \
    '--is.email.provider[Email provider to use]:' \
    '--is.email.sender-address[The address of the sender]:' \
    '--is.email.sender-name[The name of the sender]:' \
    '--is.email.sendgrid.api-key[The SendGrid API key to use]:' \
    '--is.email.sendgrid.sandbox[Use SendGrid sandbox mode for testing]' \
    '--is.email.smtp.address[SMTP server address]:' \
    '--is.email.smtp.connections[Maximum number of connections to the SMTP server]:' \
    '--is.email.smtp.password[Password to authenticate with]:' \
    '--is.email.smtp.username[Username to authenticate with]:' \
    '--is.email.templates.blob.bucket[Bucket to use]:' \
    '--is.email.templates.blob.path[Path to use]:' \
    '--is.email.templates.directory[Retrieve the email templates from the filesystem]:' \
    '*--is.email.templates.includes[The email templates that will be preloaded on startup]:' \
    '--is.email.templates.source[Source of the email template files (static, directory, url, blob)]:' \
    '--is.email.templates.url[Retrieve the email templates from a web server]:' \
    '--is.end-device-picture.bucket[Bucket used for storing end device pictures]:' \
    '--is.end-device-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.end-device-picture.disable-upload[Disable uploading end device pictures]' \
    '--is.oauth.mount[Path on the server where the OAuth server will be served]:' \
    '--is.oauth.ui.assets-base-url[The base URL to the page assets]:' \
    '--is.oauth.ui.branding-base-url[The base URL to the branding assets]:' \
    '--is.oauth.ui.canonical-url[The page canonical URL]:' \
    '--is.oauth.ui.csrftoken[]:' \
    '*--is.oauth.ui.css-file[The names of the CSS files]:' \
    '--is.oauth.ui.descriptions[The page description]:' \
    '--is.oauth.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--is.oauth.ui.is.base-url[Base URL to the HTTP API]:' \
    '--is.oauth.ui.is.enabled[Enable this API]' \
    '*--is.oauth.ui.js-file[The names of the JS files]:' \
    '--is.oauth.ui.language[The page language]:' \
    '--is.oauth.ui.sentry-dsn[The Sentry DSN]:' \
    '--is.oauth.ui.site-name[The site name]:' \
    '--is.oauth.ui.sub-title[The page sub-title]:' \
    '--is.oauth.ui.theme-color[The page theme color]:' \
    '--is.oauth.ui.title[The page title]:' \
    '--is.profile-picture.bucket[Bucket used for storing profile pictures]:' \
    '--is.profile-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.profile-picture.disable-upload[Disable uploading profile pictures]' \
    '--is.profile-picture.use-gravatar[Use Gravatar fallback for users without profile picture]' \
    '--is.user-registration.admin-approval.required[Require admin approval for new users]' \
    '--is.user-registration.contact-info-validation.required[Require contact info validation for new users]' \
    '--is.user-registration.invitation.required[Require invitations for new users]' \
    '--is.user-registration.invitation.token-ttl[TTL of user invitation tokens]:' \
    '--is.user-registration.password-requirements.max-length[Maximum password length]:' \
    '--is.user-registration.password-requirements.min-digits[Minimum number of digits]:' \
    '--is.user-registration.password-requirements.min-length[Minimum password length]:' \
    '--is.user-registration.password-requirements.min-special[Minimum number of special characters]:' \
    '--is.user-registration.password-requirements.min-uppercase[Minimum number of uppercase letters]:' \
    '--is.user-rights.create-applications[Allow non-admin users to create applications in their user account]' \
    '--is.user-rights.create-clients[Allow non-admin users to create OAuth clients in their user account]' \
    '--is.user-rights.create-gateways[Allow non-admin users to create gateways in their user account]' \
    '--is.user-rights.create-organizations[Allow non-admin users to create organizations in their user account]' \
    '--js.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '*--js.join-eui-prefix[JoinEUI prefixes handled by this JS]:' \
    '--key-vault.cache.size[Cache size. Caching is disabled if size is 0]:' \
    '--key-vault.cache.ttl[Cache elements time to live. No expiration mechanism is used if TTL is 0]:' \
    '--key-vault.provider[Provider (static)]:' \
    '*--key-vault.static[]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--ns.application-uplink-queue.buffer-size[]:' \
    '--ns.cooldown-window[Time window starting right after deduplication window, during which, duplicate messages are discarded]:' \
    '--ns.deduplication-window[Time window during which, duplicate messages are collected for metadata]:' \
    '--ns.default-mac-settings.adr-margin[The default margin Network Server should add in ADR requests if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-b-timeout[Deadline for a device in class B mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-c-timeout[Deadline for a device in class C mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.desired-rx1-delay[Desired Rx1Delay value Network Server should use if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-count-periodicity[Number of uplink messages after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-time-periodicity[The interval after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '*--ns.dev-addr-prefixes[Device address prefixes of this Network Server]:' \
    '--ns.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--ns.downlink-priorities.join-accept[Priority for join-accept messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.mac-commands[Priority for messages carrying MAC commands (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.max-application-downlink[Maximum priority for application downlink messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.interop.blob.bucket[Bucket to use]:' \
    '--ns.interop.blob.path[Path to use]:' \
    '--ns.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--ns.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--ns.interop.url[URL, which contains interoperability client configuration]:' \
    '--ns.net-id[NetID of this Network Server]:' \
    '--pba.cluster-id[Cluster ID uniquely identifying this cluster within a NetID and tenant]:' \
    '--pba.data-plane-address[Address of the Packet Broker Data Plane]:' \
    '--pba.forwarder.enable[Enable Forwarder role]' \
    '--pba.forwarder.token-key[AES 128 or 256-bit key for encrypting tokens]:' \
    '--pba.forwarder.worker-pool.limit[Limit of active workers]:' \
    '--pba.home-network.blacklist-forwarder[Blacklist traffic from Forwarder to avoid traffic loops]' \
    '*--pba.home-network.dev-addr-prefixes[DevAddr prefixes to subscribe to]:' \
    '--pba.home-network.enable[Enable Home Network role]' \
    '--pba.home-network.worker-pool.limit[Limit of active workers]:' \
    '--pba.net-id[LoRa Alliance NetID]:' \
    '--pba.tenant-id[Tenant ID within the NetID]:' \
    '--pba.tls.certificate[Location of TLS certificate]:' \
    '--pba.tls.key[Location of TLS private key]:' \
    '--pba.tls.key-vault.id[ID of the certificate]:' \
    '--pba.tls.source[Source of the TLS certificate (file, key-vault)]:' \
    '--redis.address[Address of the Redis server]:' \
    '--redis.database[Redis database to use]:' \
    '*--redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--redis.failover.master-name[Redis Sentinel master name]:' \
    '*--redis.namespace[Namespace for Redis keys]:' \
    '--redis.password[Password of the Redis server]:' \
    '--redis.pool-size[The maximum number of database connections]:' \
    '--rights.ttl[Validity of Identity Server responses]:' \
    '--sentry.dsn[Sentry Data Source Name]:' \
    '--tls.acme.default-host[Default host to assume for clients without SNI]:' \
    '--tls.acme.dir[Location of ACME storage directory]:' \
    '--tls.acme.email[Email address to register with the ACME account]:' \
    '--tls.acme.enable[Enable automated certificate management (ACME). This setting is deprecated; set the TLS config source to acme instead]' \
    '--tls.acme.endpoint[ACME endpoint]:' \
    '*--tls.acme.hosts[Hosts to enable automatic certificates for]:' \
    '--tls.certificate[Location of TLS certificate]:' \
    '--tls.insecure-skip-verify[Skip verification of certificate chains (insecure)]' \
    '--tls.key[Location of TLS private key]:' \
    '--tls.key-vault.id[ID of the certificate]:' \
    '--tls.root-ca[Location of TLS root CA certificate (optional)]:' \
    '--tls.source[Source of the TLS certificate (file, acme, key-vault)]:'
}

function _ttn-lw-stack_start {
  _arguments \
    '--as.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--as.interop.blob.bucket[Bucket to use]:' \
    '--as.interop.blob.path[Path to use]:' \
    '--as.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--as.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--as.interop.id[AS-ID used for interoperability]:' \
    '--as.interop.url[URL, which contains interoperability client configuration]:' \
    '--as.link-mode[Mode to link applications to their Network Server (all, explicit)]:' \
    '--as.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--as.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--as.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--as.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--as.webhooks.downlink.public-address[Public address of the HTTP webhooks frontend]:' \
    '--as.webhooks.downlink.public-tls-address[Public address of the HTTPS webhooks frontend]:' \
    '--as.webhooks.queue-size[Number of requests to queue]:' \
    '--as.webhooks.target[Target of the integration (direct)]:' \
    '--as.webhooks.templates.directory[Retrieve the webhook templates from the filesystem]:' \
    '--as.webhooks.templates.logo-base-url[The base URL for the logo storage]:' \
    '--as.webhooks.templates.url[Retrieve the webhook templates from a web server]:' \
    '--as.webhooks.timeout[Wait timeout of the target to process the request]:' \
    '--as.webhooks.workers[Number of workers to process requests]:' \
    '--blob.aws.access-key-id[Access key ID]:' \
    '--blob.aws.endpoint[S3 endpoint]:' \
    '--blob.aws.region[S3 region]:' \
    '--blob.aws.secret-access-key[Secret access key]:' \
    '--blob.aws.session-token[Session token]:' \
    '--blob.gcp.credentials[JSON data of the GCP credentials, if not using JSON file]:' \
    '--blob.gcp.credentials-file[Path to the GCP credentials JSON file]:' \
    '--blob.local.directory[OS filesystem directory, which contains buckets]:' \
    '--blob.provider[Blob store provider (local, aws, gcp)]:' \
    '--cache.redis.address[Address of the Redis server]:' \
    '--cache.redis.database[Redis database to use]:' \
    '*--cache.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--cache.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--cache.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--cache.redis.namespace[Namespace for Redis keys]:' \
    '--cache.redis.password[Password of the Redis server]:' \
    '--cache.redis.pool-size[The maximum number of database connections]:' \
    '--cache.service[Service used for caching (redis)]:' \
    '--cluster.address[Address to use for cluster communication]:' \
    '--cluster.application-server[Address for the Application Server]:' \
    '--cluster.crypto-server[Address for the Crypto Server]:' \
    '--cluster.gateway-server[Address for the Gateway Server]:' \
    '--cluster.identity-server[Address for the Identity Server]:' \
    '*--cluster.join[Addresses of cluster peers to join]:' \
    '--cluster.join-server[Address for the Join Server]:' \
    '*--cluster.keys[Keys used to communicate between components of the cluster. The first one will be used by the cluster to identify itself]:' \
    '--cluster.name[Name of the current cluster peer (default: $HOSTNAME)]:' \
    '--cluster.network-server[Address for the Network Server]:' \
    '--cluster.tls[Do cluster gRPC over TLS]' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--console.mount[Path on the server where the Console will be served]:' \
    '--console.oauth.authorize-url[The OAuth Authorize URL]:' \
    '--console.oauth.client-id[The OAuth client ID]:' \
    '--console.oauth.client-secret[The OAuth client secret]:' \
    '--console.oauth.logout-url[The OAuth Logout URL]:' \
    '--console.oauth.token-url[The OAuth Token Exchange URL]:' \
    '--console.ui.as.base-url[Base URL to the HTTP API]:' \
    '--console.ui.as.enabled[Enable this API]' \
    '--console.ui.assets-base-url[The base URL to the page assets]:' \
    '--console.ui.branding-base-url[The base URL to the branding assets]:' \
    '--console.ui.canonical-url[The page canonical URL]:' \
    '--console.ui.csrftoken[]:' \
    '*--console.ui.css-file[The names of the CSS files]:' \
    '--console.ui.descriptions[The page description]:' \
    '--console.ui.documentation-base-url[The base URL for generating documentation links]:' \
    '--console.ui.edtc.base-url[Base URL to the HTTP API]:' \
    '--console.ui.edtc.enabled[Enable this API]' \
    '--console.ui.gs.base-url[Base URL to the HTTP API]:' \
    '--console.ui.gs.enabled[Enable this API]' \
    '--console.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--console.ui.is.base-url[Base URL to the HTTP API]:' \
    '--console.ui.is.enabled[Enable this API]' \
    '*--console.ui.js-file[The names of the JS files]:' \
    '--console.ui.js.base-url[Base URL to the HTTP API]:' \
    '--console.ui.js.enabled[Enable this API]' \
    '--console.ui.language[The page language]:' \
    '--console.ui.ns.base-url[Base URL to the HTTP API]:' \
    '--console.ui.ns.enabled[Enable this API]' \
    '--console.ui.qrg.base-url[Base URL to the HTTP API]:' \
    '--console.ui.qrg.enabled[Enable this API]' \
    '--console.ui.sentry-dsn[The Sentry DSN]:' \
    '--console.ui.site-name[The site name]:' \
    '--console.ui.sub-title[The page sub-title]:' \
    '--console.ui.support-link[The URI that the support button will point to]:' \
    '--console.ui.theme-color[The page theme color]:' \
    '--console.ui.title[The page title]:' \
    '--device-repository.blob.bucket[Bucket to use]:' \
    '--device-repository.blob.path[Path to use]:' \
    '--device-repository.config-source[Source of the device repository (static, directory, url, blob)]:' \
    '--device-repository.directory[OS filesystem directory, which contains device repository]:' \
    '--device-repository.url[URL, which contains device repository]:' \
    '*--dtc.enabled[Enabled converters]:' \
    '--events.backend[Backend to use for events (internal, redis, cloud)]:' \
    '--events.cloud.publish-url[URL for the topic to send events]:' \
    '--events.cloud.subscribe-url[URL for the subscription to receiving events]:' \
    '--events.redis.address[Address of the Redis server]:' \
    '--events.redis.database[Redis database to use]:' \
    '*--events.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--events.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--events.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--events.redis.namespace[Namespace for Redis keys]:' \
    '--events.redis.password[Password of the Redis server]:' \
    '--events.redis.pool-size[The maximum number of database connections]:' \
    '--frequency-plans.blob.bucket[Bucket to use]:' \
    '--frequency-plans.blob.path[Path to use]:' \
    '--frequency-plans.config-source[Source of the frequency plans (static, directory, url, blob)]:' \
    '--frequency-plans.directory[OS filesystem directory, which contains frequency plans]:' \
    '--frequency-plans.url[URL, which contains frequency plans]:' \
    '--gcs.basic-station.allow-cups-uri-update[Allow CUPS URI updates]' \
    '--gcs.basic-station.default.lns-uri[The default LNS URI that the gateways should use]:' \
    '--gcs.basic-station.owner-for-unknown.account-type[Type of account to register unknown gateways to (user|organization)]:' \
    '--gcs.basic-station.owner-for-unknown.api-key[API Key to use for unknown gateway registration]:' \
    '--gcs.basic-station.owner-for-unknown.id[ID of the account to register unknown gateways to]:' \
    '--gcs.basic-station.require-explicit-enable[Require gateways to explicitly enable CUPS]' \
    '--gcs.require-auth[Require authentication for the HTTP endpoints.]' \
    '--gcs.the-things-gateway.default.firmware-url[The default URL to the firmware storage]:' \
    '--gcs.the-things-gateway.default.mqtt-server[The default MQTT server that the gateways should use]:' \
    '--gcs.the-things-gateway.default.update-channel[The default update channel that the gateways should use]:' \
    '--grpc.allow-insecure-for-credentials[Allow transmission of credentials over insecure transport]' \
    '--grpc.listen[Address for the TCP gRPC server to listen on]:' \
    '--grpc.listen-tls[Address for the TLS gRPC server to listen on]:' \
    '*--grpc.log-ignore-methods[List of paths for which successful requests will not be logged]:' \
    '--gs.basic-station.fallback-frequency-plan-id[Fallback frequency plan ID for non-registered gateways]:' \
    '--gs.basic-station.listen[Address for the Basic Station frontend to listen on]:' \
    '--gs.basic-station.listen-tls[Address for the Basic Station frontend to listen on (with TLS)]:' \
    '--gs.basic-station.use-traffic-tls-address[Use WSS for the traffic address regardless of the TLS setting]' \
    '--gs.basic-station.ws-ping-interval[Interval to send WS ping messages]:' \
    '*--gs.forward[Forward the DevAddr prefixes to the specified hosts]:' \
    '--gs.mqtt-v2.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt-v2.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt-v2.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt-v2.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.require-registered-gateways[Require the gateways to be registered in the Identity Server]' \
    '--gs.udp.addr-change-block[Time to block traffic when a gateway'\''s address changes]:' \
    '--gs.udp.connection-expires[Time after which a connection of a gateway expires]:' \
    '--gs.udp.downlink-path-expires[Time after which a downlink path to a gateway expires]:' \
    '*--gs.udp.listeners[Listen addresses with (optional) fallback frequency plan ID for non-registered gateways]:' \
    '--gs.udp.packet-buffer[Buffer size of unhandled packets]:' \
    '--gs.udp.packet-handlers[Number of concurrent packet handlers]:' \
    '--gs.udp.rate-limiting.enable[Enable rate limiting for gateways]' \
    '--gs.udp.rate-limiting.messages[Number of past messages to check timestamp for]:' \
    '--gs.udp.rate-limiting.threshold[Filter packet if timestamp is not newer than the older timestamps of the previous messages by this threshold]:' \
    '--gs.udp.schedule-late-time[Time in advance to send downlink to the gateway when scheduling late]:' \
    '--gs.update-connection-stats-debounce-time[Time before repeated refresh of the gateway connection stats]:' \
    '--gs.update-gateway-location-debounce-time[Debounce time for gateway location updates from status messages]:' \
    '--http.cookie.block-key[Key for cookie contents encryption (16, 24 or 32 bytes)]:' \
    '--http.cookie.hash-key[Key for cookie contents verification (32 or 64 bytes)]:' \
    '--http.health.enable[Enable health check endpoint on HTTP server]' \
    '--http.health.password[Password to protect health endpoint (username is health)]:' \
    '--http.listen[Address for the HTTP server to listen on]:' \
    '--http.listen-tls[Address for the HTTPS server to listen on]:' \
    '*--http.log-ignore-paths[List of paths for which successful requests will not be logged]:' \
    '--http.metrics.enable[Enable metrics endpoint on HTTP server]' \
    '--http.metrics.password[Password to protect metrics endpoint (username is metrics)]:' \
    '--http.pprof.enable[Enable pprof endpoint on HTTP server]' \
    '--http.pprof.password[Password to protect pprof endpoint (username is pprof)]:' \
    '--http.redirect-to-host[Redirect all requests to one host]:' \
    '--http.redirect-to-tls[Redirect HTTP requests to HTTPS]' \
    '--http.static.mount[Path on the server where static assets will be served]:' \
    '*--http.static.search-path[List of paths for finding the directory to serve static assets from]:' \
    '*--http.trusted-proxies[CIDRs of trusted reverse proxies]:' \
    '--interop.listen-tls[Address for the interop server to listen on]:' \
    '--interop.sender-client-ca.blob.bucket[Bucket to use]:' \
    '--interop.sender-client-ca.blob.path[Path to use]:' \
    '--interop.sender-client-ca.directory[OS filesystem directory, which contains sender client CA configuration]:' \
    '--interop.sender-client-ca.source[Source of the sender client CA configuration (static, directory, url, blob)]:' \
    '--interop.sender-client-ca.url[URL, which contains sender client CA configuration]:' \
    '--is.auth-cache.membership-ttl[TTL of membership caches]:' \
    '--is.database-uri[Database connection URI]:' \
    '--is.email.network.console-url[The URL of the Console]:' \
    '--is.email.network.identity-server-url[The URL of the Identity Server]:' \
    '--is.email.network.name[The name of the network]:' \
    '--is.email.provider[Email provider to use]:' \
    '--is.email.sender-address[The address of the sender]:' \
    '--is.email.sender-name[The name of the sender]:' \
    '--is.email.sendgrid.api-key[The SendGrid API key to use]:' \
    '--is.email.sendgrid.sandbox[Use SendGrid sandbox mode for testing]' \
    '--is.email.smtp.address[SMTP server address]:' \
    '--is.email.smtp.connections[Maximum number of connections to the SMTP server]:' \
    '--is.email.smtp.password[Password to authenticate with]:' \
    '--is.email.smtp.username[Username to authenticate with]:' \
    '--is.email.templates.blob.bucket[Bucket to use]:' \
    '--is.email.templates.blob.path[Path to use]:' \
    '--is.email.templates.directory[Retrieve the email templates from the filesystem]:' \
    '*--is.email.templates.includes[The email templates that will be preloaded on startup]:' \
    '--is.email.templates.source[Source of the email template files (static, directory, url, blob)]:' \
    '--is.email.templates.url[Retrieve the email templates from a web server]:' \
    '--is.end-device-picture.bucket[Bucket used for storing end device pictures]:' \
    '--is.end-device-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.end-device-picture.disable-upload[Disable uploading end device pictures]' \
    '--is.oauth.mount[Path on the server where the OAuth server will be served]:' \
    '--is.oauth.ui.assets-base-url[The base URL to the page assets]:' \
    '--is.oauth.ui.branding-base-url[The base URL to the branding assets]:' \
    '--is.oauth.ui.canonical-url[The page canonical URL]:' \
    '--is.oauth.ui.csrftoken[]:' \
    '*--is.oauth.ui.css-file[The names of the CSS files]:' \
    '--is.oauth.ui.descriptions[The page description]:' \
    '--is.oauth.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--is.oauth.ui.is.base-url[Base URL to the HTTP API]:' \
    '--is.oauth.ui.is.enabled[Enable this API]' \
    '*--is.oauth.ui.js-file[The names of the JS files]:' \
    '--is.oauth.ui.language[The page language]:' \
    '--is.oauth.ui.sentry-dsn[The Sentry DSN]:' \
    '--is.oauth.ui.site-name[The site name]:' \
    '--is.oauth.ui.sub-title[The page sub-title]:' \
    '--is.oauth.ui.theme-color[The page theme color]:' \
    '--is.oauth.ui.title[The page title]:' \
    '--is.profile-picture.bucket[Bucket used for storing profile pictures]:' \
    '--is.profile-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.profile-picture.disable-upload[Disable uploading profile pictures]' \
    '--is.profile-picture.use-gravatar[Use Gravatar fallback for users without profile picture]' \
    '--is.user-registration.admin-approval.required[Require admin approval for new users]' \
    '--is.user-registration.contact-info-validation.required[Require contact info validation for new users]' \
    '--is.user-registration.invitation.required[Require invitations for new users]' \
    '--is.user-registration.invitation.token-ttl[TTL of user invitation tokens]:' \
    '--is.user-registration.password-requirements.max-length[Maximum password length]:' \
    '--is.user-registration.password-requirements.min-digits[Minimum number of digits]:' \
    '--is.user-registration.password-requirements.min-length[Minimum password length]:' \
    '--is.user-registration.password-requirements.min-special[Minimum number of special characters]:' \
    '--is.user-registration.password-requirements.min-uppercase[Minimum number of uppercase letters]:' \
    '--is.user-rights.create-applications[Allow non-admin users to create applications in their user account]' \
    '--is.user-rights.create-clients[Allow non-admin users to create OAuth clients in their user account]' \
    '--is.user-rights.create-gateways[Allow non-admin users to create gateways in their user account]' \
    '--is.user-rights.create-organizations[Allow non-admin users to create organizations in their user account]' \
    '--js.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '*--js.join-eui-prefix[JoinEUI prefixes handled by this JS]:' \
    '--key-vault.cache.size[Cache size. Caching is disabled if size is 0]:' \
    '--key-vault.cache.ttl[Cache elements time to live. No expiration mechanism is used if TTL is 0]:' \
    '--key-vault.provider[Provider (static)]:' \
    '*--key-vault.static[]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--ns.application-uplink-queue.buffer-size[]:' \
    '--ns.cooldown-window[Time window starting right after deduplication window, during which, duplicate messages are discarded]:' \
    '--ns.deduplication-window[Time window during which, duplicate messages are collected for metadata]:' \
    '--ns.default-mac-settings.adr-margin[The default margin Network Server should add in ADR requests if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-b-timeout[Deadline for a device in class B mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-c-timeout[Deadline for a device in class C mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.desired-rx1-delay[Desired Rx1Delay value Network Server should use if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-count-periodicity[Number of uplink messages after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-time-periodicity[The interval after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '*--ns.dev-addr-prefixes[Device address prefixes of this Network Server]:' \
    '--ns.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--ns.downlink-priorities.join-accept[Priority for join-accept messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.mac-commands[Priority for messages carrying MAC commands (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.max-application-downlink[Maximum priority for application downlink messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.interop.blob.bucket[Bucket to use]:' \
    '--ns.interop.blob.path[Path to use]:' \
    '--ns.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--ns.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--ns.interop.url[URL, which contains interoperability client configuration]:' \
    '--ns.net-id[NetID of this Network Server]:' \
    '--pba.cluster-id[Cluster ID uniquely identifying this cluster within a NetID and tenant]:' \
    '--pba.data-plane-address[Address of the Packet Broker Data Plane]:' \
    '--pba.forwarder.enable[Enable Forwarder role]' \
    '--pba.forwarder.token-key[AES 128 or 256-bit key for encrypting tokens]:' \
    '--pba.forwarder.worker-pool.limit[Limit of active workers]:' \
    '--pba.home-network.blacklist-forwarder[Blacklist traffic from Forwarder to avoid traffic loops]' \
    '*--pba.home-network.dev-addr-prefixes[DevAddr prefixes to subscribe to]:' \
    '--pba.home-network.enable[Enable Home Network role]' \
    '--pba.home-network.worker-pool.limit[Limit of active workers]:' \
    '--pba.net-id[LoRa Alliance NetID]:' \
    '--pba.tenant-id[Tenant ID within the NetID]:' \
    '--pba.tls.certificate[Location of TLS certificate]:' \
    '--pba.tls.key[Location of TLS private key]:' \
    '--pba.tls.key-vault.id[ID of the certificate]:' \
    '--pba.tls.source[Source of the TLS certificate (file, key-vault)]:' \
    '--redis.address[Address of the Redis server]:' \
    '--redis.database[Redis database to use]:' \
    '*--redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--redis.failover.master-name[Redis Sentinel master name]:' \
    '*--redis.namespace[Namespace for Redis keys]:' \
    '--redis.password[Password of the Redis server]:' \
    '--redis.pool-size[The maximum number of database connections]:' \
    '--rights.ttl[Validity of Identity Server responses]:' \
    '--sentry.dsn[Sentry Data Source Name]:' \
    '--tls.acme.default-host[Default host to assume for clients without SNI]:' \
    '--tls.acme.dir[Location of ACME storage directory]:' \
    '--tls.acme.email[Email address to register with the ACME account]:' \
    '--tls.acme.enable[Enable automated certificate management (ACME). This setting is deprecated; set the TLS config source to acme instead]' \
    '--tls.acme.endpoint[ACME endpoint]:' \
    '*--tls.acme.hosts[Hosts to enable automatic certificates for]:' \
    '--tls.certificate[Location of TLS certificate]:' \
    '--tls.insecure-skip-verify[Skip verification of certificate chains (insecure)]' \
    '--tls.key[Location of TLS private key]:' \
    '--tls.key-vault.id[ID of the certificate]:' \
    '--tls.root-ca[Location of TLS root CA certificate (optional)]:' \
    '--tls.source[Source of the TLS certificate (file, acme, key-vault)]:'
}

function _ttn-lw-stack_version {
  _arguments \
    '--as.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--as.interop.blob.bucket[Bucket to use]:' \
    '--as.interop.blob.path[Path to use]:' \
    '--as.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--as.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--as.interop.id[AS-ID used for interoperability]:' \
    '--as.interop.url[URL, which contains interoperability client configuration]:' \
    '--as.link-mode[Mode to link applications to their Network Server (all, explicit)]:' \
    '--as.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--as.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--as.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--as.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--as.webhooks.downlink.public-address[Public address of the HTTP webhooks frontend]:' \
    '--as.webhooks.downlink.public-tls-address[Public address of the HTTPS webhooks frontend]:' \
    '--as.webhooks.queue-size[Number of requests to queue]:' \
    '--as.webhooks.target[Target of the integration (direct)]:' \
    '--as.webhooks.templates.directory[Retrieve the webhook templates from the filesystem]:' \
    '--as.webhooks.templates.logo-base-url[The base URL for the logo storage]:' \
    '--as.webhooks.templates.url[Retrieve the webhook templates from a web server]:' \
    '--as.webhooks.timeout[Wait timeout of the target to process the request]:' \
    '--as.webhooks.workers[Number of workers to process requests]:' \
    '--blob.aws.access-key-id[Access key ID]:' \
    '--blob.aws.endpoint[S3 endpoint]:' \
    '--blob.aws.region[S3 region]:' \
    '--blob.aws.secret-access-key[Secret access key]:' \
    '--blob.aws.session-token[Session token]:' \
    '--blob.gcp.credentials[JSON data of the GCP credentials, if not using JSON file]:' \
    '--blob.gcp.credentials-file[Path to the GCP credentials JSON file]:' \
    '--blob.local.directory[OS filesystem directory, which contains buckets]:' \
    '--blob.provider[Blob store provider (local, aws, gcp)]:' \
    '--cache.redis.address[Address of the Redis server]:' \
    '--cache.redis.database[Redis database to use]:' \
    '*--cache.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--cache.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--cache.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--cache.redis.namespace[Namespace for Redis keys]:' \
    '--cache.redis.password[Password of the Redis server]:' \
    '--cache.redis.pool-size[The maximum number of database connections]:' \
    '--cache.service[Service used for caching (redis)]:' \
    '--cluster.address[Address to use for cluster communication]:' \
    '--cluster.application-server[Address for the Application Server]:' \
    '--cluster.crypto-server[Address for the Crypto Server]:' \
    '--cluster.gateway-server[Address for the Gateway Server]:' \
    '--cluster.identity-server[Address for the Identity Server]:' \
    '*--cluster.join[Addresses of cluster peers to join]:' \
    '--cluster.join-server[Address for the Join Server]:' \
    '*--cluster.keys[Keys used to communicate between components of the cluster. The first one will be used by the cluster to identify itself]:' \
    '--cluster.name[Name of the current cluster peer (default: $HOSTNAME)]:' \
    '--cluster.network-server[Address for the Network Server]:' \
    '--cluster.tls[Do cluster gRPC over TLS]' \
    '(*-c *--config)'{\*-c,\*--config}'[Location of the config files]:' \
    '--console.mount[Path on the server where the Console will be served]:' \
    '--console.oauth.authorize-url[The OAuth Authorize URL]:' \
    '--console.oauth.client-id[The OAuth client ID]:' \
    '--console.oauth.client-secret[The OAuth client secret]:' \
    '--console.oauth.logout-url[The OAuth Logout URL]:' \
    '--console.oauth.token-url[The OAuth Token Exchange URL]:' \
    '--console.ui.as.base-url[Base URL to the HTTP API]:' \
    '--console.ui.as.enabled[Enable this API]' \
    '--console.ui.assets-base-url[The base URL to the page assets]:' \
    '--console.ui.branding-base-url[The base URL to the branding assets]:' \
    '--console.ui.canonical-url[The page canonical URL]:' \
    '--console.ui.csrftoken[]:' \
    '*--console.ui.css-file[The names of the CSS files]:' \
    '--console.ui.descriptions[The page description]:' \
    '--console.ui.documentation-base-url[The base URL for generating documentation links]:' \
    '--console.ui.edtc.base-url[Base URL to the HTTP API]:' \
    '--console.ui.edtc.enabled[Enable this API]' \
    '--console.ui.gs.base-url[Base URL to the HTTP API]:' \
    '--console.ui.gs.enabled[Enable this API]' \
    '--console.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--console.ui.is.base-url[Base URL to the HTTP API]:' \
    '--console.ui.is.enabled[Enable this API]' \
    '*--console.ui.js-file[The names of the JS files]:' \
    '--console.ui.js.base-url[Base URL to the HTTP API]:' \
    '--console.ui.js.enabled[Enable this API]' \
    '--console.ui.language[The page language]:' \
    '--console.ui.ns.base-url[Base URL to the HTTP API]:' \
    '--console.ui.ns.enabled[Enable this API]' \
    '--console.ui.qrg.base-url[Base URL to the HTTP API]:' \
    '--console.ui.qrg.enabled[Enable this API]' \
    '--console.ui.sentry-dsn[The Sentry DSN]:' \
    '--console.ui.site-name[The site name]:' \
    '--console.ui.sub-title[The page sub-title]:' \
    '--console.ui.support-link[The URI that the support button will point to]:' \
    '--console.ui.theme-color[The page theme color]:' \
    '--console.ui.title[The page title]:' \
    '--device-repository.blob.bucket[Bucket to use]:' \
    '--device-repository.blob.path[Path to use]:' \
    '--device-repository.config-source[Source of the device repository (static, directory, url, blob)]:' \
    '--device-repository.directory[OS filesystem directory, which contains device repository]:' \
    '--device-repository.url[URL, which contains device repository]:' \
    '*--dtc.enabled[Enabled converters]:' \
    '--events.backend[Backend to use for events (internal, redis, cloud)]:' \
    '--events.cloud.publish-url[URL for the topic to send events]:' \
    '--events.cloud.subscribe-url[URL for the subscription to receiving events]:' \
    '--events.redis.address[Address of the Redis server]:' \
    '--events.redis.database[Redis database to use]:' \
    '*--events.redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--events.redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--events.redis.failover.master-name[Redis Sentinel master name]:' \
    '*--events.redis.namespace[Namespace for Redis keys]:' \
    '--events.redis.password[Password of the Redis server]:' \
    '--events.redis.pool-size[The maximum number of database connections]:' \
    '--frequency-plans.blob.bucket[Bucket to use]:' \
    '--frequency-plans.blob.path[Path to use]:' \
    '--frequency-plans.config-source[Source of the frequency plans (static, directory, url, blob)]:' \
    '--frequency-plans.directory[OS filesystem directory, which contains frequency plans]:' \
    '--frequency-plans.url[URL, which contains frequency plans]:' \
    '--gcs.basic-station.allow-cups-uri-update[Allow CUPS URI updates]' \
    '--gcs.basic-station.default.lns-uri[The default LNS URI that the gateways should use]:' \
    '--gcs.basic-station.owner-for-unknown.account-type[Type of account to register unknown gateways to (user|organization)]:' \
    '--gcs.basic-station.owner-for-unknown.api-key[API Key to use for unknown gateway registration]:' \
    '--gcs.basic-station.owner-for-unknown.id[ID of the account to register unknown gateways to]:' \
    '--gcs.basic-station.require-explicit-enable[Require gateways to explicitly enable CUPS]' \
    '--gcs.require-auth[Require authentication for the HTTP endpoints.]' \
    '--gcs.the-things-gateway.default.firmware-url[The default URL to the firmware storage]:' \
    '--gcs.the-things-gateway.default.mqtt-server[The default MQTT server that the gateways should use]:' \
    '--gcs.the-things-gateway.default.update-channel[The default update channel that the gateways should use]:' \
    '--grpc.allow-insecure-for-credentials[Allow transmission of credentials over insecure transport]' \
    '--grpc.listen[Address for the TCP gRPC server to listen on]:' \
    '--grpc.listen-tls[Address for the TLS gRPC server to listen on]:' \
    '*--grpc.log-ignore-methods[List of paths for which successful requests will not be logged]:' \
    '--gs.basic-station.fallback-frequency-plan-id[Fallback frequency plan ID for non-registered gateways]:' \
    '--gs.basic-station.listen[Address for the Basic Station frontend to listen on]:' \
    '--gs.basic-station.listen-tls[Address for the Basic Station frontend to listen on (with TLS)]:' \
    '--gs.basic-station.use-traffic-tls-address[Use WSS for the traffic address regardless of the TLS setting]' \
    '--gs.basic-station.ws-ping-interval[Interval to send WS ping messages]:' \
    '*--gs.forward[Forward the DevAddr prefixes to the specified hosts]:' \
    '--gs.mqtt-v2.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt-v2.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt-v2.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt-v2.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.mqtt.listen[Address for the MQTT frontend to listen on]:' \
    '--gs.mqtt.listen-tls[Address for the MQTTS frontend to listen on]:' \
    '--gs.mqtt.public-address[Public address of the MQTT frontend]:' \
    '--gs.mqtt.public-tls-address[Public address of the MQTTs frontend]:' \
    '--gs.require-registered-gateways[Require the gateways to be registered in the Identity Server]' \
    '--gs.udp.addr-change-block[Time to block traffic when a gateway'\''s address changes]:' \
    '--gs.udp.connection-expires[Time after which a connection of a gateway expires]:' \
    '--gs.udp.downlink-path-expires[Time after which a downlink path to a gateway expires]:' \
    '*--gs.udp.listeners[Listen addresses with (optional) fallback frequency plan ID for non-registered gateways]:' \
    '--gs.udp.packet-buffer[Buffer size of unhandled packets]:' \
    '--gs.udp.packet-handlers[Number of concurrent packet handlers]:' \
    '--gs.udp.rate-limiting.enable[Enable rate limiting for gateways]' \
    '--gs.udp.rate-limiting.messages[Number of past messages to check timestamp for]:' \
    '--gs.udp.rate-limiting.threshold[Filter packet if timestamp is not newer than the older timestamps of the previous messages by this threshold]:' \
    '--gs.udp.schedule-late-time[Time in advance to send downlink to the gateway when scheduling late]:' \
    '--gs.update-connection-stats-debounce-time[Time before repeated refresh of the gateway connection stats]:' \
    '--gs.update-gateway-location-debounce-time[Debounce time for gateway location updates from status messages]:' \
    '--http.cookie.block-key[Key for cookie contents encryption (16, 24 or 32 bytes)]:' \
    '--http.cookie.hash-key[Key for cookie contents verification (32 or 64 bytes)]:' \
    '--http.health.enable[Enable health check endpoint on HTTP server]' \
    '--http.health.password[Password to protect health endpoint (username is health)]:' \
    '--http.listen[Address for the HTTP server to listen on]:' \
    '--http.listen-tls[Address for the HTTPS server to listen on]:' \
    '*--http.log-ignore-paths[List of paths for which successful requests will not be logged]:' \
    '--http.metrics.enable[Enable metrics endpoint on HTTP server]' \
    '--http.metrics.password[Password to protect metrics endpoint (username is metrics)]:' \
    '--http.pprof.enable[Enable pprof endpoint on HTTP server]' \
    '--http.pprof.password[Password to protect pprof endpoint (username is pprof)]:' \
    '--http.redirect-to-host[Redirect all requests to one host]:' \
    '--http.redirect-to-tls[Redirect HTTP requests to HTTPS]' \
    '--http.static.mount[Path on the server where static assets will be served]:' \
    '*--http.static.search-path[List of paths for finding the directory to serve static assets from]:' \
    '*--http.trusted-proxies[CIDRs of trusted reverse proxies]:' \
    '--interop.listen-tls[Address for the interop server to listen on]:' \
    '--interop.sender-client-ca.blob.bucket[Bucket to use]:' \
    '--interop.sender-client-ca.blob.path[Path to use]:' \
    '--interop.sender-client-ca.directory[OS filesystem directory, which contains sender client CA configuration]:' \
    '--interop.sender-client-ca.source[Source of the sender client CA configuration (static, directory, url, blob)]:' \
    '--interop.sender-client-ca.url[URL, which contains sender client CA configuration]:' \
    '--is.auth-cache.membership-ttl[TTL of membership caches]:' \
    '--is.database-uri[Database connection URI]:' \
    '--is.email.network.console-url[The URL of the Console]:' \
    '--is.email.network.identity-server-url[The URL of the Identity Server]:' \
    '--is.email.network.name[The name of the network]:' \
    '--is.email.provider[Email provider to use]:' \
    '--is.email.sender-address[The address of the sender]:' \
    '--is.email.sender-name[The name of the sender]:' \
    '--is.email.sendgrid.api-key[The SendGrid API key to use]:' \
    '--is.email.sendgrid.sandbox[Use SendGrid sandbox mode for testing]' \
    '--is.email.smtp.address[SMTP server address]:' \
    '--is.email.smtp.connections[Maximum number of connections to the SMTP server]:' \
    '--is.email.smtp.password[Password to authenticate with]:' \
    '--is.email.smtp.username[Username to authenticate with]:' \
    '--is.email.templates.blob.bucket[Bucket to use]:' \
    '--is.email.templates.blob.path[Path to use]:' \
    '--is.email.templates.directory[Retrieve the email templates from the filesystem]:' \
    '*--is.email.templates.includes[The email templates that will be preloaded on startup]:' \
    '--is.email.templates.source[Source of the email template files (static, directory, url, blob)]:' \
    '--is.email.templates.url[Retrieve the email templates from a web server]:' \
    '--is.end-device-picture.bucket[Bucket used for storing end device pictures]:' \
    '--is.end-device-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.end-device-picture.disable-upload[Disable uploading end device pictures]' \
    '--is.oauth.mount[Path on the server where the OAuth server will be served]:' \
    '--is.oauth.ui.assets-base-url[The base URL to the page assets]:' \
    '--is.oauth.ui.branding-base-url[The base URL to the branding assets]:' \
    '--is.oauth.ui.canonical-url[The page canonical URL]:' \
    '--is.oauth.ui.csrftoken[]:' \
    '*--is.oauth.ui.css-file[The names of the CSS files]:' \
    '--is.oauth.ui.descriptions[The page description]:' \
    '--is.oauth.ui.icon-prefix[The prefix to put before the page icons (favicon.ico, touch-icon.png, og-image.png)]:' \
    '--is.oauth.ui.is.base-url[Base URL to the HTTP API]:' \
    '--is.oauth.ui.is.enabled[Enable this API]' \
    '*--is.oauth.ui.js-file[The names of the JS files]:' \
    '--is.oauth.ui.language[The page language]:' \
    '--is.oauth.ui.sentry-dsn[The Sentry DSN]:' \
    '--is.oauth.ui.site-name[The site name]:' \
    '--is.oauth.ui.sub-title[The page sub-title]:' \
    '--is.oauth.ui.theme-color[The page theme color]:' \
    '--is.oauth.ui.title[The page title]:' \
    '--is.profile-picture.bucket[Bucket used for storing profile pictures]:' \
    '--is.profile-picture.bucket-url[Base URL for public bucket access]:' \
    '--is.profile-picture.disable-upload[Disable uploading profile pictures]' \
    '--is.profile-picture.use-gravatar[Use Gravatar fallback for users without profile picture]' \
    '--is.user-registration.admin-approval.required[Require admin approval for new users]' \
    '--is.user-registration.contact-info-validation.required[Require contact info validation for new users]' \
    '--is.user-registration.invitation.required[Require invitations for new users]' \
    '--is.user-registration.invitation.token-ttl[TTL of user invitation tokens]:' \
    '--is.user-registration.password-requirements.max-length[Maximum password length]:' \
    '--is.user-registration.password-requirements.min-digits[Minimum number of digits]:' \
    '--is.user-registration.password-requirements.min-length[Minimum password length]:' \
    '--is.user-registration.password-requirements.min-special[Minimum number of special characters]:' \
    '--is.user-registration.password-requirements.min-uppercase[Minimum number of uppercase letters]:' \
    '--is.user-rights.create-applications[Allow non-admin users to create applications in their user account]' \
    '--is.user-rights.create-clients[Allow non-admin users to create OAuth clients in their user account]' \
    '--is.user-rights.create-gateways[Allow non-admin users to create gateways in their user account]' \
    '--is.user-rights.create-organizations[Allow non-admin users to create organizations in their user account]' \
    '--js.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '*--js.join-eui-prefix[JoinEUI prefixes handled by this JS]:' \
    '--key-vault.cache.size[Cache size. Caching is disabled if size is 0]:' \
    '--key-vault.cache.ttl[Cache elements time to live. No expiration mechanism is used if TTL is 0]:' \
    '--key-vault.provider[Provider (static)]:' \
    '*--key-vault.static[]:' \
    '--log.level[The minimum level log messages must have to be shown]:' \
    '--ns.application-uplink-queue.buffer-size[]:' \
    '--ns.cooldown-window[Time window starting right after deduplication window, during which, duplicate messages are discarded]:' \
    '--ns.deduplication-window[Time window during which, duplicate messages are collected for metadata]:' \
    '--ns.default-mac-settings.adr-margin[The default margin Network Server should add in ADR requests if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-b-timeout[Deadline for a device in class B mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.class-c-timeout[Deadline for a device in class C mode to respond to requests from the Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.desired-rx1-delay[Desired Rx1Delay value Network Server should use if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-count-periodicity[Number of uplink messages after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '--ns.default-mac-settings.status-time-periodicity[The interval after which a DevStatusReq MACCommand shall be sent by Network Server if not configured in device'\''s MAC settings]:' \
    '*--ns.dev-addr-prefixes[Device address prefixes of this Network Server]:' \
    '--ns.device-kek-label[Label of KEK used to encrypt device keys at rest]:' \
    '--ns.downlink-priorities.join-accept[Priority for join-accept messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.mac-commands[Priority for messages carrying MAC commands (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.downlink-priorities.max-application-downlink[Maximum priority for application downlink messages (lowest, low, below_normal, normal, above_normal, high, highest)]:' \
    '--ns.interop.blob.bucket[Bucket to use]:' \
    '--ns.interop.blob.path[Path to use]:' \
    '--ns.interop.config-source[Source of the interoperability client configuration (directory, url, blob)]:' \
    '--ns.interop.directory[OS filesystem directory, which contains interoperability client configuration]:' \
    '--ns.interop.url[URL, which contains interoperability client configuration]:' \
    '--ns.net-id[NetID of this Network Server]:' \
    '--pba.cluster-id[Cluster ID uniquely identifying this cluster within a NetID and tenant]:' \
    '--pba.data-plane-address[Address of the Packet Broker Data Plane]:' \
    '--pba.forwarder.enable[Enable Forwarder role]' \
    '--pba.forwarder.token-key[AES 128 or 256-bit key for encrypting tokens]:' \
    '--pba.forwarder.worker-pool.limit[Limit of active workers]:' \
    '--pba.home-network.blacklist-forwarder[Blacklist traffic from Forwarder to avoid traffic loops]' \
    '*--pba.home-network.dev-addr-prefixes[DevAddr prefixes to subscribe to]:' \
    '--pba.home-network.enable[Enable Home Network role]' \
    '--pba.home-network.worker-pool.limit[Limit of active workers]:' \
    '--pba.net-id[LoRa Alliance NetID]:' \
    '--pba.tenant-id[Tenant ID within the NetID]:' \
    '--pba.tls.certificate[Location of TLS certificate]:' \
    '--pba.tls.key[Location of TLS private key]:' \
    '--pba.tls.key-vault.id[ID of the certificate]:' \
    '--pba.tls.source[Source of the TLS certificate (file, key-vault)]:' \
    '--redis.address[Address of the Redis server]:' \
    '--redis.database[Redis database to use]:' \
    '*--redis.failover.addresses[Redis Sentinel server addresses]:' \
    '--redis.failover.enable[Enable failover using Redis Sentinel]' \
    '--redis.failover.master-name[Redis Sentinel master name]:' \
    '*--redis.namespace[Namespace for Redis keys]:' \
    '--redis.password[Password of the Redis server]:' \
    '--redis.pool-size[The maximum number of database connections]:' \
    '--rights.ttl[Validity of Identity Server responses]:' \
    '--sentry.dsn[Sentry Data Source Name]:' \
    '--tls.acme.default-host[Default host to assume for clients without SNI]:' \
    '--tls.acme.dir[Location of ACME storage directory]:' \
    '--tls.acme.email[Email address to register with the ACME account]:' \
    '--tls.acme.enable[Enable automated certificate management (ACME). This setting is deprecated; set the TLS config source to acme instead]' \
    '--tls.acme.endpoint[ACME endpoint]:' \
    '*--tls.acme.hosts[Hosts to enable automatic certificates for]:' \
    '--tls.certificate[Location of TLS certificate]:' \
    '--tls.insecure-skip-verify[Skip verification of certificate chains (insecure)]' \
    '--tls.key[Location of TLS private key]:' \
    '--tls.key-vault.id[ID of the certificate]:' \
    '--tls.root-ca[Location of TLS root CA certificate (optional)]:' \
    '--tls.source[Source of the TLS certificate (file, acme, key-vault)]:'
}

