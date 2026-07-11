module "aws_dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-dev@llgconsultoria.com"
    AccountName               = "aws-dev"
    ManagedOrganizationalUnit = "Workloads/Dev"
    SSOUserEmail              = "gerson@llgconsultoria.com"
    SSOUserFirstName          = "Gerson"
    SSOUserLastName           = "Graciani"
  }

  account_tags = {
    cicdlab-env  = "dev"
    cicdlab-role = "workload"
  }

  change_management_parameters = {
    change_requested_by = "gerson@llgconsultoria.com"
    change_reason       = "cicdlab dev account — EKS dev workloads"
  }

  custom_fields = {}

  account_customizations_name = "cicdlab-common"
}
