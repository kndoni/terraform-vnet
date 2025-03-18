package test

import (
    "testing"
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)

func TestNsgModule(t *testing.T) {
    t.Parallel()

    terraformOptions := &terraform.Options{
        TerraformDir: "../../modules/nsg",
        Vars: map[string]interface{}{
            "nsg_name": "test-nsg",
            "nsg_rules": []map[string]interface{}{
                {
                    "name":                       "AllowSSH",
                    "priority":                   100,
                    "direction":                  "Inbound",
                    "access":                     "Allow",
                    "protocol":                   "*",
                    "source_port_range":          "*",
                    "destination_port_range":     "22",
                    "source_address_prefix":      "*",
                    "destination_address_prefix": "*",
                },
            },
            "resource_group_name": "test-rg",
            "location":            "eastus",
            "subnet_id":           "dummy-subnet-id",
        },
        NoColor: true,
    }

    // Clean up with "terraform destroy" after the test
    defer terraform.Destroy(t, terraformOptions)
    terraform.InitAndApply(t, terraformOptions)

    // Validate output for NSG id or similar output
    nsgID := terraform.Output(t, terraformOptions, "nsg_id")
    assert.NotEmpty(t, nsgID, "Expected a valid NSG ID, got an empty value")
}