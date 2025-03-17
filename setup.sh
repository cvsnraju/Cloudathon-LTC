PROJECT_NUMBER=$(gcloud projects describe ltc-hack-prj-19 --format='value(projectNumber)')

gsutil iam ch serviceAccount:449140599411@cloudbuild.gserviceaccount.com:roles/storage.objectAdmin gs://ltc-hack-prj-19-cloud-build-logs
