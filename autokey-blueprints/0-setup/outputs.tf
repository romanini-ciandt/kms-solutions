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

output "autokey_key_project_id" {
  description = "GCP project ID where the KMS Autokey CryptoKeys will be stored."
  value       = local.autokey_key_project_id
}

output "autokey_folder_id" {
  description = "The GCP folder used for KMS Autokey."
  value       = local.autokey_folder_id
}

output "random_suffix" {
  description = "Random suffix created to append the resource names."
  value       = random_string.suffix.result
}