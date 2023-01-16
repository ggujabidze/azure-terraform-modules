variable "name" {
  description = "The name which should be used for this Linux Function App. Changing this forces a new Linux Function App to be created. Limit the function name to 32 characters to avoid naming collisions."
  type        = string
}


variable "location" {
  description = "Azure location for Function App"
  type        = string
}

variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
}

variable "service_plan_id" {
  description = "App service plan id"
  type        = string
}

variable "builtin_logging_enabled" {
  description = "Should built in logging be enabled"
  type        = bool
  default     = true
}

variable "client_certificate_enabled" {
  description = "Should the function app use Client Certificates."
  type        = bool
  default     = false
}

variable "client_certificate_mode" {
  description = "The mode of the Function App's client certificates requirement for incoming requests. Possible values are 'Required', 'Optional', and 'OptionalInteractiveUser'."
  type        = string
  default     = null
}

variable "client_certificate_exclusion_paths" {
  description = "(Optional) Paths to exclude when using client certificates, separated by ;"
  type        = string
  default     = null
}

variable "daily_memory_time_quota" {
  description = "The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan."
  type        = number
  default     = 0
}

variable "function_app_enabled" {
  description = "Is the Function App enabled"
  type        = bool
  default     = true
}

variable "content_share_force_disabled" {
  description = "(Optional) Should the settings for linking the Function App to storage be suppressed."
  type        = bool
  default     = null
}

variable "functions_extension_version" {
  description = "The runtime version associated with the Function App."
  type        = number
  default     = 4
}

variable "https_only" {
  description = "Can the Function App only be accessed via HTTPS?"
  type        = bool
  default     = false
}

variable "key_vault_reference_identity_id" {
  description = "The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the 'identity' block."
  type        = string
  default     = null
  sensitive   = true
}

variable "tags" {
  description = "Function App Tags"
  type        = map(string)
  default     = {}
}

variable "virtual_network_subnet_id" {
  description = "The subnet id which will be used by this Function App for regional virtual network integration."
  type        = string
  default     = null
}


##################################
### Application Stack Settings ###
##################################
variable "application_stack_enabled" {
  description = "If we want to enable application stack block"
  type        = bool
  default     = false
}

variable "docker" {
  description = "The list of maps, containing multiple blocks of docker settings"
  type        = list(map(string))
  default     = null
}

variable "dotnet_version" {
  description = "The version of .NET to use. Possible values include 3.1, 6 and 7."
  type        = string
  default     = null
}

variable "use_dotnet_isolated_runtime" {
  description = "Should the DotNet process use an isolated runtime."
  type        = bool
  default     = null
}

variable "java_version" {
  description = "The Version of Java to use. Supported versions include 8, 11 & 17 (In-Preview)."
  type        = string
  default     = null
}

variable "node_version" {
  description = "The version of Node to run. Possible values include ~12, ~14, ~16 and ~18."
  type        = string
  default     = null
}

variable "python_version" {
  description = "(Optional) The version of Python to run. Possible values include 3.6, 3.7, 3.8, and 3.9."
  type        = string
  default     = null
}

variable "powershell_core_version" {
  description = "The version of PowerShell Core to run. Possible values are 7, and 7.2."
  type        = string
  default     = null
}

variable "use_custom_runtime" {
  description = "Should the Linux Function App use a custom runtime?"
  type        = bool
  default     = null
}


########################
### App_Service_logs ###
########################
variable "disk_quota_mb" {
  description = "The amount of disk space to use for logs. Valid values are between 25 and 100."
  type        = number
  default     = null
}

variable "app_service_logs_retention_period_days" {
  description = "(Optional) The retention period for logs in days. Valid values are between 0 and 99999. 0 means never delete."
  type        = number
  default     = null
}



#####################
### Auth_Settings ###
#####################
variable "auth_settings_enabled" {
  description = "(Required) Should the Authentication / Authorization feature is enabled for the Linux Function App be enabled?"
  type        = bool
  default     = false
}

variable "additional_login_parameters" {
  description = "(Optional) Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in."
  type        = map(string)
  default     = null
}

variable "allowed_external_redirect_urls" {
  description = "(Optional) Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Linux Function App."
  type        = list(string)
  default     = null
}

variable "default_provider" {
  description = "(Optional) The default authentication provider to use when multiple providers are configured. Possible values include: AzureActiveDirectory, Facebook, Google, MicrosoftAccount, Twitter, Github."
  type        = string
  default     = null
}

variable "issuer" {
  description = "(Optional) The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Linux Function App."
  type        = string
  default     = null
}

variable "runtime_version" {
  description = "(Optional) The RuntimeVersion of the Authentication / Authorization feature in use for the Linux Function App."
  type        = string
  default     = null
}

variable "token_refresh_extension_hours" {
  description = "(Optional) The number of hours after session token expiration that a session token can be used to call the token refresh API."
  type        = number
  default     = null
}

variable "token_store_enabled" {
  description = "(Optional) Should the Linux Function App durably store platform-specific security tokens that are obtained during login flows?"
  type        = bool
  default     = false
}

variable "unauthenticated_client_action" {
  description = "(Optional) The action to take when an unauthenticated client attempts to access the app. Possible values include: RedirectToLoginPage, AllowAnonymous."
  type        = string
  default     = null
}

########################
### Active Directory ###
########################

variable "active_directory_client_id" {
  description = "(Required) The ID of the Client to use to authenticate with Azure Active Directory."
  type        = string
  default     = null
}

variable "active_directory_allowed_audiences" {
  description = "(Optional) Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory."
  type        = list(string)
  default     = null
}

variable "active_directory_client_secret" {
  description = "(Optional) The Client Secret for the Client ID. Cannot be used with client_secret_setting_name."
  type        = string
  default     = null
}

variable "active_directory_client_secret_settings_name" {
  description = "(Optional) The App Setting name that contains the client secret of the Client. Cannot be used with client_secret."
  type        = string
  default     = null
}

################
### Facebook ###
################
variable "facebook_app_id" {
  description = "(Required) The App ID of the Facebook app used for login."
  type        = string
  default     = null
}

variable "facebook_app_secret" {
  description = "(Optional) The App Secret of the Facebook app used for Facebook login. Cannot be specified with app_secret_setting_name."
  type        = string
  default     = null
}

variable "facebook_app_secret_setting_name" {
  description = "(Optional) The app setting name that contains the app_secret value used for Facebook login. Cannot be specified with app_secret."
  type        = string
  default     = null
}

variable "facebook_oauth_scopes" {
  description = "(Optional) Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication."
  type        = list(string)
  default     = null
}

##############
### GitHub ###
##############
variable "github_client_id" {
  description = "(Required) The ID of the GitHub app used for login."
  type        = string
  default     = null
}

variable "github_client_secret" {
  description = "(Optional) The Client Secret of the GitHub app used for GitHub login. Cannot be specified with client_secret_setting_name."
  type        = string
  default     = null
}

variable "github_client_secret_settings_name" {
  description = "(Optional) The app setting name that contains the client_secret value used for GitHub login. Cannot be specified with client_secret."
  type        = string
  default     = null
}

variable "github_oauth_scopes" {
  description = "(Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication."
  type        = list(string)
  default     = null
}

##############
### Google ###
##############
variable "google_client_id" {
  description = "(Required) The ID of the google app used for login."
  type        = string
  default     = null
}

variable "google_client_secret" {
  description = "(Optional) The Client Secret of the google app used for google login. Cannot be specified with client_secret_setting_name."
  type        = string
  default     = null
}

variable "google_client_secret_settings_name" {
  description = "(Optional) The app setting name that contains the client_secret value used for google login. Cannot be specified with client_secret."
  type        = string
  default     = null
}

variable "google_oauth_scopes" {
  description = "(Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of google login authentication."
  type        = list(string)
  default     = null
}

#################
### Microsoft ###
#################
variable "microsoft_client_id" {
  description = "(Required) The ID of the microsoft app used for login."
  type        = string
  default     = null
}

variable "microsoft_client_secret" {
  description = "(Optional) The Client Secret of the microsoft app used for microsoft login. Cannot be specified with client_secret_setting_name."
  type        = string
  default     = null
}

variable "microsoft_client_secret_settings_name" {
  description = "(Optional) The app setting name that contains the client_secret value used for microsoft login. Cannot be specified with client_secret."
  type        = string
  default     = null
}

variable "microsoft_oauth_scopes" {
  description = "(Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of microsoft login authentication."
  type        = list(string)
  default     = null
}

###############
### Twitter ###
###############
variable "twitter_consumer_key" {
  description = "(Required) The OAuth 1.0a consumer key of the Twitter application used for sign-in."
  type        = string
  default     = null
}

variable "twitter_consumer_secret" {
  description = "(Optional) The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with consumer_secret_setting_name."
  type        = string
  default     = null
}

variable "twitter_secret_setting_name" {
  description = "(Optional) The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with consumer_secret."
  type        = string
  default     = null
}


#######################
### Backup Settings ###
#######################
variable "backup_name" {
  description = "(Required) The name which should be used for this Backup."
  type        = string
  default     = null
}

variable "backup_enabled" {
  description = "(Optional) Should this backup job be enabled?"
  type        = bool
  default     = false
}

variable "storage_account_url" {
  description = "(Required) The SAS URL to the container."
  type        = string
  default     = null
}

variable "frequency_interval" {
  description = "(Required) How often the backup should be executed (e.g. for weekly backup, this should be set to 7 and frequency_unit should be set to Day)."
  type        = number
  default     = null
}

variable "frequency_unit" {
  description = "(Required) The unit of time for how often the backup should take place. Possible values include: Day, Hour"
  type        = string
  default     = null
}

variable "keep_at_least_one_backup" {
  description = "(Optional) Should the service keep at least one backup, regardless of age of backup."
  type        = bool
  default     = false
}

variable "retention_period_days" {
  description = "(Optional) After how many days backups should be deleted."
  type        = number
  default     = null
}

variable "start_time" {
  description = "(Optional) When the schedule should start working in RFC-3339 format."
  type        = string
  default     = null
}


#########################
### Connection String ###
#########################
variable "connection_string" {
  description = "List of connections string settings"
  type        = list(map(string))
  default     = []
}


#############################
### Site Config variables ###
#############################
variable "always_on" {
  description = "If this Linux Function App is Always On enabled"
  type        = bool
  default     = false
}

variable "api_definition_url" {
  description = "The URL of the API definition that describes this Linux Function App."
  type        = string
  default     = null
}

variable "api_management_api_id" {
  description = "The ID of the API Management API for this Linux Function App."
  type        = string
  default     = null
}

variable "app_command_line" {
  description = "The App command line to launch."
  type        = string
  default     = null
}

variable "app_scale_limit" {
  description = "The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan."
  type        = number
  default     = null
}

variable "application_insights_connection_string" {
  description = "The Connection String for linking the Linux Function App to Application Insights."
  type        = string
  default     = null
}

variable "application_insights_key" {
  description = "The Instrumentation Key for connecting the Linux Function App to Application Insights."
  type        = string
  default     = null
  sensitive   = true
}

variable "container_registry_managed_identity_client_id" {
  description = "(Optional) The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry."
  type        = string
  default     = null
}

variable "container_registry_use_managed_identity" {
  description = "(Optional) Should connections for Azure Container Registry use Managed Identity."
  type        = string
  default     = null

}

variable "default_documents" {
  description = "Specifies a list of Default Documents for the Linux Function App."
  type        = list(string)
  default     = []
}

variable "elastic_instance_minimum" {
  description = "The number of minimum instances for this Linux Function App. Only affects apps on Elastic Premium plans."
  type        = number
  default     = null
}

variable "ftps_state" {
  description = "State of FTP / FTPS service for this Linux Function App. Possible values include: AllAllowed, FtpsOnly and Disabled. Defaults to Disabled."
  type        = string
  default     = "Disabled"
}

variable "health_check_path" {
  description = "The path to be checked for this Linux Function App health."
  type        = string
  default     = null
}

variable "health_check_eviction_time_in_min" {
  description = "The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between 2 and 10. Only valid in conjunction with health_check_path."
  type        = number
  default     = null
}

variable "http2_enabled" {
  description = "Specifies if the HTTP2 protocol should be enabled."
  type        = bool
  default     = false
}

variable "load_balancing_mode" {
  description = "The Site load balancing mode. Possible values include: WeightedRoundRobin, LeastRequests, LeastResponseTime, WeightedTotalTraffic, RequestHash, PerSiteRoundRobin."
  type        = string
  default     = "LeastRequests"
}

variable "managed_pipeline_mode" {
  description = "Managed pipeline mode. Possible values include: Integrated, Classic."
  type        = string
  default     = "Integrated"
}

variable "minimum_tls_version" {
  description = "Configures the minimum version of TLS required for SSL requests. Possible values include: 1.0, 1.1, and 1.2"
  type        = string
  default     = "1.2"
}

variable "pre_warmed_instance_count" {
  description = "The number of pre-warmed instances for this Linux Function App. Only affects apps on an Elastic Premium plan."
  type        = number
  default     = null
}

variable "remote_debugging_enabled" {
  description = "Should Remote Debugging be enabled."
  type        = bool
  default     = false
}

variable "remote_debugging_version" {
  description = "The Remote Debugging Version. Possible values include VS2017, VS2019, and VS2022."
  type        = string
  default     = null
}

variable "runtime_scale_monitoring_enabled" {
  description = "Should Scale Monitoring of the Functions Runtime be enabled? Functions runtime scale monitoring can only be enabled for Elastic Premium Function Apps or Workflow Standard Logic Apps and requires a minimum prewarmed instance count of 1."
  type        = bool
  default     = false
}

variable "use_32_bit_worker" {
  description = "Should the Linux Function App use a 32-bit worker process"
  type        = bool
  default     = true
}

variable "vnet_route_all_enabled" {
  description = "Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied?"
  type        = bool
  default     = false
}

variable "websockets_enabled" {
  description = "Should Web Sockets be enabled."
  type        = bool
  default     = false
}

variable "worker_count" {
  description = "The number of Workers for this Linux Function App."
  type        = number
  default     = null
}


#######################
### Sticky Settings ###
#######################
variable "sticky_settings_enabled" {
  description = "If sticky settings should be enabled"
  type        = bool
  default     = false
}

variable "sticky_settings_app_setting_names" {
  description = "(Optional) A list of app_setting names that the Linux Function App will not swap between Slots when a swap operation is triggered."
  type        = list(string)
  default     = null
}

variable "sticky_settings_connection_string_names" {
  description = "(Optional) A list of connection_string names that the Linux Function App will not swap between Slots when a swap operation is triggered."
  type        = list(string)
  default     = null
}


#################################
### Storage Account variables ###
#################################
variable "storage_account_access_key" {
  description = "The access key which will be used to access the backend storage account for the Function App. Conflicts with 'storage_uses_managed_identity'."
  type        = string
  default     = null
  sensitive   = true
}

variable "storage_account_name" {
  description = "The backend storage account name which will be used by this Function App."
  type        = string
  default     = null
}

variable "storage_uses_managed_identity" {
  description = "Should the Function App use Managed Identity to access the storage account. Conflicts with 'storage_account_access_key'."
  type        = bool
  default     = null
}

variable "storage_key_vault_secret_id" {
  description = "The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App. cannot be used with 'storage_account_name'."
  type        = string
  default     = null
  sensitive   = true
}

####################
### APP Settings ###
####################
variable "function_app_application_settings" {
  description = "Function App application settings"
  type        = map(string)
  default     = {}
}


##########################
### Identity variables ###
##########################
variable "function_app_identity_type" {
  description = "Specifies the type of Managed Service Identity that should be configured on this Linux Function App. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both)."
  type        = string
  default     = null
}

variable "function_app_identity_id" {
  description = "A list of User Assigned Managed Identity IDs to be assigned to this Linux Function App."
  type        = list(string)
  default     = []
}


#######################
### SCM IP Settings ###
#######################
variable "scm_minimum_tls_version" {
  description = "Configures the minimum version of TLS required for SSL requests to the SCM site. Possible values include: 1.0, 1.1, and 1.2."
  type        = string
  default     = "1.2"
}

variable "scm_use_main_ip_restriction" {
  description = "Should the Linux Function App ip_restriction configuration be used for the SCM also."
  type        = bool
  default     = false
}

variable "scm_authorized_ip_addresses" {
  description = "The list of all IP addresses or IP Ranges to match. For example: 10.0.0.0/24 or 192.168.10.1/32"
  type        = list(string)
  default     = []
}

variable "scm_authorized_service_tags" {
  description = "The list of all Service Tags used for this IP Restriction."
  type        = list(string)
  default     = []
}

variable "scm_authorized_virtual_network_subnet_ids" {
  description = "The list of all Virtual Network Subnet IDs used for this IP Restriction."
  type        = list(string)
  default     = []
}

variable "scm_ip_restriction_headers" {
  description = "The map of IP restriction headers"
  type        = list(any)
  default     = null
}


######################
### CORS variables ###
######################

variable "cors_allowed_origins" {
  description = "Specifies a list of origins that should be allowed to make cross-origin calls."
  type        = list(string)
  default     = []
}

variable "cors_support_credentials" {
  description = "Are credentials allowed in CORS requests?"
  type        = bool
  default     = false
}


#######################
### Storage Account ###
#######################
variable "storage_account" {
  description = "The list of key/value pairs (maps), containing storage account settings"
  type        = list(map(string))
  default     = []
}


###############################
### IP Restriction settings ###
###############################
variable "authorized_ip_addresses" {
  description = "The list of all IP addresses or IP Ranges to match. For example: 10.0.0.0/24 or 192.168.10.1/32"
  type        = list(string)
  default     = []
}

variable "authorized_service_tags" {
  description = "The list of all Service Tags used for this IP Restriction."
  type        = list(string)
  default     = []
}

variable "authorized_virtual_network_subnet_ids" {
  description = "The list of all Virtual Network Subnet IDs used for this IP Restriction."
  type        = list(string)
  default     = []
}

variable "ip_restriction_headers" {
  description = "The map of IP restriction headers"
  type        = list(any)
  default     = null
}
