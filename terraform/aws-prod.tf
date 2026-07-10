module "aws_prod" {
  source = "aws-ia/control_tower_account_factory/aws//modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-prod@llgconsultoria.com"
    AccountName               = "aws-prod"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "gerson@llgconsultoria.com"
    SSOUserFirstName          = "Gerson"
    SSOUserLastName           = "Graciani"
  }

  account_tags = {
    cicdlab-env  = "prod"
    cicdlab-role = "workload"
  }

  change_management_parameters = {
    change_requested_by = "gerson@llgconsultoria.com"
    change_reason       = "cicdlab prod account — EKS prod workloads"
  }

  custom_fields = {}

  account_customizations_name = "cicdlab-common"
}
