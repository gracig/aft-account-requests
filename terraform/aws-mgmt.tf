module "aws_mgmt" {
  source = "aws-ia/control_tower_account_factory/aws//modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-mgmt@llgconsultoria.com"
    AccountName               = "aws-mgmt"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "gerson@llgconsultoria.com"
    SSOUserFirstName          = "Gerson"
    SSOUserLastName           = "Graciani"
  }

  account_tags = {
    cicdlab-env  = "mgmt"
    cicdlab-role = "platform"
  }

  change_management_parameters = {
    change_requested_by = "gerson@llgconsultoria.com"
    change_reason       = "cicdlab management account — ArgoCD, Prometheus, Grafana"
  }

  custom_fields = {}

  account_customizations_name = "cicdlab-common"
}
