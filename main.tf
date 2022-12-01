################
# Organization #
################
data "tfe_organization" "tfdp-automation" {
  name = "tfdp-automation"
}

################
# Workspace #
################
resource "tfe_workspace" "test_ws" {
  name                = var.workspace_name
  organization        = data.tfe_organization.tfdp-automation.name
  global_remote_state = false
  force_delete        = true
}

################
# Team / Workspace Access #
################

# Option 1: Create new team
# resource "tfe_team" "test_team" {
#   name         = "test_team"
#   organization = data.tfe_organization.tfdp-automation.name
#   sso_team_id  = "..."
# }

# Option 2: Use existing team (LDAP)
data "tfe_team" "test_team" {
  name = "users_write"
  organization = data.tfe_organization.tfdp-automation.name
}

resource "tfe_team_access" "access_team1-workspace1" {
  team_id      = data.tfe_team.test_team.id
  workspace_id = tfe_workspace.test_ws.id
  access       = "write"
}
