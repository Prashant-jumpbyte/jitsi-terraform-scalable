variable "gcp_project" {
  description = "GCP project"
  type        = string
}

variable "lets_encrypt_email" {
  description = "Needed by LetsEncrypt"
  type = string
}

variable "jitsi_shard" {
  description = "Jitsi Meet shard settings (prosody, jicofo, meet)"
  type        = object({
    id=number,
    random=string,
    size=number,
    region=string,
    zone=string,
    sfuMachineType=string
    xmppMachineType=string
  })
	default     = {
    id = 1,
    size = 2,
    random = "",
    region = "europe-west1",
    zone = "europe-west1-b",
    sfuMachineType = "f1-micro"
    xmppMachineType = "f1-micro"
  }
}

variable "dnszone_name" {
  description = "Name of your pre-existing DNS zone"
  type = string
}
variable "dnszone_dnsname" {
  description = "FQDN of your pre-existing DNS zone"
  type = string
}
variable "network_description" {
  type = string
  description = "Prevent forcereplace by setting it here"
  default = "Default network for the project"
}