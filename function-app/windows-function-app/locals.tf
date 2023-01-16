locals {
  app_stack = zipmap(["dotnet_version", "use_dotnet_isolated_runtime", "java_version", "node_version", "powershell_core_version"], [var.dotnet_version, var.use_dotnet_isolated_runtime, var.java_version, var.node_version, var.powershell_core_version])

  ip_addresses = [for ip in var.authorized_ip_addresses : {
    action                    = "Allow"
    headers                   = var.ip_restriction_headers
    ip_address                = ip
    name                      = "ip_restriction_cidr_${index(var.authorized_ip_addresses, ip)}"
    priority                  = join("", [1, index(var.authorized_ip_addresses, ip), 0])
    service_tag               = null
    virtual_network_subnet_id = null
  }]

  service_tags = [for s_tag in var.authorized_service_tags : {
    action                    = "Allow"
    headers                   = var.ip_restriction_headers
    ip_address                = null
    name                      = "service_tag_restriction_${index(var.authorized_service_tags, s_tag)}"
    priority                  = join("", [3, index(var.authorized_service_tags, s_tag), 0])
    service_tag               = s_tag
    virtual_network_subnet_id = null
  }]

  virtual_network_subnet_ids = [for subnet_id in var.authorized_virtual_network_subnet_ids : {
    action                    = "Allow"
    headers                   = var.ip_restriction_headers
    ip_address                = null
    name                      = "subnet_id_restriction_${index(var.authorized_virtual_network_subnet_ids, subnet_id)}"
    priority                  = join("", [2, index(var.authorized_virtual_network_subnet_ids, subnet_id), 0])
    service_tag               = null
    virtual_network_subnet_id = subnet_id
  }]

  scm_ip_addresses = [for ip in var.authorized_ip_addresses : {
    action                    = "Allow"
    headers                   = var.ip_restriction_headers
    ip_address                = ip
    name                      = "ip_restriction_cidr_${index(var.authorized_ip_addresses, ip)}"
    priority                  = join("", [1, index(var.authorized_ip_addresses, ip), 0])
    service_tag               = null
    virtual_network_subnet_id = null
  }]

  scm_service_tags = [for s_tag in var.authorized_service_tags : {
    action                    = "Allow"
    headers                   = var.ip_restriction_headers
    ip_address                = null
    name                      = "service_tag_restriction_${index(var.authorized_service_tags, s_tag)}"
    priority                  = join("", [3, index(var.authorized_service_tags, s_tag), 0])
    service_tag               = s_tag
    virtual_network_subnet_id = null
  }]

  scm_virtual_network_subnet_ids = [for subnet_id in var.authorized_virtual_network_subnet_ids : {
    action                    = "Allow"
    headers                   = var.ip_restriction_headers
    ip_address                = null
    name                      = "subnet_id_restriction_${index(var.authorized_virtual_network_subnet_ids, subnet_id)}"
    priority                  = join("", [2, index(var.authorized_virtual_network_subnet_ids, subnet_id), 0])
    service_tag               = null
    virtual_network_subnet_id = subnet_id
  }]
}