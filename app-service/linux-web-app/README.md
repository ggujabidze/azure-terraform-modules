<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.32.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.32.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_web_app.my_linux_web_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action_type"></a> [action\_type](#input\_action\_type) | (Required) Predefined action to be taken to an Auto Heal trigger. Possible values include: Recycle, LogEvent, and CustomAction. | `string` | `null` | no |
| <a name="input_active_directory_allowed_audiences"></a> [active\_directory\_allowed\_audiences](#input\_active\_directory\_allowed\_audiences) | (Optional) Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory. | `list(string)` | `null` | no |
| <a name="input_active_directory_client_id"></a> [active\_directory\_client\_id](#input\_active\_directory\_client\_id) | (Required) The ID of the Client to use to authenticate with Azure Active Directory. | `string` | `null` | no |
| <a name="input_active_directory_client_secret"></a> [active\_directory\_client\_secret](#input\_active\_directory\_client\_secret) | (Optional) The Client Secret for the Client ID. Cannot be used with client\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_active_directory_client_secret_settings_name"></a> [active\_directory\_client\_secret\_settings\_name](#input\_active\_directory\_client\_secret\_settings\_name) | (Optional) The App Setting name that contains the client secret of the Client. Cannot be used with client\_secret. | `string` | `null` | no |
| <a name="input_additional_login_parameters"></a> [additional\_login\_parameters](#input\_additional\_login\_parameters) | (Optional) Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in. | `map(string)` | `null` | no |
| <a name="input_allowed_external_redirect_urls"></a> [allowed\_external\_redirect\_urls](#input\_allowed\_external\_redirect\_urls) | (Optional) Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Linux Web App. | `list(string)` | `null` | no |
| <a name="input_always_on"></a> [always\_on](#input\_always\_on) | (Optional) If this Linux Web App is Always On enabled. Must be explicitly set to false when using Free, F1, D1, or Shared Service Plans. | `bool` | `false` | no |
| <a name="input_api_definition_url"></a> [api\_definition\_url](#input\_api\_definition\_url) | (Optional) The URL to the API Definition for this Linux Web App. | `string` | `null` | no |
| <a name="input_api_management_api_id"></a> [api\_management\_api\_id](#input\_api\_management\_api\_id) | (Optional) The API Management API ID this Linux Web App Slot is associated with. | `string` | `null` | no |
| <a name="input_app_azure_blob_storage_level"></a> [app\_azure\_blob\_storage\_level](#input\_app\_azure\_blob\_storage\_level) | (Required) The level at which to log. Possible values include Error, Warning, Information, Verbose and Off. | `string` | `null` | no |
| <a name="input_app_azure_blob_storage_retention_in_days"></a> [app\_azure\_blob\_storage\_retention\_in\_days](#input\_app\_azure\_blob\_storage\_retention\_in\_days) | (Required) The time in days after which to remove blobs. A value of 0 means no retention. | `number` | `null` | no |
| <a name="input_app_azure_blob_storage_sas_url"></a> [app\_azure\_blob\_storage\_sas\_url](#input\_app\_azure\_blob\_storage\_sas\_url) | (Required) SAS url to an Azure blob container with read/write/list/delete permissions. | `string` | `null` | no |
| <a name="input_app_command_line"></a> [app\_command\_line](#input\_app\_command\_line) | (Optional) The App command line to launch. | `string` | `null` | no |
| <a name="input_app_settings"></a> [app\_settings](#input\_app\_settings) | (Optional) A map of key-value pairs of App Settings. | `map(string)` | `{}` | no |
| <a name="input_application_logs_file_system_level"></a> [application\_logs\_file\_system\_level](#input\_application\_logs\_file\_system\_level) | (Required) Log level. Possible values include: Verbose, Information, Warning, and Error. | `string` | `null` | no |
| <a name="input_application_stack_enabled"></a> [application\_stack\_enabled](#input\_application\_stack\_enabled) | If we want to enable application stack block | `bool` | `false` | no |
| <a name="input_auth_settings_enabled"></a> [auth\_settings\_enabled](#input\_auth\_settings\_enabled) | (Required) Should the Authentication / Authorization feature is enabled for the Linux Web App be enabled? | `bool` | `false` | no |
| <a name="input_authorized_ip_addresses"></a> [authorized\_ip\_addresses](#input\_authorized\_ip\_addresses) | The list of all IP addresses or IP Ranges to match. For example: 10.0.0.0/24 or 192.168.10.1/32 | `list(string)` | `[]` | no |
| <a name="input_authorized_service_tags"></a> [authorized\_service\_tags](#input\_authorized\_service\_tags) | The list of all Service Tags used for this IP Restriction. | `list(string)` | `[]` | no |
| <a name="input_authorized_virtual_network_subnet_ids"></a> [authorized\_virtual\_network\_subnet\_ids](#input\_authorized\_virtual\_network\_subnet\_ids) | The list of all Virtual Network Subnet IDs used for this IP Restriction. | `list(string)` | `[]` | no |
| <a name="input_auto_heal_enabled"></a> [auto\_heal\_enabled](#input\_auto\_heal\_enabled) | (Optional) Should Auto heal rules be enabled. Required with auto\_heal\_setting. | `bool` | `null` | no |
| <a name="input_auto_health_trigger_enabled"></a> [auto\_health\_trigger\_enabled](#input\_auto\_health\_trigger\_enabled) | If trigger block is enabled in auto\_health | `bool` | `false` | no |
| <a name="input_backup_enabled"></a> [backup\_enabled](#input\_backup\_enabled) | (Optional) Should this backup job be enabled? | `bool` | `false` | no |
| <a name="input_backup_name"></a> [backup\_name](#input\_backup\_name) | (Required) The name which should be used for this Backup. | `string` | `null` | no |
| <a name="input_client_affinity_enabled"></a> [client\_affinity\_enabled](#input\_client\_affinity\_enabled) | (Optional) Should Client Affinity be enabled? | `bool` | `false` | no |
| <a name="input_client_certificate_enabled"></a> [client\_certificate\_enabled](#input\_client\_certificate\_enabled) | (Optional) Should Client Certificates be enabled? | `bool` | `false` | no |
| <a name="input_client_certificate_exclusion_paths"></a> [client\_certificate\_exclusion\_paths](#input\_client\_certificate\_exclusion\_paths) | (Optional) Paths to exclude when using client certificates, separated by ; | `string` | `null` | no |
| <a name="input_client_certificate_mode"></a> [client\_certificate\_mode](#input\_client\_certificate\_mode) | (Optional) The Client Certificate mode. Possible values are Required, Optional, and OptionalInteractiveUser. This property has no effect when client\_cert\_enabled is false | `string` | `null` | no |
| <a name="input_connection_string"></a> [connection\_string](#input\_connection\_string) | List of connections string settings | `list(map(string))` | `[]` | no |
| <a name="input_container_registry_managed_identity_client_id"></a> [container\_registry\_managed\_identity\_client\_id](#input\_container\_registry\_managed\_identity\_client\_id) | (Optional) The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry. | `string` | `null` | no |
| <a name="input_container_registry_use_managed_identity"></a> [container\_registry\_use\_managed\_identity](#input\_container\_registry\_use\_managed\_identity) | (Optional) Should connections for Azure Container Registry use Managed Identity. | `string` | `null` | no |
| <a name="input_cors_allowed_origins"></a> [cors\_allowed\_origins](#input\_cors\_allowed\_origins) | Specifies a list of origins that should be allowed to make cross-origin calls. | `list(string)` | `null` | no |
| <a name="input_cors_support_credentials"></a> [cors\_support\_credentials](#input\_cors\_support\_credentials) | Are credentials allowed in CORS requests? | `bool` | `false` | no |
| <a name="input_default_documents"></a> [default\_documents](#input\_default\_documents) | Specifies a list of Default Documents for the Windows Function App. | `list(string)` | `[]` | no |
| <a name="input_default_provider"></a> [default\_provider](#input\_default\_provider) | (Optional) The default authentication provider to use when multiple providers are configured. Possible values include: AzureActiveDirectory, Facebook, Google, MicrosoftAccount, Twitter, Github. | `string` | `null` | no |
| <a name="input_detailed_error_messages"></a> [detailed\_error\_messages](#input\_detailed\_error\_messages) | (Optional) Should detailed error messages be enabled. | `bool` | `false` | no |
| <a name="input_docker_image"></a> [docker\_image](#input\_docker\_image) | (Optional) The Docker image reference, including repository host as needed. | `string` | `null` | no |
| <a name="input_docker_image_tag"></a> [docker\_image\_tag](#input\_docker\_image\_tag) | (Optional) The image Tag to use. e.g. latest. | `string` | `null` | no |
| <a name="input_dotnet_version"></a> [dotnet\_version](#input\_dotnet\_version) | (Optional) The version of .NET to use when current\_stack is set to dotnet. Possible values include v2.0,v3.0,core3.1, v4.0, v5.0, v6.0 and v7.0. | `string` | `null` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | (Optional) Should the Linux Web App be enabled? | `bool` | `true` | no |
| <a name="input_facebook_app_id"></a> [facebook\_app\_id](#input\_facebook\_app\_id) | (Required) The App ID of the Facebook app used for login. | `string` | `null` | no |
| <a name="input_facebook_app_secret"></a> [facebook\_app\_secret](#input\_facebook\_app\_secret) | (Optional) The App Secret of the Facebook app used for Facebook login. Cannot be specified with app\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_facebook_app_secret_setting_name"></a> [facebook\_app\_secret\_setting\_name](#input\_facebook\_app\_secret\_setting\_name) | (Optional) The app setting name that contains the app\_secret value used for Facebook login. Cannot be specified with app\_secret. | `string` | `null` | no |
| <a name="input_facebook_oauth_scopes"></a> [facebook\_oauth\_scopes](#input\_facebook\_oauth\_scopes) | (Optional) Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication. | `list(string)` | `null` | no |
| <a name="input_failed_request_tracing"></a> [failed\_request\_tracing](#input\_failed\_request\_tracing) | (Optional) Should tracing be enabled for failed requests. | `bool` | `false` | no |
| <a name="input_frequency_interval"></a> [frequency\_interval](#input\_frequency\_interval) | (Required) How often the backup should be executed (e.g. for weekly backup, this should be set to 7 and frequency\_unit should be set to Day). | `number` | `null` | no |
| <a name="input_frequency_unit"></a> [frequency\_unit](#input\_frequency\_unit) | (Required) The unit of time for how often the backup should take place. Possible values include: Day, Hour | `string` | `null` | no |
| <a name="input_ftps_state"></a> [ftps\_state](#input\_ftps\_state) | (Optional) The State of FTP / FTPS service. Possible values include: AllAllowed, FtpsOnly, Disabled. | `string` | `null` | no |
| <a name="input_github_client_id"></a> [github\_client\_id](#input\_github\_client\_id) | (Required) The ID of the GitHub app used for login. | `string` | `null` | no |
| <a name="input_github_client_secret"></a> [github\_client\_secret](#input\_github\_client\_secret) | (Optional) The Client Secret of the GitHub app used for GitHub login. Cannot be specified with client\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_github_client_secret_settings_name"></a> [github\_client\_secret\_settings\_name](#input\_github\_client\_secret\_settings\_name) | (Optional) The app setting name that contains the client\_secret value used for GitHub login. Cannot be specified with client\_secret. | `string` | `null` | no |
| <a name="input_github_oauth_scopes"></a> [github\_oauth\_scopes](#input\_github\_oauth\_scopes) | (Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication. | `list(string)` | `null` | no |
| <a name="input_google_client_id"></a> [google\_client\_id](#input\_google\_client\_id) | (Required) The ID of the google app used for login. | `string` | `null` | no |
| <a name="input_google_client_secret"></a> [google\_client\_secret](#input\_google\_client\_secret) | (Optional) The Client Secret of the google app used for google login. Cannot be specified with client\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_google_client_secret_settings_name"></a> [google\_client\_secret\_settings\_name](#input\_google\_client\_secret\_settings\_name) | (Optional) The app setting name that contains the client\_secret value used for google login. Cannot be specified with client\_secret. | `string` | `null` | no |
| <a name="input_google_oauth_scopes"></a> [google\_oauth\_scopes](#input\_google\_oauth\_scopes) | (Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of google login authentication. | `list(string)` | `null` | no |
| <a name="input_health_check_eviction_time_in_min"></a> [health\_check\_eviction\_time\_in\_min](#input\_health\_check\_eviction\_time\_in\_min) | Optional) The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between 2 and 10. Only valid in conjunction with health\_check\_path. | `number` | `null` | no |
| <a name="input_health_check_path"></a> [health\_check\_path](#input\_health\_check\_path) | (Optional) The path to the Health Check. | `string` | `null` | no |
| <a name="input_http2_enabled"></a> [http2\_enabled](#input\_http2\_enabled) | (Optional) Should the HTTP2 be enabled? | `bool` | `null` | no |
| <a name="input_http_azure_blob_storage_retention_in_days"></a> [http\_azure\_blob\_storage\_retention\_in\_days](#input\_http\_azure\_blob\_storage\_retention\_in\_days) | (Required) The time in days after which to remove blobs. A value of 0 means no retention. | `number` | `null` | no |
| <a name="input_http_azure_blob_storage_sas_url"></a> [http\_azure\_blob\_storage\_sas\_url](#input\_http\_azure\_blob\_storage\_sas\_url) | (Required) SAS url to an Azure blob container with read/write/list/delete permissions. | `string` | `null` | no |
| <a name="input_http_file_system_retention_in_days"></a> [http\_file\_system\_retention\_in\_days](#input\_http\_file\_system\_retention\_in\_days) | (Required) The retention period in days. A values of 0 means no retention. | `number` | `null` | no |
| <a name="input_http_file_system_retention_in_mb"></a> [http\_file\_system\_retention\_in\_mb](#input\_http\_file\_system\_retention\_in\_mb) | (Required) The maximum size in megabytes that log files can use. | `number` | `null` | no |
| <a name="input_https_logs_enabled"></a> [https\_logs\_enabled](#input\_https\_logs\_enabled) | If http\_logs should be enabled | `bool` | `false` | no |
| <a name="input_https_only"></a> [https\_only](#input\_https\_only) | (Optional) Should the Linux Web App require HTTPS connections. | `bool` | `false` | no |
| <a name="input_ip_restriction_headers"></a> [ip\_restriction\_headers](#input\_ip\_restriction\_headers) | The map of IP restriction headers | `list(any)` | `null` | no |
| <a name="input_issuer"></a> [issuer](#input\_issuer) | (Optional) The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Linux Web App. | `string` | `null` | no |
| <a name="input_java_server"></a> [java\_server](#input\_java\_server) | (Optional) The Java server type. Possible values include JAVA, TOMCAT, and JBOSSEAP. JBOSSEAP requires a Premium Service Plan SKU to be a valid option. | `string` | `null` | no |
| <a name="input_java_server_version"></a> [java\_server\_version](#input\_java\_server\_version) | (Optional) The Version of the java\_server to use. | `string` | `null` | no |
| <a name="input_java_version"></a> [java\_version](#input\_java\_version) | (Optional) The Version of Java to use. Supported versions of Java vary depending on the java\_server and java\_server\_version, as well as security and fixes to major versions. Please see Azure documentation for the latest information. | `string` | `null` | no |
| <a name="input_keep_at_least_one_backup"></a> [keep\_at\_least\_one\_backup](#input\_keep\_at\_least\_one\_backup) | (Optional) Should the service keep at least one backup, regardless of age of backup. | `bool` | `false` | no |
| <a name="input_key_vault_reference_identity_id"></a> [key\_vault\_reference\_identity\_id](#input\_key\_vault\_reference\_identity\_id) | (Optional) The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the identity block. | `string` | `null` | no |
| <a name="input_load_balancing_mode"></a> [load\_balancing\_mode](#input\_load\_balancing\_mode) | (Optional) The Site load balancing. Possible values include: WeightedRoundRobin, LeastRequests, LeastResponseTime, WeightedTotalTraffic, RequestHash, PerSiteRoundRobin. | `string` | `null` | no |
| <a name="input_local_mysql_enabled"></a> [local\_mysql\_enabled](#input\_local\_mysql\_enabled) | (Optional) Use Local MySQL. | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) The Azure Region where the Linux Web App should exist. Changing this forces a new Linux Web App to be created. | `string` | n/a | yes |
| <a name="input_logs_enabled"></a> [logs\_enabled](#input\_logs\_enabled) | If logs block is set | `bool` | `false` | no |
| <a name="input_managed_pipeline_mode"></a> [managed\_pipeline\_mode](#input\_managed\_pipeline\_mode) | (Optional) Managed pipeline mode. Possible values include: Integrated, Classic. | `string` | `null` | no |
| <a name="input_microsoft_client_id"></a> [microsoft\_client\_id](#input\_microsoft\_client\_id) | (Required) The ID of the microsoft app used for login. | `string` | `null` | no |
| <a name="input_microsoft_client_secret"></a> [microsoft\_client\_secret](#input\_microsoft\_client\_secret) | (Optional) The Client Secret of the microsoft app used for microsoft login. Cannot be specified with client\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_microsoft_client_secret_settings_name"></a> [microsoft\_client\_secret\_settings\_name](#input\_microsoft\_client\_secret\_settings\_name) | (Optional) The app setting name that contains the client\_secret value used for microsoft login. Cannot be specified with client\_secret. | `string` | `null` | no |
| <a name="input_microsoft_oauth_scopes"></a> [microsoft\_oauth\_scopes](#input\_microsoft\_oauth\_scopes) | (Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of microsoft login authentication. | `list(string)` | `null` | no |
| <a name="input_minimum_process_execution_time"></a> [minimum\_process\_execution\_time](#input\_minimum\_process\_execution\_time) | (Optional) The minimum amount of time in hh:mm:ss the Linux Web App must have been running before the defined action will be run in the event of a trigger. | `string` | `null` | no |
| <a name="input_minimum_tls_version"></a> [minimum\_tls\_version](#input\_minimum\_tls\_version) | (Optional) The configures the minimum version of TLS required for SSL requests. Possible values include: 1.0, 1.1, and 1.2. | `string` | `"1.2"` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name which should be used for this Linux Web App. Changing this forces a new Linux Web App to be created. | `string` | n/a | yes |
| <a name="input_node_version"></a> [node\_version](#input\_node\_version) | (Optional) The version of Node to run. Possible values include 12-lts, 14-lts, and 16-lts. This property conflicts with java\_version. | `string` | `null` | no |
| <a name="input_php_version"></a> [php\_version](#input\_php\_version) | (Optional) The version of PHP to run. Possible values include 7.4, and 8.0. | `string` | `null` | no |
| <a name="input_python_version"></a> [python\_version](#input\_python\_version) | (Optional) The version of Python to run. Possible values include 3.7, 3.8, 3.9 and 3.10. | `string` | `null` | no |
| <a name="input_remote_debugging_enabled"></a> [remote\_debugging\_enabled](#input\_remote\_debugging\_enabled) | (Optional) Should Remote Debugging be enabled. | `bool` | `false` | no |
| <a name="input_remote_debugging_version"></a> [remote\_debugging\_version](#input\_remote\_debugging\_version) | (Optional) The Remote Debugging Version. Possible values include VS2017 and VS2019 | `string` | `null` | no |
| <a name="input_requests_count"></a> [requests\_count](#input\_requests\_count) | (Required) The number of requests in the specified interval to trigger this rule. | `number` | `null` | no |
| <a name="input_requests_interval"></a> [requests\_interval](#input\_requests\_interval) | (Required) The interval in hh:mm:ss. | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the Resource Group where the Linux Web App should exist. Changing this forces a new Linux Web App to be created. | `string` | n/a | yes |
| <a name="input_retention_period_days"></a> [retention\_period\_days](#input\_retention\_period\_days) | (Optional) After how many days backups should be deleted. | `number` | `null` | no |
| <a name="input_ruby_version"></a> [ruby\_version](#input\_ruby\_version) | (Optional) Te version of Ruby to run. Possible values include 2.6 and 2.7. | `string` | `null` | no |
| <a name="input_runtime_version"></a> [runtime\_version](#input\_runtime\_version) | (Optional) The RuntimeVersion of the Authentication / Authorization feature in use for the Linux Web App. | `string` | `null` | no |
| <a name="input_scm_authorized_ip_addresses"></a> [scm\_authorized\_ip\_addresses](#input\_scm\_authorized\_ip\_addresses) | The list of all IP addresses or IP Ranges to match. For example: 10.0.0.0/24 or 192.168.10.1/32 | `list(string)` | `[]` | no |
| <a name="input_scm_authorized_service_tags"></a> [scm\_authorized\_service\_tags](#input\_scm\_authorized\_service\_tags) | The list of all Service Tags used for this IP Restriction. | `list(string)` | `[]` | no |
| <a name="input_scm_authorized_virtual_network_subnet_ids"></a> [scm\_authorized\_virtual\_network\_subnet\_ids](#input\_scm\_authorized\_virtual\_network\_subnet\_ids) | The list of all Virtual Network Subnet IDs used for this IP Restriction. | `list(string)` | `[]` | no |
| <a name="input_scm_ip_restriction_headers"></a> [scm\_ip\_restriction\_headers](#input\_scm\_ip\_restriction\_headers) | The map of IP restriction headers | `list(any)` | `null` | no |
| <a name="input_scm_minimum_tls_version"></a> [scm\_minimum\_tls\_version](#input\_scm\_minimum\_tls\_version) | (Optional) The configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: 1.0, 1.1, and 1.2. | `string` | `"1.2"` | no |
| <a name="input_scm_use_main_ip_restriction"></a> [scm\_use\_main\_ip\_restriction](#input\_scm\_use\_main\_ip\_restriction) | (Optional) Should the Linux Web App ip\_restriction configuration be used for the SCM also. | `bool` | `false` | no |
| <a name="input_service_plan_id"></a> [service\_plan\_id](#input\_service\_plan\_id) | (Required) The ID of the Service Plan that this Windows App Service will be created in. | `string` | n/a | yes |
| <a name="input_slow_request"></a> [slow\_request](#input\_slow\_request) | The list of map containing slow\_request parameters | `list(map(string))` | `null` | no |
| <a name="input_start_time"></a> [start\_time](#input\_start\_time) | (Optional) When the schedule should start working in RFC-3339 format. | `string` | `null` | no |
| <a name="input_status_code"></a> [status\_code](#input\_status\_code) | The list of map containing status\_code parameters | `list(map(string))` | `null` | no |
| <a name="input_sticky_settings_app_setting_names"></a> [sticky\_settings\_app\_setting\_names](#input\_sticky\_settings\_app\_setting\_names) | (Optional) A list of app\_setting names that the Linux Web App will not swap between Slots when a swap operation is triggered. | `list(string)` | `null` | no |
| <a name="input_sticky_settings_connection_string_names"></a> [sticky\_settings\_connection\_string\_names](#input\_sticky\_settings\_connection\_string\_names) | (Optional) A list of connection\_string names that the Linux Web App will not swap between Slots when a swap operation is triggered. | `list(string)` | `null` | no |
| <a name="input_sticky_settings_enabled"></a> [sticky\_settings\_enabled](#input\_sticky\_settings\_enabled) | If sticky settings should be enabled | `bool` | `false` | no |
| <a name="input_storage_account"></a> [storage\_account](#input\_storage\_account) | The list of key/value pairs (maps), containing storage account settings | `list(map(string))` | `[]` | no |
| <a name="input_storage_account_url"></a> [storage\_account\_url](#input\_storage\_account\_url) | (Required) The SAS URL to the container. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags which should be assigned to the Linux Web App. | `map(string)` | `{}` | no |
| <a name="input_token_refresh_extension_hours"></a> [token\_refresh\_extension\_hours](#input\_token\_refresh\_extension\_hours) | (Optional) The number of hours after session token expiration that a session token can be used to call the token refresh API. | `number` | `null` | no |
| <a name="input_token_store_enabled"></a> [token\_store\_enabled](#input\_token\_store\_enabled) | (Optional) Should the Linux Web App durably store platform-specific security tokens that are obtained during login flows? | `bool` | `false` | no |
| <a name="input_twitter_consumer_key"></a> [twitter\_consumer\_key](#input\_twitter\_consumer\_key) | (Required) The OAuth 1.0a consumer key of the Twitter application used for sign-in. | `string` | `null` | no |
| <a name="input_twitter_consumer_secret"></a> [twitter\_consumer\_secret](#input\_twitter\_consumer\_secret) | (Optional) The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with consumer\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_twitter_secret_setting_name"></a> [twitter\_secret\_setting\_name](#input\_twitter\_secret\_setting\_name) | (Optional) The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with consumer\_secret. | `string` | `null` | no |
| <a name="input_unauthenticated_client_action"></a> [unauthenticated\_client\_action](#input\_unauthenticated\_client\_action) | (Optional) The action to take when an unauthenticated client attempts to access the app. Possible values include: RedirectToLoginPage, AllowAnonymous. | `string` | `null` | no |
| <a name="input_use_32_bit_worker"></a> [use\_32\_bit\_worker](#input\_use\_32\_bit\_worker) | (Optional) Should the Linux Web App use a 32-bit worker. | `bool` | `null` | no |
| <a name="input_virtual_network_subnet_id"></a> [virtual\_network\_subnet\_id](#input\_virtual\_network\_subnet\_id) | (Optional) The subnet id which will be used by this Web App for regional virtual network integration. | `string` | `null` | no |
| <a name="input_vnet_route_all_enabled"></a> [vnet\_route\_all\_enabled](#input\_vnet\_route\_all\_enabled) | (Optional) Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? | `bool` | `false` | no |
| <a name="input_web_app_identity_id"></a> [web\_app\_identity\_id](#input\_web\_app\_identity\_id) | (Optional) A list of User Assigned Managed Identity IDs to be assigned to this Linux Web App. This is required when type is set to UserAssigned or SystemAssigned, UserAssigned. | `list(string)` | `[]` | no |
| <a name="input_web_app_identity_type"></a> [web\_app\_identity\_type](#input\_web\_app\_identity\_type) | (Required) Specifies the type of Managed Service Identity that should be configured on this Linux Web App. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both). | `string` | `null` | no |
| <a name="input_websockets_enabled"></a> [websockets\_enabled](#input\_websockets\_enabled) | (Optional) Should Web Sockets be enabled. | `bool` | `false` | no |
| <a name="input_worker_count"></a> [worker\_count](#input\_worker\_count) | (Optional) The number of Workers for this Windows App Service. | `number` | `null` | no |
| <a name="input_zip_deploy_file"></a> [zip\_deploy\_file](#input\_zip\_deploy\_file) | (Optional) The local path and filename of the Zip packaged application to deploy to this Linux Web App. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_web_app_hostname"></a> [web\_app\_hostname](#output\_web\_app\_hostname) | n/a |
| <a name="output_web_app_id"></a> [web\_app\_id](#output\_web\_app\_id) | n/a |
| <a name="output_web_app_outbound_ip_list"></a> [web\_app\_outbound\_ip\_list](#output\_web\_app\_outbound\_ip\_list) | n/a |
<!-- END_TF_DOCS -->