terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}
module aks_cluster {
     source = "../../../terraform/"

     log_analytics_workspace_name = var.log_analytics_workspace_name
     log_analytics_retention_days = var.log_analytics_retention_days
     solution_plan_map = var.solution_plan_map
     location = var.location
     resource_group_name = var.resource_group_name
     hub_vnet_name = var.hub_vnet_name
     hub_address_space = var.hub_address_space
     hub_firewall_subnet_address_prefix = var.hub_firewall_subnet_address_prefix
     hub_bastion_subnet_address_prefix = var.hub_bastion_subnet_address_prefix
     aks_vnet_name = var.aks_vnet_name
     aks_vnet_address_space = var.aks_vnet_address_space
     vm_subnet_name = var.vm_subnet_name
     vm_subnet_address_prefix = var.vm_subnet_address_prefix
     aks_cluster_name = var.aks_cluster_name
     role_based_access_control_enabled = var.role_based_access_control_enabled
     automatic_channel_upgrade = var.automatic_channel_upgrade
     admin_group_object_ids = var.admin_group_object_ids
     azure_rbac_enabled = var.azure_rbac_enabled
     sku_tier = var.sku_tier
     kubernetes_version = var.kubernetes_version
     default_node_pool_vm_size = var.default_node_pool_vm_size
     default_node_pool_availability_zones = var.default_node_pool_availability_zones
     network_dns_service_ip = var.network_dns_service_ip
     network_service_cidr = var.network_service_cidr
     network_plugin = var.network_plugin
     pod_subnet_name = var.pod_subnet_name
     pod_subnet_address_prefix = var.pod_subnet_address_prefix
     default_node_pool_name = var.default_node_pool_name
     default_node_pool_subnet_name = var.default_node_pool_subnet_name
     default_node_pool_subnet_address_prefix = var.default_node_pool_subnet_address_prefix
     default_node_pool_enable_auto_scaling = var.default_node_pool_enable_auto_scaling
     default_node_pool_enable_host_encryption = var.default_node_pool_enable_host_encryption
     default_node_pool_enable_node_public_ip = var.default_node_pool_enable_node_public_ip
     default_node_pool_max_pods = var.default_node_pool_max_pods
     default_node_pool_node_labels = var.default_node_pool_node_labels
     default_node_pool_node_taints = var.default_node_pool_node_taints
     default_node_pool_os_disk_type = var.default_node_pool_os_disk_type
     default_node_pool_max_count = var.default_node_pool_max_count
     default_node_pool_min_count = var.default_node_pool_min_count
     default_node_pool_node_count = var.default_node_pool_node_count
     additional_node_pool_subnet_name = var.additional_node_pool_subnet_name
     additional_node_pool_subnet_address_prefix = var.additional_node_pool_subnet_address_prefix
     additional_node_pool_name = var.additional_node_pool_name
     additional_node_pool_vm_size = var.additional_node_pool_vm_size
     additional_node_pool_availability_zones = var.additional_node_pool_availability_zones
     additional_node_pool_enable_auto_scaling = var.additional_node_pool_enable_auto_scaling
     additional_node_pool_enable_host_encryption = var.additional_node_pool_enable_host_encryption
     additional_node_pool_enable_node_public_ip = var.additional_node_pool_enable_node_public_ip
     additional_node_pool_max_pods = var.additional_node_pool_max_pods
     additional_node_pool_mode = var.additional_node_pool_mode
     additional_node_pool_node_labels = var.additional_node_pool_node_labels
     additional_node_pool_node_taints = var.additional_node_pool_node_taints
     additional_node_pool_os_disk_type = var.additional_node_pool_os_disk_type
     additional_node_pool_os_type = var.additional_node_pool_os_type
     additional_node_pool_priority = var.additional_node_pool_priority
     additional_node_pool_max_count = var.additional_node_pool_max_count
     additional_node_pool_min_count = var.additional_node_pool_min_count
     additional_node_pool_node_count = var.additional_node_pool_node_count
     domain_name_label = var.domain_name_label
     firewall_name = var.firewall_name
     firewall_sku_name = var.firewall_sku_name
     firewall_sku_tier = var.firewall_sku_tier
     firewall_threat_intel_mode = var.firewall_threat_intel_mode
     firewall_zones = var.firewall_zones
     vm_name = var.vm_name
     vm_public_ip = var.vm_public_ip
     vm_size = var.vm_size
     vm_os_disk_storage_account_type = var.vm_os_disk_storage_account_type
     vm_os_disk_image = var.vm_os_disk_image
     storage_account_kind = var.storage_account_kind
     storage_account_tier = var.storage_account_tier
     acr_name = var.acr_name
     acr_sku = var.acr_sku
     acr_admin_enabled = var.acr_admin_enabled
     acr_georeplication_locations = var.acr_georeplication_locations
     tags = var.tags
     bastion_host_name = var.bastion_host_name
     storage_account_replication_type = var.storage_account_replication_type
     key_vault_name = var.key_vault_name
     key_vault_sku_name = var.key_vault_sku_name
     key_vault_enabled_for_deployment = var.key_vault_enabled_for_deployment
     key_vault_enabled_for_disk_encryption = var.key_vault_enabled_for_disk_encryption
     key_vault_enabled_for_template_deployment = var.key_vault_enabled_for_template_deployment
     key_vault_enable_rbac_authorization = var.key_vault_enable_rbac_authorization
     key_vault_purge_protection_enabled = var.key_vault_purge_protection_enabled
     key_vault_soft_delete_retention_days = var.key_vault_soft_delete_retention_days
     key_vault_bypass = var.key_vault_bypass
     key_vault_default_action = var.key_vault_default_action
     admin_username = var.admin_username
     ssh_public_key = var.ssh_public_key
     script_storage_account_name = var.script_storage_account_name
     script_storage_account_key = var.script_storage_account_key
     container_name = var.container_name
     script_name = var.script_name
     keda_enabled = var.keda_enabled
     vertical_pod_autoscaler_enabled = var.vertical_pod_autoscaler_enabled
     workload_identity_enabled = var.workload_identity_enabled
     oidc_issuer_enabled - var.oidc_issuer_enabled
     open_service_mesh_enabled = var.open_service_mesh_enabled
     image_cleaner_enabled = var.image_cleaner_enabled
     azure_policy_enabled = var.azure_policy_enabled
     http_application_routing_enabled = var.http_application_routing_enabled
 
}