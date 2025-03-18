package test

import (
    "testing"
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)

func TestVnetModule(t *testing.T) {
    t.Parallel()

    terraformOptions := &terraform.Options{
        TerraformDir: "../../modules/vnet",
        Vars: map[string]interface{}{
            "vnet_name":               "test-vnet",
            "resource_group_name":     "test-rg",
            "location":                "eastus",
            "address_space":           []string{"10.0.0.0/16"},
            "subnet_name":             "test-subnet",
            "subnet_address_prefixes": []string{"10.0.1.0/24"},
            "environment":             "dev",
        },
        // Optionally disable colors in Terraform commands for easier testing.
        NoColor: true,
    }

    // Clean up resources with "terraform destroy" at the end of the test.
    defer terraform.Destroy(t, terraformOptions)
    terraform.InitAndApply(t, terraformOptions)

    // Get output from Terraform and assert it's not empty.
    vnetID := terraform.Output(t, terraformOptions, "vnet_id")
    assert.NotEmpty(t, vnetID, "Expected a valid VNET ID, got an empty value")
}
