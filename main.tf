variable "dms_key" {}

provider "dmsnitch" {
  api_key = "${var.dms_key}"
}
