# Linux Web App
resource "azurerm_linux_web_app" "my_linux_web_app" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  app_settings                       = var.app_settings
  client_affinity_enabled            = var.client_affinity_enabled
  client_certificate_enabled         = var.client_certificate_enabled
  client_certificate_mode            = var.client_certificate_mode
  client_certificate_exclusion_paths = var.client_certificate_exclusion_paths
  enabled                            = var.enabled
  https_only                         = var.https_only
  key_vault_reference_identity_id    = var.key_vault_reference_identity_id
  tags                               = var.tags
  virtual_network_subnet_id          = var.virtual_network_subnet_id
  zip_deploy_file                    = var.zip_deploy_file

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
    for_each = var.web_app_identity_type != null ? [1] : []
    content {
      type         = var.web_app_identity_type
      identity_ids = var.web_app_identity_type == "UserAssigned" ? var.function_app_identity_id : null
    }
  }

  ############
  ### Logs ###
  ############
  dynamic "logs" {
    for_each = var.logs_enabled ? [1] : []
    content {
      detailed_error_messages = var.detailed_error_messages
      failed_request_tracing  = var.failed_request_tracing

      dynamic "application_logs" {
        for_each = var.application_logs_file_system_level != null ? [1] : []
        content {
          file_system_level = var.application_logs_file_system_level

          dynamic "azure_blob_storage" {
            for_each = var.app_azure_blob_storage_level != null ? [1] : []
            content {
              level             = var.app_azure_blob_storage_level
              retention_in_days = var.app_azure_blob_storage_retention_in_days
              sas_url           = var.app_azure_blob_storage_sas_url
            }
          }
        }
      }

      dynamic "http_logs" {
        for_each = var.https_logs_enabled ? [1] : []
        content {
          dynamic "azure_blob_storage" {
            for_each = var.http_azure_blob_storage_retention_in_days != null ? [1] : []
            content {
              retention_in_days = var.http_azure_blob_storage_retention_in_days
              sas_url           = var.http_azure_blob_storage_sas_url
            }
          }

          dynamic "file_system" {
            for_each = var.http_file_system_retention_in_days != null ? [1] : []
            content {
              retention_in_days = var.http_file_system_retention_in_days
              retention_in_mb   = var.http_file_system_retention_in_mb
            }
          }
        }
      }
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
    auto_heal_enabled                             = var.auto_heal_enabled
    container_registry_managed_identity_client_id = var.container_registry_managed_identity_client_id
    container_registry_use_managed_identity       = var.container_registry_use_managed_identity
    default_documents                             = var.default_documents
    ftps_state                                    = var.ftps_state
    health_check_path                             = var.health_check_path
    health_check_eviction_time_in_min             = var.health_check_eviction_time_in_min
    http2_enabled                                 = var.http2_enabled
    ip_restriction                                = concat(local.ip_addresses, local.service_tags, local.virtual_network_subnet_ids)
    load_balancing_mode                           = var.load_balancing_mode
    local_mysql_enabled                           = var.local_mysql_enabled
    managed_pipeline_mode                         = var.managed_pipeline_mode
    minimum_tls_version                           = var.minimum_tls_version
    remote_debugging_enabled                      = var.remote_debugging_enabled
    remote_debugging_version                      = var.remote_debugging_version
    scm_ip_restriction                            = concat(local.scm_ip_addresses, local.scm_service_tags, local.scm_virtual_network_subnet_ids)
    scm_minimum_tls_version                       = var.scm_minimum_tls_version
    scm_use_main_ip_restriction                   = var.scm_use_main_ip_restriction
    use_32_bit_worker                             = var.use_32_bit_worker
    vnet_route_all_enabled                        = var.vnet_route_all_enabled
    websockets_enabled                            = var.websockets_enabled
    worker_count                                  = var.worker_count


    ##########################
    ### Auto_Heal_Settings ###
    ##########################
    dynamic "auto_heal_setting" {
      for_each = var.auto_heal_enabled != null ? [1] : []
      content {
        dynamic "action" {
          for_each = var.action_type != null ? [1] : []
          content {
            action_type                    = var.action_type
            minimum_process_execution_time = var.minimum_process_execution_time
          }
        }
        dynamic "trigger" {
          for_each = var.auto_heal_enabled ? [1] : []
          content {
            dynamic "requests" {
              for_each = var.requests_count != null ? [1] : []
              content {
                count    = var.requests_count
                interval = var.requests_interval
              }
            }

            dynamic "slow_request" {
              for_each = var.slow_request
              content {
                count      = lookup(slow_request.value, "count")
                interval   = lookup(slow_request.value, "interval")
                time_taken = lookup(slow_request.value, "time_taken")
                path       = lookup(slow_request.value, "path", null)
              }
            }

            dynamic "status_code" {
              for_each = var.status_code
              content {
                count             = lookup(status_code.value, "count")
                interval          = lookup(status_code.value, "interval")
                status_code_range = lookup(status_code.value, "status_code_range")
                path              = lookup(status_code.value, "path", null)
                sub_status        = lookup(status_code.value, "sub_status", null)
                win32_status      = lookup(status_code.value, "win32_status", null)
              }
            }
          }
        }
      }
    }

    #########################
    ### Application_Stack ###
    #########################
    dynamic "application_stack" {
      for_each = var.application_stack_enabled ? [1] : []
      content {
        docker_image        = var.docker_image
        docker_image_tag    = var.docker_image_tag
        dotnet_version      = var.dotnet_version
        java_server         = var.java_server
        java_server_version = var.java_server_version
        java_version        = var.java_version
        node_version        = var.node_version
        php_version         = var.php_version
        python_version      = var.php_version
        ruby_version        = var.ruby_version
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