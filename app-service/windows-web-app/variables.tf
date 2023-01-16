variable "location" {
  description = "(Required) The Azure Region where the Windows Web App should exist. Changing this forces a new Windows Web App to be created."
  type        = string
}

variable "name" {
  description = "(Required) The name which should be used for this Windows Web App. Changing this forces a new Windows Web App to be created."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the Resource Group where the Windows Web App should exist. Changing this forces a new Windows Web App to be created."
  type        = string
}

variable "service_plan_id" {
  description = "(Required) The ID of the Service Plan that this Windows App Service will be created in."
  type        = string
}

variable "client_affinity_enabled" {
  description = "(Optional) Should Client Affinity be enabled?"
  type        = bool
  default     = false
}

variable "app_settings" {
  description = "(Optional) A map of key-value pairs of App Settings."
  type        = map(string)
  default     = {}
}

variable "client_certificate_enabled" {
  description = "(Optional) Should Client Certificates be enabled?"
  type        = bool
  default     = false
}

variable "client_certificate_mode" {
  description = "(Optional) The Client Certificate mode. Possible values are Required, Optional, and OptionalInteractiveUser. This property has no effect when client_cert_enabled is false"
  type        = string
  default     = null
}

variable "client_certificate_exclusion_paths" {
  description = "(Optional) Paths to exclude when using client certificates, separated by ;"
  type        = string
  default     = null
}

variable "enabled" {
  description = "(Optional) Should the Windows Web App be enabled?"
  type        = bool
  default     = true
}

variable "https_only" {
  description = "(Optional) Should the Windows Web App require HTTPS connections."
  type        = bool
  default     = false
}

variable "key_vault_reference_identity_id" {
  description = "(Optional) The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the identity block."
  type        = string
  default     = null
}

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to the Windows Web App."
  type        = map(string)
  default     = {}
}

variable "virtual_network_subnet_id" {
  description = "(Optional) The subnet id which will be used by this Web App for regional virtual network integration."
  type        = string
  default     = null
}

variable "zip_deploy_file" {
  description = "(Optional) The local path and filename of the Zip packaged application to deploy to this Windows Web App."
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

variable "current_stack" {
  description = "(Optional) The Application Stack for the Windows Web App. Possible values include dotnet, dotnetcore, node, python, php, and java. The value of dotnetcore is for use in combination with dotnet_version set to core3.1 only."
  type        = string
  default     = null
}

variable "docker_container_name" {
  description = "(Optional) The name of the Docker Container. For example azure-app-service/samples/aspnethelloworld"
  type        = string
  default     = null
}

variable "docker_container_registry" {
  description = "(Optional) The registry Host on which the specified Docker Container can be located. For example mcr.microsoft.com"
  type        = string
  default     = null
}

variable "docker_container_tag" {
  description = "(Optional) The Image Tag of the specified Docker Container to use. For example latest"
  type        = string
  default     = null
}

variable "dotnet_version" {
  description = "(Optional) The version of .NET to use when current_stack is set to dotnet. Possible values include v2.0,v3.0,core3.1, v4.0, v5.0, v6.0 and v7.0."
  type        = string
  default     = null
}

variable "java_container" {
  description = "(Optional) The Java container type to use when current_stack is set to java. Possible values include JAVA, JETTY, and TOMCAT. Required with java_version and java_container_version."
  type        = string
  default     = null
}

variable "java_container_version" {
  description = "(Optional) The Version of the java_container to use. Required with java_version and java_container."
  type        = string
  default     = null
}

variable "java_version" {
  description = "(Optional) The version of Java to use when current_stack is set to java. Possible values include 1.7, 1.8, 11 and 17. Required with java_container and java_container_version."
  type        = string
  default     = null
}

variable "node_version" {
  description = "(Optional) The version of node to use when current_stack is set to node. Possible values include 12-LTS, 14-LTS, and 16-LTS."
  type        = string
  default     = null
}

variable "php_version" {
  description = "(Optional) The version of PHP to use when current_stack is set to php. Possible values include v7.4"
  type        = string
  default     = null
}

variable "python_version" {
  description = "(Optional) The version of Python to use when current_stack is set to python. Possible values include 2.7 and 3.4.0."
  type        = string
  default     = null
}


#####################
### Auth_Settings ###
#####################
variable "auth_settings_enabled" {
  description = "(Required) Should the Authentication / Authorization feature is enabled for the Windows Web App be enabled?"
  type        = bool
  default     = false
}

variable "additional_login_parameters" {
  description = "(Optional) Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in."
  type        = map(string)
  default     = null
}

variable "allowed_external_redirect_urls" {
  description = "(Optional) Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App."
  type        = list(string)
  default     = null
}

variable "default_provider" {
  description = "(Optional) The default authentication provider to use when multiple providers are configured. Possible values include: AzureActiveDirectory, Facebook, Google, MicrosoftAccount, Twitter, Github."
  type        = string
  default     = null
}

variable "issuer" {
  description = "(Optional) The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Web App."
  type        = string
  default     = null
}

variable "runtime_version" {
  description = "(Optional) The RuntimeVersion of the Authentication / Authorization feature in use for the Windows Web App."
  type        = string
  default     = null
}

variable "token_refresh_extension_hours" {
  description = "(Optional) The number of hours after session token expiration that a session token can be used to call the token refresh API."
  type        = number
  default     = null
}

variable "token_store_enabled" {
  description = "(Optional) Should the Windows Web App durably store platform-specific security tokens that are obtained during login flows?"
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


##########################
### Auto Heal Settings ###
##########################
variable "action_type" {
  description = "(Required) Predefined action to be taken to an Auto Heal trigger. Possible values include: Recycle, LogEvent, and CustomAction."
  type        = string
  default     = null
}

variable "minimum_process_execution_time" {
  description = "(Optional) The minimum amount of time in hh:mm:ss the Windows Web App must have been running before the defined action will be run in the event of a trigger."
  type        = string
  default     = null
}

variable "custom_action_executable" {
  description = "(Required) The executable to run for the custom_action."
  type        = string
  default     = null
}

variable "custom_action_parameters" {
  description = "(Optional) The parameters to pass to the specified executable."
  type        = string
  default     = null
}

variable "auto_health_trigger_enabled" {
  description = "If trigger block is enabled in auto_health"
  type        = bool
  default     = false
}

variable "private_memory_kb" {
  description = "(Optional) The amount of Private Memory to be consumed for this rule to trigger. Possible values are between 102400 and 13631488."
  type        = number
  default     = null
}

variable "requests_count" {
  description = "(Required) The number of requests in the specified interval to trigger this rule."
  type        = number
  default     = null
}

variable "requests_interval" {
  description = "(Required) The interval in hh:mm:ss."
  type        = string
  default     = null
}

variable "slow_request" {
  description = "The list of map containing slow_request parameters"
  type        = list(map(string))
  default     = null
}

variable "status_code" {
  description = "The list of map containing status_code parameters"
  type        = list(map(string))
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


##########################
### Identity variables ###
##########################
variable "web_app_identity_type" {
  description = "(Required) Specifies the type of Managed Service Identity that should be configured on this Windows Web App. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both)."
  type        = string
  default     = null
}

variable "web_app_identity_id" {
  description = "(Optional) A list of User Assigned Managed Identity IDs to be assigned to this Windows Web App. This is required when type is set to UserAssigned or SystemAssigned, UserAssigned."
  type        = list(string)
  default     = []
}


#####################
### Logs Settings ###
#####################
variable "logs_enabled" {
  description = "If logs block is set"
  type        = bool
  default     = false
}

variable "detailed_error_messages" {
  description = "(Optional) Should detailed error messages be enabled."
  type        = bool
  default     = false
}

variable "failed_request_tracing" {
  description = "(Optional) Should tracing be enabled for failed requests."
  type        = bool
  default     = false
}

variable "application_logs_file_system_level" {
  description = "(Required) Log level. Possible values include: Verbose, Information, Warning, and Error."
  type        = string
  default     = null
}

variable "app_azure_blob_storage_level" {
  description = "(Required) The level at which to log. Possible values include Error, Warning, Information, Verbose and Off."
  type        = string
  default     = null
}

variable "app_azure_blob_storage_retention_in_days" {
  description = "(Required) The time in days after which to remove blobs. A value of 0 means no retention."
  type        = number
  default     = null
}

variable "app_azure_blob_storage_sas_url" {
  description = "(Required) SAS url to an Azure blob container with read/write/list/delete permissions."
  type        = string
  default     = null
}

variable "https_logs_enabled" {
  description = "If http_logs should be enabled"
  type        = bool
  default     = false
}

variable "http_azure_blob_storage_retention_in_days" {
  description = "(Required) The time in days after which to remove blobs. A value of 0 means no retention."
  type        = number
  default     = null
}

variable "http_azure_blob_storage_sas_url" {
  description = "(Required) SAS url to an Azure blob container with read/write/list/delete permissions."
  type        = string
  default     = null
}

variable "http_file_system_retention_in_days" {
  description = "(Required) The retention period in days. A values of 0 means no retention."
  type        = number
  default     = null
}

variable "http_file_system_retention_in_mb" {
  description = "(Required) The maximum size in megabytes that log files can use."
  type        = number
  default     = null
}


#############################
### Site Config Variables ###
#############################
variable "always_on" {
  description = "(Optional) If this Windows Web App is Always On enabled. Must be explicitly set to false when using Free, F1, D1, or Shared Service Plans."
  type        = bool
  default     = false
}

variable "api_management_api_id" {
  description = "(Optional) The API Management API ID this Windows Web App Slot is associated with."
  type        = string
  default     = null
}

variable "app_command_line" {
  description = "(Optional) The App command line to launch."
  type        = string
  default     = null
}

variable "auto_heal_enabled" {
  description = "(Optional) Should Auto heal rules be enabled. Required with auto_heal_setting."
  type        = bool
  default     = null
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
  description = "Specifies a list of Default Documents for the Windows Function App."
  type        = list(string)
  default     = []
}

variable "ftps_state" {
  description = "(Optional) The State of FTP / FTPS service. Possible values include: AllAllowed, FtpsOnly, Disabled."
  type        = string
  default     = null
}

variable "health_check_path" {
  description = "(Optional) The path to the Health Check."
  type        = string
  default     = null
}

variable "health_check_eviction_time_in_min" {
  description = "Optional) The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between 2 and 10. Only valid in conjunction with health_check_path."
  type        = number
  default     = null
}

variable "http2_enabled" {
  description = "(Optional) Should the HTTP2 be enabled?"
  type        = bool
  default     = null
}

variable "load_balancing_mode" {
  description = "(Optional) The Site load balancing. Possible values include: WeightedRoundRobin, LeastRequests, LeastResponseTime, WeightedTotalTraffic, RequestHash, PerSiteRoundRobin."
  type        = string
  default     = null
}

variable "local_mysql_enabled" {
  description = "(Optional) Use Local MySQL."
  type        = bool
  default     = false
}

variable "managed_pipeline_mode" {
  description = "(Optional) Managed pipeline mode. Possible values include: Integrated, Classic."
  type        = string
  default     = null
}

variable "minimum_tls_version" {
  description = "(Optional) The configures the minimum version of TLS required for SSL requests. Possible values include: 1.0, 1.1, and 1.2."
  type        = string
  default     = "1.2"
}

variable "remote_debugging_enabled" {
  description = "(Optional) Should Remote Debugging be enabled."
  type        = bool
  default     = false
}

variable "remote_debugging_version" {
  description = "(Optional) The Remote Debugging Version. Possible values include VS2017 and VS2019"
  type        = string
  default     = null
}

variable "scm_minimum_tls_version" {
  description = "(Optional) The configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: 1.0, 1.1, and 1.2."
  type        = string
  default     = "1.2"
}

variable "scm_use_main_ip_restriction" {
  description = "(Optional) Should the Windows Web App ip_restriction configuration be used for the SCM also."
  type        = bool
  default     = false
}

variable "use_32_bit_worker" {
  description = "(Optional) Should the Windows Web App use a 32-bit worker."
  type        = bool
  default     = null
}

variable "vnet_route_all_enabled" {
  description = "(Optional) Should all outbound traffic to have NAT Gateways, Network Security Groups and User Defined Routes applied?"
  type        = bool
  default     = false
}

variable "websockets_enabled" {
  description = "(Optional) Should Web Sockets be enabled."
  type        = bool
  default     = false
}

variable "worker_count" {
  description = "(Optional) The number of Workers for this Windows App Service."
  type        = number
  default     = null
}

variable "virtual_application" {
  description = "(Optional) The list of map containing virtual_application parameters"
  type        = list(map(string))
  default     = []
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
  description = "(Optional) A list of app_setting names that the Windows Web App will not swap between Slots when a swap operation is triggered."
  type        = list(string)
  default     = null
}

variable "sticky_settings_connection_string_names" {
  description = "(Optional) A list of connection_string names that the Windows Web App will not swap between Slots when a swap operation is triggered."
  type        = list(string)
  default     = null
}


#######################
### Storage Account ###
#######################
variable "storage_account" {
  description = "The list of key/value pairs (maps), containing storage account settings"
  type        = list(map(string))
  default     = []
}


######################
### CORS variables ###
######################

variable "cors_allowed_origins" {
  description = "Specifies a list of origins that should be allowed to make cross-origin calls."
  type        = list(string)
  default     = null
}

variable "cors_support_credentials" {
  description = "Are credentials allowed in CORS requests?"
  type        = bool
  default     = false
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


###################################
### SCM IP Restriction settings ###
###################################
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