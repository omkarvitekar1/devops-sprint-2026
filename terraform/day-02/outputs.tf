output "sprint_label" {
  description = "The compound label for this sprint marker"
  value       = local.sprint_label
}

output "environment" {
  description = "The environment this was deployed to"
  value       = var.environment
}

output "marker_id"  {
  description = "The ID of the null resource created"
  value       = null_resource.sprint_marker.id
}