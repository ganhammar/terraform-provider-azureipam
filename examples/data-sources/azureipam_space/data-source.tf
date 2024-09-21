# Returns one space with network and usage information
data "azureipam_space" "expanded" {
  name               = "au"
  expand             = true
  append_utilization = true
}
output "expanded_space" {
  value = data.azureipam_space.expanded
}

# Returns one space  without network and usage information
data "azureipam_space" "not_expanded" {
  name               = "au"
  expand             = false
  append_utilization = false
}
output "not_expanded_space" {
  value = data.azureipam_space.not_expanded
}
