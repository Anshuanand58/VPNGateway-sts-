module "vpn-gateway" {
  source  = "../test"

  # Resource Group, location, VNet and Subnet details
  # IPSec Site-to-Site connection configuration requirements
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  vpn_gateway_name     = var.vpn_gateway_name
  gateway_type         = var.gateway_type

  # local network gateway connection 
  local_networks = [
    {
      local_gw_name         = "onpremise"
      local_gateway_address = "8.8.8.8"
      local_address_space   = ["10.1.0.0/24"]
      shared_key            = "xpCGkHTBQmDvZK9HnLr7DAvH"
    },
  ]
}