variable "os_management_hub_managed_instances_install_windows_updates_managements" {
  description = <<EOT
Map of os_management_hub_managed_instances_install_windows_updates_managements, attributes below
Required:
    - compartment_id
Optional:
    - windows_update_types
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - work_request_details (block):
        - description (optional)
        - display_name (optional)
EOT

  type = map(object({
    compartment_id       = string
    windows_update_types = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    work_request_details = optional(object({
      description  = optional(string)
      display_name = optional(string)
    }))
  }))
}

