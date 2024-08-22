/**
 * Copyright 2024 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "project_id" {
  value = module.project_ci_kms.project_id
}

output "folder_id" {
  value = split("/", google_folder.test_folder.id)[1]
}

output "project_number" {
  value = module.project_ci_kms.project_number
}

output "billing_account" {
  value = var.billing_account
}

output "sa_key" {
  value     = google_service_account_key.int_test.private_key
  sensitive = true
}

output "suffix" {
  value = random_string.suffix.result
}
