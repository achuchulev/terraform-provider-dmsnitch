variable "dms_key" {}

provider "dmsnitch" {
  api_key = "${var.dms_key}"
}

terraform {

  ##required_version = ">=0.11.0"
  backend "remote" {
        organization     = "atanasc-2"

    workspaces {
      name = "terraform-provider-dmsnitch"
      #prefix = "app-"
    }
  }
}