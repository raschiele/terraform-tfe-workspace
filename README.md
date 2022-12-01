<!-- BEGIN_TF_DOCS -->
Terraform Modul zum Anlegen eines Workspaces in TFE
===

# Overview

## Description
Baustein zur Anlage eines TFDP-konformen Workspaces in Terraform Enterprise.

## Requirements
Environment Variable TFE\_TOKEN muss gesetzt sein.

## Contact
TFDP Automation (Maximilian Wörner)

# Module

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_workspace_name"></a> [workspace\_name](#input\_workspace\_name) | Name des zu erstellenden Workspaces | `string` | `"test_workspace"` | no |

## Outputs

No outputs.

# Usage
```hcl
module "workspace" {
    source = "git::ssh://git@giti.rz.bankenit.de:7999/tfdpauto/tfdp-tfe-workspace.git"
    workspace_name = "my-workspace"
}
```

<!-- END_TF_DOCS -->