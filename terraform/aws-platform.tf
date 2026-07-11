module "aws_platform" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-platform@llgconsultoria.com"
    AccountName               = "aws-platform"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail              = "gerson@llgconsultoria.com"
    SSOUserFirstName          = "Gerson"
    SSOUserLastName           = "Graciani"
  }

  account_tags = {
    cicdlab-env  = "platform"
    cicdlab-role = "platform"
  }

  change_management_parameters = {
    change_requested_by = "gerson@llgconsultoria.com"
    change_reason       = "cicdlab platform account — ArgoCD, Prometheus, Grafana"
  }

  custom_fields = {}

  account_customizations_name = "cicdlab-common"
}
