resource "google_dataplex_zone_iam_policy" "dataplex_zone_iam_policies" {
  for_each = var.dataplex_zone_iam_policies

  dataplex_zone = each.value.dataplex_zone
  lake          = each.value.lake
  policy_data   = each.value.policy_data
  location      = each.value.location
  project       = each.value.project
}

