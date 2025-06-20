variable "resource_group" {
  type = string
}

variable "agw_name" {
  type = string
}

variable "ag_subnet_id" {
  type = string
}

variable "gateway_ip_configuration" {
  type = string
}

variable "frontend_port" {
   type = string
}

variable "frontend_ip_configuration" {
   type = string
}

variable "agw_ip_id" {
  type = string
}

variable "backend_address_pool" {
  type = string
}

variable "backend_http_settings" {
  type = string
}

variable "http_listener" {
  type = string
}

variable "request_routing_rule" {
   type = string
}
