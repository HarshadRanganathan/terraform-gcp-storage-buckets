bucket_name         = "dev-us-central1"
enable_versioning   = true
project_id  = ""

assign_role_iam_binding = true

role_member_conditions = {
  "role1" = {
    role    = "roles/storage.objectUser"
    members = [
      "principal://iam.googleapis.com/projects//locations/global/workloadIdentityPools/.svc.id.goog/subject/ns/dev/sa/dev",
      "serviceAccount:dev@.iam.gserviceaccount.com"
    ]
    conditions = []
  }
}
