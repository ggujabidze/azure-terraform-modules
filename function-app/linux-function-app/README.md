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
| [azurerm_linux_function_app.my_linux_function_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app) | resource |
| [azurerm_private_endpoint.my_private_ep](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_active_directory_allowed_audiences"></a> [active\_directory\_allowed\_audiences](#input\_active\_directory\_allowed\_audiences) | (Optional) Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory. | `list(string)` | `null` | no |
| <a name="input_active_directory_client_id"></a> [active\_directory\_client\_id](#input\_active\_directory\_client\_id) | (Required) The ID of the Client to use to authenticate with Azure Active Directory. | `string` | `null` | no |
| <a name="input_active_directory_client_secret"></a> [active\_directory\_client\_secret](#input\_active\_directory\_client\_secret) | (Optional) The Client Secret for the Client ID. Cannot be used with client\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_active_directory_client_secret_settings_name"></a> [active\_directory\_client\_secret\_settings\_name](#input\_active\_directory\_client\_secret\_settings\_name) | (Optional) The App Setting name that contains the client secret of the Client. Cannot be used with client\_secret. | `string` | `null` | no |
| <a name="input_additional_login_parameters"></a> [additional\_login\_parameters](#input\_additional\_login\_parameters) | (Optional) Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in. | `map(string)` | `null` | no |
| <a name="input_allowed_external_redirect_urls"></a> [allowed\_external\_redirect\_urls](#input\_allowed\_external\_redirect\_urls) | (Optional) Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Linux Function App. | `list(string)` | `null` | no |
| <a name="input_always_on"></a> [always\_on](#input\_always\_on) | If this Linux Function App is Always On enabled | `bool` | `false` | no |
| <a name="input_api_definition_url"></a> [api\_definition\_url](#input\_api\_definition\_url) | The URL of the API definition that describes this Linux Function App. | `string` | `null` | no |
| <a name="input_api_management_api_id"></a> [api\_management\_api\_id](#input\_api\_management\_api\_id) | The ID of the API Management API for this Linux Function App. | `string` | `null` | no |
| <a name="input_app_command_line"></a> [app\_command\_line](#input\_app\_command\_line) | The App command line to launch. | `string` | `null` | no |
| <a name="input_app_scale_limit"></a> [app\_scale\_limit](#input\_app\_scale\_limit) | The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan. | `number` | `null` | no |
| <a name="input_app_service_logs_retention_period_days"></a> [app\_service\_logs\_retention\_period\_days](#input\_app\_service\_logs\_retention\_period\_days) | (Optional) The retention period for logs in days. Valid values are between 0 and 99999. 0 means never delete. | `number` | `null` | no |
| <a name="input_application_insights_connection_string"></a> [application\_insights\_connection\_string](#input\_application\_insights\_connection\_string) | The Connection String for linking the Linux Function App to Application Insights. | `string` | `null` | no |
| <a name="input_application_insights_key"></a> [application\_insights\_key](#input\_application\_insights\_key) | The Instrumentation Key for connecting the Linux Function App to Application Insights. | `string` | `null` | no |
| <a name="input_application_stack_enabled"></a> [application\_stack\_enabled](#input\_application\_stack\_enabled) | If we want to enable application stack block | `bool` | `false` | no |
| <a name="input_auth_settings_enabled"></a> [auth\_settings\_enabled](#input\_auth\_settings\_enabled) | (Required) Should the Authentication / Authorization feature is enabled for the Linux Function App be enabled? | `bool` | `false` | no |
| <a name="input_authorized_ip_addresses"></a> [authorized\_ip\_addresses](#input\_authorized\_ip\_addresses) | The list of all IP addresses or IP Ranges to match. For example: 10.0.0.0/24 or 192.168.10.1/32 | `list(string)` | `[]` | no |
| <a name="input_authorized_service_tags"></a> [authorized\_service\_tags](#input\_authorized\_service\_tags) | The list of all Service Tags used for this IP Restriction. | `list(string)` | `[]` | no |
| <a name="input_authorized_virtual_network_subnet_ids"></a> [authorized\_virtual\_network\_subnet\_ids](#input\_authorized\_virtual\_network\_subnet\_ids) | The list of all Virtual Network Subnet IDs used for this IP Restriction. | `list(string)` | `[]` | no |
| <a name="input_backup_enabled"></a> [backup\_enabled](#input\_backup\_enabled) | (Optional) Should this backup job be enabled? | `bool` | `false` | no |
| <a name="input_backup_name"></a> [backup\_name](#input\_backup\_name) | (Required) The name which should be used for this Backup. | `string` | `null` | no |
| <a name="input_builtin_logging_enabled"></a> [builtin\_logging\_enabled](#input\_builtin\_logging\_enabled) | Should built in logging be enabled | `bool` | `true` | no |
| <a name="input_client_certificate_enabled"></a> [client\_certificate\_enabled](#input\_client\_certificate\_enabled) | Should the function app use Client Certificates. | `bool` | `false` | no |
| <a name="input_client_certificate_exclusion_paths"></a> [client\_certificate\_exclusion\_paths](#input\_client\_certificate\_exclusion\_paths) | (Optional) Paths to exclude when using client certificates, separated by ; | `string` | `null` | no |
| <a name="input_client_certificate_mode"></a> [client\_certificate\_mode](#input\_client\_certificate\_mode) | The mode of the Function App's client certificates requirement for incoming requests. Possible values are 'Required', 'Optional', and 'OptionalInteractiveUser'. | `string` | `null` | no |
| <a name="input_connection_string"></a> [connection\_string](#input\_connection\_string) | List of connections string settings | `list(map(string))` | `[]` | no |
| <a name="input_container_registry_managed_identity_client_id"></a> [container\_registry\_managed\_identity\_client\_id](#input\_container\_registry\_managed\_identity\_client\_id) | (Optional) The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry. | `string` | `null` | no |
| <a name="input_container_registry_use_managed_identity"></a> [container\_registry\_use\_managed\_identity](#input\_container\_registry\_use\_managed\_identity) | (Optional) Should connections for Azure Container Registry use Managed Identity. | `string` | `null` | no |
| <a name="input_content_share_force_disabled"></a> [content\_share\_force\_disabled](#input\_content\_share\_force\_disabled) | (Optional) Should the settings for linking the Function App to storage be suppressed. | `bool` | `null` | no |
| <a name="input_cors_allowed_origins"></a> [cors\_allowed\_origins](#input\_cors\_allowed\_origins) | Specifies a list of origins that should be allowed to make cross-origin calls. | `list(string)` | `[]` | no |
| <a name="input_cors_support_credentials"></a> [cors\_support\_credentials](#input\_cors\_support\_credentials) | Are credentials allowed in CORS requests? | `bool` | `false` | no |
| <a name="input_custom_network_interface_name"></a> [custom\_network\_interface\_name](#input\_custom\_network\_interface\_name) | (Optional) The custom name of the network interface attached to the private endpoint. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_daily_memory_time_quota"></a> [daily\_memory\_time\_quota](#input\_daily\_memory\_time\_quota) | The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. | `number` | `0` | no |
| <a name="input_default_documents"></a> [default\_documents](#input\_default\_documents) | Specifies a list of Default Documents for the Linux Function App. | `list(string)` | `[]` | no |
| <a name="input_default_provider"></a> [default\_provider](#input\_default\_provider) | (Optional) The default authentication provider to use when multiple providers are configured. Possible values include: AzureActiveDirectory, Facebook, Google, MicrosoftAccount, Twitter, Github. | `string` | `null` | no |
| <a name="input_disk_quota_mb"></a> [disk\_quota\_mb](#input\_disk\_quota\_mb) | The amount of disk space to use for logs. Valid values are between 25 and 100. | `number` | `null` | no |
| <a name="input_docker"></a> [docker](#input\_docker) | The list of maps, containing multiple blocks of docker settings | `list(map(string))` | `null` | no |
| <a name="input_dotnet_version"></a> [dotnet\_version](#input\_dotnet\_version) | The version of .NET to use. Possible values include 3.1, 6 and 7. | `string` | `null` | no |
| <a name="input_elastic_instance_minimum"></a> [elastic\_instance\_minimum](#input\_elastic\_instance\_minimum) | The number of minimum instances for this Linux Function App. Only affects apps on Elastic Premium plans. | `number` | `null` | no |
| <a name="input_facebook_app_id"></a> [facebook\_app\_id](#input\_facebook\_app\_id) | (Required) The App ID of the Facebook app used for login. | `string` | `null` | no |
| <a name="input_facebook_app_secret"></a> [facebook\_app\_secret](#input\_facebook\_app\_secret) | (Optional) The App Secret of the Facebook app used for Facebook login. Cannot be specified with app\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_facebook_app_secret_setting_name"></a> [facebook\_app\_secret\_setting\_name](#input\_facebook\_app\_secret\_setting\_name) | (Optional) The app setting name that contains the app\_secret value used for Facebook login. Cannot be specified with app\_secret. | `string` | `null` | no |
| <a name="input_facebook_oauth_scopes"></a> [facebook\_oauth\_scopes](#input\_facebook\_oauth\_scopes) | (Optional) Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication. | `list(string)` | `null` | no |
| <a name="input_frequency_interval"></a> [frequency\_interval](#input\_frequency\_interval) | (Required) How often the backup should be executed (e.g. for weekly backup, this should be set to 7 and frequency\_unit should be set to Day). | `number` | `null` | no |
| <a name="input_frequency_unit"></a> [frequency\_unit](#input\_frequency\_unit) | (Required) The unit of time for how often the backup should take place. Possible values include: Day, Hour | `string` | `null` | no |
| <a name="input_ftps_state"></a> [ftps\_state](#input\_ftps\_state) | State of FTP / FTPS service for this Linux Function App. Possible values include: AllAllowed, FtpsOnly and Disabled. Defaults to Disabled. | `string` | `"Disabled"` | no |
| <a name="input_function_app_application_settings"></a> [function\_app\_application\_settings](#input\_function\_app\_application\_settings) | Function App application settings | `map(string)` | `{}` | no |
| <a name="input_function_app_enabled"></a> [function\_app\_enabled](#input\_function\_app\_enabled) | Is the Function App enabled | `bool` | `true` | no |
| <a name="input_function_app_identity_id"></a> [function\_app\_identity\_id](#input\_function\_app\_identity\_id) | A list of User Assigned Managed Identity IDs to be assigned to this Linux Function App. | `list(string)` | `[]` | no |
| <a name="input_function_app_identity_type"></a> [function\_app\_identity\_type](#input\_function\_app\_identity\_type) | Specifies the type of Managed Service Identity that should be configured on this Linux Function App. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both). | `string` | `null` | no |
| <a name="input_functions_extension_version"></a> [functions\_extension\_version](#input\_functions\_extension\_version) | The runtime version associated with the Function App. | `number` | `4` | no |
| <a name="input_github_client_id"></a> [github\_client\_id](#input\_github\_client\_id) | (Required) The ID of the GitHub app used for login. | `string` | `null` | no |
| <a name="input_github_client_secret"></a> [github\_client\_secret](#input\_github\_client\_secret) | (Optional) The Client Secret of the GitHub app used for GitHub login. Cannot be specified with client\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_github_client_secret_settings_name"></a> [github\_client\_secret\_settings\_name](#input\_github\_client\_secret\_settings\_name) | (Optional) The app setting name that contains the client\_secret value used for GitHub login. Cannot be specified with client\_secret. | `string` | `null` | no |
| <a name="input_github_oauth_scopes"></a> [github\_oauth\_scopes](#input\_github\_oauth\_scopes) | (Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication. | `list(string)` | `null` | no |
| <a name="input_google_client_id"></a> [google\_client\_id](#input\_google\_client\_id) | (Required) The ID of the google app used for login. | `string` | `null` | no |
| <a name="input_google_client_secret"></a> [google\_client\_secret](#input\_google\_client\_secret) | (Optional) The Client Secret of the google app used for google login. Cannot be specified with client\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_google_client_secret_settings_name"></a> [google\_client\_secret\_settings\_name](#input\_google\_client\_secret\_settings\_name) | (Optional) The app setting name that contains the client\_secret value used for google login. Cannot be specified with client\_secret. | `string` | `null` | no |
| <a name="input_google_oauth_scopes"></a> [google\_oauth\_scopes](#input\_google\_oauth\_scopes) | (Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of google login authentication. | `list(string)` | `null` | no |
| <a name="input_health_check_eviction_time_in_min"></a> [health\_check\_eviction\_time\_in\_min](#input\_health\_check\_eviction\_time\_in\_min) | The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between 2 and 10. Only valid in conjunction with health\_check\_path. | `number` | `null` | no |
| <a name="input_health_check_path"></a> [health\_check\_path](#input\_health\_check\_path) | The path to be checked for this Linux Function App health. | `string` | `null` | no |
| <a name="input_http2_enabled"></a> [http2\_enabled](#input\_http2\_enabled) | Specifies if the HTTP2 protocol should be enabled. | `bool` | `false` | no |
| <a name="input_https_only"></a> [https\_only](#input\_https\_only) | Can the Function App only be accessed via HTTPS? | `bool` | `false` | no |
| <a name="input_ip_configuration_name"></a> [ip\_configuration\_name](#input\_ip\_configuration\_name) | (Required) Specifies the Name of the IP Configuration. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_ip_restriction_headers"></a> [ip\_restriction\_headers](#input\_ip\_restriction\_headers) | The map of IP restriction headers | `list(any)` | `null` | no |
| <a name="input_is_manual_connection"></a> [is\_manual\_connection](#input\_is\_manual\_connection) | (Required) Does the Private Endpoint require Manual Approval from the remote resource owner? If you are trying to connect the Private Endpoint to a remote resource without having the correct RBAC permissions on the remote resource set this value to true. | `bool` | `false` | no |
| <a name="input_issuer"></a> [issuer](#input\_issuer) | (Optional) The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Linux Function App. | `string` | `null` | no |
| <a name="input_java_version"></a> [java\_version](#input\_java\_version) | The Version of Java to use. Supported versions include 8, 11 & 17 (In-Preview). | `string` | `null` | no |
| <a name="input_keep_at_least_one_backup"></a> [keep\_at\_least\_one\_backup](#input\_keep\_at\_least\_one\_backup) | (Optional) Should the service keep at least one backup, regardless of age of backup. | `bool` | `false` | no |
| <a name="input_key_vault_reference_identity_id"></a> [key\_vault\_reference\_identity\_id](#input\_key\_vault\_reference\_identity\_id) | The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the 'identity' block. | `string` | `null` | no |
| <a name="input_load_balancing_mode"></a> [load\_balancing\_mode](#input\_load\_balancing\_mode) | The Site load balancing mode. Possible values include: WeightedRoundRobin, LeastRequests, LeastResponseTime, WeightedTotalTraffic, RequestHash, PerSiteRoundRobin. | `string` | `"LeastRequests"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure location for Function App | `string` | n/a | yes |
| <a name="input_managed_pipeline_mode"></a> [managed\_pipeline\_mode](#input\_managed\_pipeline\_mode) | Managed pipeline mode. Possible values include: Integrated, Classic. | `string` | `"Integrated"` | no |
| <a name="input_member_name"></a> [member\_name](#input\_member\_name) | (Optional) Specifies the member name this IP address applies to. If it is not specified, it will use the value of subresource\_name. | `string` | `null` | no |
| <a name="input_microsoft_client_id"></a> [microsoft\_client\_id](#input\_microsoft\_client\_id) | (Required) The ID of the microsoft app used for login. | `string` | `null` | no |
| <a name="input_microsoft_client_secret"></a> [microsoft\_client\_secret](#input\_microsoft\_client\_secret) | (Optional) The Client Secret of the microsoft app used for microsoft login. Cannot be specified with client\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_microsoft_client_secret_settings_name"></a> [microsoft\_client\_secret\_settings\_name](#input\_microsoft\_client\_secret\_settings\_name) | (Optional) The app setting name that contains the client\_secret value used for microsoft login. Cannot be specified with client\_secret. | `string` | `null` | no |
| <a name="input_microsoft_oauth_scopes"></a> [microsoft\_oauth\_scopes](#input\_microsoft\_oauth\_scopes) | (Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of microsoft login authentication. | `list(string)` | `null` | no |
| <a name="input_minimum_tls_version"></a> [minimum\_tls\_version](#input\_minimum\_tls\_version) | Configures the minimum version of TLS required for SSL requests. Possible values include: 1.0, 1.1, and 1.2 | `string` | `"1.2"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name which should be used for this Linux Function App. Changing this forces a new Linux Function App to be created. Limit the function name to 32 characters to avoid naming collisions. | `string` | n/a | yes |
| <a name="input_node_version"></a> [node\_version](#input\_node\_version) | The version of Node to run. Possible values include ~12, ~14, ~16 and ~18. | `string` | `null` | no |
| <a name="input_powershell_core_version"></a> [powershell\_core\_version](#input\_powershell\_core\_version) | The version of PowerShell Core to run. Possible values are 7, and 7.2. | `string` | `null` | no |
| <a name="input_pre_warmed_instance_count"></a> [pre\_warmed\_instance\_count](#input\_pre\_warmed\_instance\_count) | The number of pre-warmed instances for this Linux Function App. Only affects apps on an Elastic Premium plan. | `number` | `null` | no |
| <a name="input_private_connection_resource_alias"></a> [private\_connection\_resource\_alias](#input\_private\_connection\_resource\_alias) | (Optional) The Service Alias of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of private\_connection\_resource\_id or private\_connection\_resource\_alias must be specified. | `string` | `null` | no |
| <a name="input_private_dns_zone_group_name"></a> [private\_dns\_zone\_group\_name](#input\_private\_dns\_zone\_group\_name) | (Required) Specifies the Name of the Private DNS Zone Group. Changing this forces a new private\_dns\_zone\_group resource to be created. | `string` | `null` | no |
| <a name="input_private_dns_zone_ids"></a> [private\_dns\_zone\_ids](#input\_private\_dns\_zone\_ids) | (Required) Specifies the list of Private DNS Zones to include within the private\_dns\_zone\_group. | `list(string)` | `null` | no |
| <a name="input_private_ep_subnet_name"></a> [private\_ep\_subnet\_name](#input\_private\_ep\_subnet\_name) | Specifies the name of the Subnet for private endpoint | `string` | n/a | yes |
| <a name="input_private_ep_vnet_name"></a> [private\_ep\_vnet\_name](#input\_private\_ep\_vnet\_name) | Specifies the name of the Virtual Network this Subnet is located within. | `string` | n/a | yes |
| <a name="input_private_ip_address"></a> [private\_ip\_address](#input\_private\_ip\_address) | (Required) Specifies the static IP address within the private endpoint's subnet to be used. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_python_version"></a> [python\_version](#input\_python\_version) | (Optional) The version of Python to run. Possible values include 3.6, 3.7, 3.8, and 3.9. | `string` | `null` | no |
| <a name="input_remote_debugging_enabled"></a> [remote\_debugging\_enabled](#input\_remote\_debugging\_enabled) | Should Remote Debugging be enabled. | `bool` | `false` | no |
| <a name="input_remote_debugging_version"></a> [remote\_debugging\_version](#input\_remote\_debugging\_version) | The Remote Debugging Version. Possible values include VS2017, VS2019, and VS2022. | `string` | `null` | no |
| <a name="input_request_message"></a> [request\_message](#input\_request\_message) | (Optional) A message passed to the owner of the remote resource when the private endpoint attempts to establish the connection to the remote resource. The request message can be a maximum of 140 characters in length. Only valid if is\_manual\_connection is set to true. | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Azure resource group name | `string` | n/a | yes |
| <a name="input_retention_period_days"></a> [retention\_period\_days](#input\_retention\_period\_days) | (Optional) After how many days backups should be deleted. | `number` | `null` | no |
| <a name="input_runtime_scale_monitoring_enabled"></a> [runtime\_scale\_monitoring\_enabled](#input\_runtime\_scale\_monitoring\_enabled) | Should Scale Monitoring of the Functions Runtime be enabled? Functions runtime scale monitoring can only be enabled for Elastic Premium Function Apps or Workflow Standard Logic Apps and requires a minimum prewarmed instance count of 1. | `bool` | `false` | no |
| <a name="input_runtime_version"></a> [runtime\_version](#input\_runtime\_version) | (Optional) The RuntimeVersion of the Authentication / Authorization feature in use for the Linux Function App. | `string` | `null` | no |
| <a name="input_scm_authorized_ip_addresses"></a> [scm\_authorized\_ip\_addresses](#input\_scm\_authorized\_ip\_addresses) | The list of all IP addresses or IP Ranges to match. For example: 10.0.0.0/24 or 192.168.10.1/32 | `list(string)` | `[]` | no |
| <a name="input_scm_authorized_service_tags"></a> [scm\_authorized\_service\_tags](#input\_scm\_authorized\_service\_tags) | The list of all Service Tags used for this IP Restriction. | `list(string)` | `[]` | no |
| <a name="input_scm_authorized_virtual_network_subnet_ids"></a> [scm\_authorized\_virtual\_network\_subnet\_ids](#input\_scm\_authorized\_virtual\_network\_subnet\_ids) | The list of all Virtual Network Subnet IDs used for this IP Restriction. | `list(string)` | `[]` | no |
| <a name="input_scm_ip_restriction_headers"></a> [scm\_ip\_restriction\_headers](#input\_scm\_ip\_restriction\_headers) | The map of IP restriction headers | `list(any)` | `null` | no |
| <a name="input_scm_minimum_tls_version"></a> [scm\_minimum\_tls\_version](#input\_scm\_minimum\_tls\_version) | Configures the minimum version of TLS required for SSL requests to the SCM site. Possible values include: 1.0, 1.1, and 1.2. | `string` | `"1.2"` | no |
| <a name="input_scm_use_main_ip_restriction"></a> [scm\_use\_main\_ip\_restriction](#input\_scm\_use\_main\_ip\_restriction) | Should the Linux Function App ip\_restriction configuration be used for the SCM also. | `bool` | `false` | no |
| <a name="input_service_plan_id"></a> [service\_plan\_id](#input\_service\_plan\_id) | App service plan id | `string` | n/a | yes |
| <a name="input_start_time"></a> [start\_time](#input\_start\_time) | (Optional) When the schedule should start working in RFC-3339 format. | `string` | `null` | no |
| <a name="input_sticky_settings_app_setting_names"></a> [sticky\_settings\_app\_setting\_names](#input\_sticky\_settings\_app\_setting\_names) | (Optional) A list of app\_setting names that the Linux Function App will not swap between Slots when a swap operation is triggered. | `list(string)` | `null` | no |
| <a name="input_sticky_settings_connection_string_names"></a> [sticky\_settings\_connection\_string\_names](#input\_sticky\_settings\_connection\_string\_names) | (Optional) A list of connection\_string names that the Linux Function App will not swap between Slots when a swap operation is triggered. | `list(string)` | `null` | no |
| <a name="input_sticky_settings_enabled"></a> [sticky\_settings\_enabled](#input\_sticky\_settings\_enabled) | If sticky settings should be enabled | `bool` | `false` | no |
| <a name="input_storage_account"></a> [storage\_account](#input\_storage\_account) | The list of key/value pairs (maps), containing storage account settings | `list(map(string))` | `[]` | no |
| <a name="input_storage_account_access_key"></a> [storage\_account\_access\_key](#input\_storage\_account\_access\_key) | The access key which will be used to access the backend storage account for the Function App. Conflicts with 'storage\_uses\_managed\_identity'. | `string` | `null` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | The backend storage account name which will be used by this Function App. | `string` | `null` | no |
| <a name="input_storage_account_url"></a> [storage\_account\_url](#input\_storage\_account\_url) | (Required) The SAS URL to the container. | `string` | `null` | no |
| <a name="input_storage_key_vault_secret_id"></a> [storage\_key\_vault\_secret\_id](#input\_storage\_key\_vault\_secret\_id) | The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App. cannot be used with 'storage\_account\_name'. | `string` | `null` | no |
| <a name="input_storage_uses_managed_identity"></a> [storage\_uses\_managed\_identity](#input\_storage\_uses\_managed\_identity) | Should the Function App use Managed Identity to access the storage account. Conflicts with 'storage\_account\_access\_key'. | `bool` | `null` | no |
| <a name="input_subresource_name"></a> [subresource\_name](#input\_subresource\_name) | (Required) Specifies the subresource this IP address applies to. subresource\_names corresponds to group\_id. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_subresource_names"></a> [subresource\_names](#input\_subresource\_names) | (Optional) A list of subresource names which the Private Endpoint is able to connect to. subresource\_names corresponds to group\_id. | `list(string)` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Function App Tags | `map(string)` | `{}` | no |
| <a name="input_token_refresh_extension_hours"></a> [token\_refresh\_extension\_hours](#input\_token\_refresh\_extension\_hours) | (Optional) The number of hours after session token expiration that a session token can be used to call the token refresh API. | `number` | `null` | no |
| <a name="input_token_store_enabled"></a> [token\_store\_enabled](#input\_token\_store\_enabled) | (Optional) Should the Linux Function App durably store platform-specific security tokens that are obtained during login flows? | `bool` | `false` | no |
| <a name="input_twitter_consumer_key"></a> [twitter\_consumer\_key](#input\_twitter\_consumer\_key) | (Required) The OAuth 1.0a consumer key of the Twitter application used for sign-in. | `string` | `null` | no |
| <a name="input_twitter_consumer_secret"></a> [twitter\_consumer\_secret](#input\_twitter\_consumer\_secret) | (Optional) The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with consumer\_secret\_setting\_name. | `string` | `null` | no |
| <a name="input_twitter_secret_setting_name"></a> [twitter\_secret\_setting\_name](#input\_twitter\_secret\_setting\_name) | (Optional) The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with consumer\_secret. | `string` | `null` | no |
| <a name="input_unauthenticated_client_action"></a> [unauthenticated\_client\_action](#input\_unauthenticated\_client\_action) | (Optional) The action to take when an unauthenticated client attempts to access the app. Possible values include: RedirectToLoginPage, AllowAnonymous. | `string` | `null` | no |
| <a name="input_use_32_bit_worker"></a> [use\_32\_bit\_worker](#input\_use\_32\_bit\_worker) | Should the Linux Function App use a 32-bit worker process | `bool` | `true` | no |
| <a name="input_use_custom_runtime"></a> [use\_custom\_runtime](#input\_use\_custom\_runtime) | Should the Linux Function App use a custom runtime? | `bool` | `null` | no |
| <a name="input_use_dotnet_isolated_runtime"></a> [use\_dotnet\_isolated\_runtime](#input\_use\_dotnet\_isolated\_runtime) | Should the DotNet process use an isolated runtime. | `bool` | `null` | no |
| <a name="input_virtual_network_subnet_id"></a> [virtual\_network\_subnet\_id](#input\_virtual\_network\_subnet\_id) | The subnet id which will be used by this Function App for regional virtual network integration. | `string` | `null` | no |
| <a name="input_vnet_rg_name"></a> [vnet\_rg\_name](#input\_vnet\_rg\_name) | Specifies the name of the resource group the Virtual Network is located in. | `string` | n/a | yes |
| <a name="input_vnet_route_all_enabled"></a> [vnet\_route\_all\_enabled](#input\_vnet\_route\_all\_enabled) | Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied? | `bool` | `false` | no |
| <a name="input_websockets_enabled"></a> [websockets\_enabled](#input\_websockets\_enabled) | Should Web Sockets be enabled. | `bool` | `false` | no |
| <a name="input_worker_count"></a> [worker\_count](#input\_worker\_count) | The number of Workers for this Linux Function App. | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_function_app_hostname"></a> [function\_app\_hostname](#output\_function\_app\_hostname) | n/a |
| <a name="output_function_app_id"></a> [function\_app\_id](#output\_function\_app\_id) | n/a |
| <a name="output_function_app_outbound_ip_list"></a> [function\_app\_outbound\_ip\_list](#output\_function\_app\_outbound\_ip\_list) | n/a |
<!-- END_TF_DOCS -->