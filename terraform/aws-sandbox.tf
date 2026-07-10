module "aws_sandbox" {
  source = "aws-ia/control_tower_account_factory/aws//modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-sandbox@llgconsultoria.com"
    AccountName               = "aws-sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "gerson@llgconsultoria.com"
    SSOUserFirstName          = "Gerson"
    SSOUserLastName           = "Graciani"
  }

  account_tags = {
    cicdlab-env  = "sandbox"
    cicdlab-role = "experimentation"
  }

  change_management_parameters = {
    change_requested_by = "gerson@llgconsultoria.com"
    change_reason       = "cicdlab sandbox account — experimentation"
  }

  custom_fields = {}

  account_customizations_name = "cicdlab-common"
}
