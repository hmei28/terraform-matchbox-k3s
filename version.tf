terraform {
  required_version = ">= 1.0"

  required_providers {
    ct = {
      source  = "poseidon/ct"
      version = "0.11.0"
    }
    matchbox = {
      source  = "poseidon/matchbox"
      version = "0.5.2"
    }
  }
}
