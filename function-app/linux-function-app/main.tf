# Linux Function App
resource "azurerm_linux_function_app" "my_linux_function_app" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  builtin_logging_enabled            = var.builtin_logging_enabled
  client_certificate_enabled         = var.client_certificate_enabled
  client_certificate_mode            = var.client_certificate_mode
  client_certificate_exclusion_paths = var.client_certificate_exclusion_paths
  daily_memory_time_quota            = var.daily_memory_time_quota
  enabled                            = var.function_app_enabled
  content_share_force_disabled       = var.content_share_force_disabled
  functions_extension_version        = "~${var.functions_extension_version}"
  https_only                         = var.https_only
  key_vault_reference_identity_id    = var.key_vault_reference_identity_id
  storage_account_access_key         = var.storage_account_access_key
  storage_account_name               = var.storage_account_name
  storage_uses_managed_identity      = var.storage_uses_managed_identity
  storage_key_vault_secret_id        = var.storage_key_vault_secret_id
  tags                               = var.tags
  virtual_network_subnet_id          = var.virtual_network_subnet_id
  app_settings                       = var.function_app_application_settings

  #####################
  ### Auth_Settings ###
  #####################
  dynamic "auth_settings" {
    for_each = var.auth_settings_enabled ? [1] : []
    content {
      enabled                        = var.auth_settings_enabled
      additional_login_parameters    = var.additional_login_parameters
      allowed_external_redirect_urls = var.allowed_external_redirect_urls
      default_provider               = var.default_provider
      issuer                         = var.issuer
      runtime_version                = var.runtime_version
      token_refresh_extension_hours  = var.token_refresh_extension_hours
      token_store_enabled            = var.token_store_enabled
      unauthenticated_client_action  = var.unauthenticated_client_action

      dynamic "active_directory" {
        for_each = var.active_directory_client_id != null ? [1] : []
        content {
          client_id                  = var.active_directory_client_id
          allowed_audiences          = var.active_directory_allowed_audiences
          client_secret              = var.active_directory_client_secret
          client_secret_setting_name = var.active_directory_client_secret_settings_name
        }
      }

      dynamic "facebook" {
        for_each = var.facebook_app_id != null ? [1] : []
        content {
          app_id                  = var.facebook_app_id
          app_secret              = var.facebook_app_secret
          app_secret_setting_name = var.facebook_app_secret_setting_name
          oauth_scopes            = var.facebook_oauth_scopes
        }
      }

      dynamic "github" {
        for_each = var.github_client_id != null ? [1] : []
        content {
          client_id                  = var.github_client_id
          client_secret              = var.github_client_secret
          client_secret_setting_name = var.github_client_secret_settings_name
          oauth_scopes               = var.github_oauth_scopes
        }
      }

      dynamic "google" {
        for_each = var.google_client_id != null ? [1] : []
        content {
          client_id                  = var.google_client_id
          client_secret              = var.google_client_secret
          client_secret_setting_name = var.google_client_secret_settings_name
          oauth_scopes               = var.google_oauth_scopes
        }
      }

      dynamic "microsoft" {
        for_each = var.microsoft_client_id != null ? [1] : []
        content {
          client_id                  = var.microsoft_client_id
          client_secret              = var.microsoft_client_secret
          client_secret_setting_name = var.microsoft_client_secret_settings_name
          oauth_scopes               = var.microsoft_oauth_scopes
        }
      }

      dynamic "twitter" {
        for_each = var.twitter_consumer_key != null ? [1] : []
        content {
          consumer_key                 = var.twitter_consumer_key
          consumer_secret              = var.twitter_consumer_secret
          consumer_secret_setting_name = var.twitter_secret_setting_name
        }
      }
    }
  }

  ##############
  ### Backup ###
  ##############
  dynamic "backup" {
    for_each = var.backup_name != null ? [1] : []
    content {
      name                = var.backup_name
      enabled             = var.backup_enabled
      storage_account_url = var.storage_account_url

      dynamic "schedule" {
        for_each = var.frequency_interval != null ? [1] : []
        content {
          frequency_interval       = var.frequency_interval
          frequency_unit           = var.frequency_unit
          keep_at_least_one_backup = var.keep_at_least_one_backup
          retention_period_days    = var.retention_period_days
          start_time               = var.start_time
        }
      }
    }
  }

  #########################
  ### Connection_String ###
  #########################
  dynamic "connection_string" {
    for_each = var.connection_string
    content {
      name  = lookup(connection_string.value, "name", null)
      type  = lookup(connection_string.value, "type", null)
      value = lookup(connection_string.value, "value", null)
    }
  }

  ################
  ### Identity ###
  ################
  dynamic "identity" {
    for_each = var.function_app_identity_type != null ? [1] : []
    content {
      type         = var.function_app_identity_type
      identity_ids = var.function_app_identity_type == "UserAssigned" ? var.function_app_identity_id : null
    }
  }


  #######################
  ### Sticky_Settings ###
  #######################
  dynamic "sticky_settings" {
    for_each = var.sticky_settings_enabled ? [1] : []
    content {
      app_setting_names       = length(var.sticky_settings_app_setting_names) != 0 ? var.sticky_settings_app_setting_names : null
      connection_string_names = length(var.sticky_settings_connection_string_names) != 0 ? var.sticky_settings_connection_string_names : null
    }
  }


  #######################
  ### Storage_Account ###
  #######################
  dynamic "storage_account" {
    for_each = var.storage_account
    content {
      access_key   = lookup(storage_account.value, "access_key")
      account_name = lookup(storage_account.value, "account_name")
      name         = lookup(storage_account.value, "name")
      share_name   = lookup(storage_account.value, "share_name")
      type         = lookup(storage_account.value, "type")
      mount_path   = lookup(storage_account.value, "mount_path", null)
    }
  }

  ###################
  ### Site_Config ###
  ###################
  site_config {
    always_on                                     = var.always_on
    api_definition_url                            = var.api_definition_url
    api_management_api_id                         = var.api_management_api_id
    app_command_line                              = var.app_command_line
    app_scale_limit                               = var.app_scale_limit
    application_insights_connection_string        = var.application_insights_connection_string
    application_insights_key                      = var.application_insights_key
    container_registry_managed_identity_client_id = var.container_registry_managed_identity_client_id
    container_registry_use_managed_identity       = var.container_registry_use_managed_identity
    default_documents                             = var.default_documents
    elastic_instance_minimum                      = var.elastic_instance_minimum
    ftps_state                                    = var.ftps_state
    health_check_path                             = var.health_check_path
    health_check_eviction_time_in_min             = var.health_check_eviction_time_in_min
    http2_enabled                                 = var.http2_enabled
    ip_restriction                                = concat(local.ip_addresses, local.service_tags, local.virtual_network_subnet_ids)
    load_balancing_mode                           = var.load_balancing_mode
    managed_pipeline_mode                         = var.managed_pipeline_mode
    minimum_tls_version                           = var.minimum_tls_version
    pre_warmed_instance_count                     = var.pre_warmed_instance_count
    remote_debugging_enabled                      = var.remote_debugging_enabled
    remote_debugging_version                      = var.remote_debugging_version
    runtime_scale_monitoring_enabled              = var.runtime_scale_monitoring_enabled
    scm_ip_restriction                            = concat(local.scm_ip_addresses, local.scm_service_tags, local.scm_virtual_network_subnet_ids)
    scm_minimum_tls_version                       = var.scm_minimum_tls_version
    scm_use_main_ip_restriction                   = var.scm_use_main_ip_restriction
    use_32_bit_worker                             = var.use_32_bit_worker
    vnet_route_all_enabled                        = var.vnet_route_all_enabled
    websockets_enabled                            = var.websockets_enabled
    worker_count                                  = var.worker_count


    #########################
    ### Application_Stack ###
    #########################
    dynamic "application_stack" {
      for_each = var.application_stack_enabled ? [1] : []
      content {
        dotnet_version              = var.dotnet_version
        use_dotnet_isolated_runtime = var.use_dotnet_isolated_runtime
        java_version                = var.java_version
        node_version                = var.node_version
        python_version              = var.python_version
        powershell_core_version     = var.powershell_core_version
        use_custom_runtime          = var.use_custom_runtime

        dynamic "docker" {
          for_each = var.docker != null ? var.docker : []
          content {
            registry_url      = lookup(docker.value, "registry_url")
            image_name        = lookup(docker.value, "image_name")
            image_tag         = lookup(docker.value, "image_tag")
            registry_username = lookup(docker.value, "registry_username", null)
            registry_password = lookup(docker.value, "registry_password", null)
          }
        }
      }
    }


    ########################
    ### App Service Logs ###
    ########################
    dynamic "app_service_logs" {
      for_each = var.disk_quota_mb != null ? [1] : []
      content {
        disk_quota_mb         = var.disk_quota_mb
        retention_period_days = var.app_service_logs_retention_period_days
      }
    }


    ############
    ### CORS ###
    ############
    dynamic "cors" {
      for_each = var.cors_allowed_origins != null ? [1] : []
      content {
        allowed_origins     = var.cors_allowed_origins
        support_credentials = var.cors_support_credentials
      }
    }
  }
}


# Private Endpoint
resource "azurerm_private_endpoint" "my_private_ep" {
  name                          = "${azurerm_linux_function_app.my_linux_function_app.name}-pe"
  resource_group_name           = var.resource_group_name
  location                      = var.location
  subnet_id                     = data.azurerm_subnet.subnet.id
  custom_network_interface_name = var.custom_network_interface_name
  tags                          = var.tags

  dynamic "ip_configuration" {
    for_each = var.ip_configuration_name != null ? [1] : []
    content {
      name               = var.ip_configuration_name
      private_ip_address = var.private_ip_address
      subresource_name   = var.subresource_name
      member_name        = var.member_name
    }
  }

  dynamic "private_dns_zone_group" {
    for_each = var.private_dns_zone_group_name != null ? [1] : []
    content {
      name                 = var.private_dns_zone_group_name
      private_dns_zone_ids = var.private_dns_zone_ids
    }
  }

  private_service_connection {
    name                              = "${azurerm_linux_function_app.my_linux_function_app.name}-service-connection"
    is_manual_connection              = var.is_manual_connection
    private_connection_resource_id    = azurerm_linux_function_app.my_linux_function_app.id
    private_connection_resource_alias = var.private_connection_resource_alias
    subresource_names                 = var.subresource_names
    request_message                   = var.request_message
  }
}