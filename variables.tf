variable "dataplex_zone_iam_policies" {
  description = <<EOT
Map of dataplex_zone_iam_policies, attributes below
Required:
    - dataplex_zone
    - lake
    - policy_data
Optional:
    - location
    - project
EOT

  type = map(object({
    dataplex_zone = string
    lake          = string
    policy_data   = string
    location      = optional(string)
    project       = optional(string)
  }))
}

