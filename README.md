# Deploy vnet infrastructure, vm and load balancer

## Important Links
1. [Terraform Plan Output for dev](https://github.com/kndoni/terraform-vnet/tree/master/documentation/dev-plan.md)
2. [Automated Documentation terraform-docs](https://github.com/kndoni/terraform-vnet/tree/master/documentation)


## Table of Contents
1. [Security Enhancements](#1-security-enhancements)
2. [Terraform Outputs](#2-terraform-outputs)
3. [Module Usage Guide](#3-module-usage-guide)
4. [Resource Groups vs. Subscriptions](#4-resource-groups-vs-subscriptions)
5. [Resource Labeling Strategy](#5-resource-labeling-strategy)
6. [Additional Useful Outputs](#6-additional-useful-outputs)
7. [GitHub Pipeline & Release Lifecycle](#7-github-pipeline--release-lifecycle)

## Terraform commands to deploy terraform code:

dev:
```bash
az login
cd environment/dev
terraform init -upgrade -reconfigure
terraform plan -out=ollamaplan
terraform apply "ollamaplan"
```
prod:
```bash
az login
cd environment/prod
terraform init -upgrade -reconfigure
terraform plan -out=ollamaplan
terraform apply "ollamaplan"
```

# Project Documentation

## 1. Security Enhancements

In this project, I have implemented several features like described below to keep security practices in place:

- **Network Security Groups (NSGs):** Are used to control inbound and outbound traffic to network interfaces (NICs), it ensures that only authorized traffic is permitted. This is applied to subnets and vms to restrict traffic.
- **Private Subnets**: Isolated subnets for non-public resources (e.g., private VMs).
- **Minimal Public IPs**: Public IPs assigned only to load balancers
- **Private IP Addressing:** Utilized for internal communication between virtual machines (VMs), reducing exposure to external networks.

*Optional Features to implement in future for Network Security:*

- **Azure Firewall:** Deploying a managed network security service to protect resources from potential threats.
- **DDoS Protection:** Enabling Azure DDoS Protection to safeguard against distributed denial-of-service attacks.
- **Role-Based Access Control (RBAC):** Implemented RBAC following the principle of least privilege.

## 2. Terraform Outputs

The following outputs have been defined in the `output.tf` files to facilitate the management and integration of resources:

**Virtual Network (VNet) Module Outputs:**

```hcl
output "resource_group" {
  value = azurerm_resource_group.resource_group.name
}

output "location" {
  value = azurerm_resource_group.resource_group.location
}

output "subnet_id" {
  value = { for key, subnet in azurerm_subnet.subnet : key => subnet.id }
}

output "environment" {
  value = var.environment
}

output "virtual_network_id" {
  value = azurerm_virtual_network.virtual_network.id
}

# VM Module
output "public_nic" {
  value = azurerm_network_interface.public_nic[*].private_ip_address # Private IPs for SSH
}

output "private_nic" {
  value = azurerm_network_interface.private_nic[*].private_ip_address # Internal communication
}
```
**Purpose of Each Output:**

- **resource_group:** Provides the name of the resource group, useful for referencing across modules.
- **location:** Indicates the Azure region where resources are deployed.
- **subnet_id:** Offers a mapping of subnet names to their respective IDs, making subnet associations possible.
- **environment:** Specifies the deployment environment (e.g., development, production), re-using it in environment-specific configurations.
- **virtual_network_id:** Returns the ID of the virtual network, essential for associating resources with the VNet.
- **public_nic and private_nic:** The NIC outputs provide visibility into VM network configurations without accessing them directly..

## 3. Module Usage Guide

**Prerequisites:**
- **Terraform CLI (v1.1+)**
- **Azure Account: Contributor permissions on the target subscription.**
- **Service Principal: For authentication and accessing storage account where bucket is saved.**

| Variable               | Description                   | Example         |
|------------------------|-------------------------------|-----------------|
| `environment`          | Environment (dev/prod)        | `prod`           |
| `location`             | Azure region                  | `northeurope`    |
| `resource_group_name`  | Resource group name           | `rg-ollama-prod` |

### Example Usage:
```hcl
module "vnet" {
  source = "../../modules/vnet"
}

module "vm" {
  source = "../../modules/vm"
  subnet_id = module.vnet.subnet_id["private-subnet"] # Uses subnet_id output
}
```

### Automating Documentation

Documentation can be automated using [terraform-docs](https://github.com/terraform-docs/terraform-docs), which generates documentation from Terraform modules.

1. Install terraform-docs:
```bash
# Download the binary
curl -sSLo terraform-docs.tar.gz https://terraform-docs.io/dl/${VERSION}/terraform-docs-${VERSION}-linux-amd64.tar.gz

# Extract and install
tar -xzf terraform-docs.tar.gz
chmod +x terraform-docs
sudo mv terraform-docs /usr/local/bin/
```
Using terraform docs to automate documentation creation
```hcl
terraform-docs markdown document modules/loadBalancer >> documentation/loadBalancer.md
terraform-docs markdown document modules/vnet >> documentation/vnet.md
terraform-docs markdown document modules/vm >> documentation/vm.md
terraform-docs markdown document modules/nsg >> documentation/nsg.md
terraform-docs markdown document environment/prod >> documentation/terraform_prod.md
terraform-docs markdown document environment/dev >> documentation/terraform_dev.md
```

## 4. Resource Groups vs. Subscriptions

### Resource Groups or Subscription level separation of responsibilities

#### Resource Groups Approach
- **Advantages**:
  - Simpler management and lower administrative overhead
  - Unified billing and cost tracking
  - Easier to implement shared services across environments
  - More straightforward RBAC implementation for teams that need access to multiple environments
  
- **Best For**:
  - Smaller organizations
  - Projects with limited resources
  - Development and testing phases
  - When environment isolation is not a strict requirement

#### Subscriptions Approach
- **Advantages**:
  - Stronger isolation between environments
  - Clearer separation of billing and costs
  - Independent service quotas and limits
  - Simplified compliance for environments with different regulatory requirements
  - Better control over resource governance
  
- **Best For**:
  - Enterprise-scale deployments
  - Production environments with strict compliance requirements
  - Organizations with separate teams managing different environments
  - When financial segregation is needed
  - High-security workloads

### Recommendation
For most scenarios, start with the Resource Group approach for dev/test environments and use separate subscriptions for production. This provides a balance between management simplicity and isolation where it matters most.

## 5. Resource Labeling Strategy

### Current Labeling Implementation
- **Environment-based Naming**: Resources prefixed or suffixed with environment identifiers (dev, test, prod)
- **Region Indicators**: Including region abbreviations in resource names for geographic identification
- **Resource Type Prefixes**: Adding resource type indicators (vm, nic, nsg) for easier identification
- **Consistent Tags**: Applying standardized tags across all resources for better filtering and reporting

### Flexibility Approach
- **Variable-based Naming**: Used variables instead of hard-coded names to build resource identifiers
- **Local Values**: Implemented local values for common naming patterns
- **Naming Module**: Created a separate naming module that generates consistent resource names

Example of flexible naming:
```hcl
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    name  = "${var.environment}-resource-group"
    env   = var.environment
    owner = local.owner
  }
}
```

### Tag Enforcement
This are the principals that I have followed to enforce tags usage in the modules.

- **Terraform Validations**: Implementing input variable validations to ensure proper tag structure
- **Default Tags**: Setting default tags at the provider level to ensure minimum tagging

## 6. Additional Useful Outputs
Here are some more outputs that could be implemented inside the modules
| Output Name           | Use Case                                  |
|-----------------------|-------------------------------------------|
| `load_balancer_ip`    | Public endpoint for accessing the app.    |
| `route_table_ids`     | Easier route table assignments to subnets.|
| `vm_admin_username`   | Username for SSH access.                  |
| `storage_account_id`  | For integrating with Azure Functions.     |

## 7. GitHub Pipeline & Release Lifecycle

To automate and streamline this infrastructure deployments of vnet, vm and loa balancer in dev and prod environments, I have followed this lifecycle:

1. **Code Commit**: Developers push changes to the repository.
2. **Continuous Integration (CI) Trigger**: GitHub Actions initiates the pipeline upon detecting new commits.
3. **Plan Generation**: A Terraform plan is generated to outline proposed infrastructure changes.
4. **Apply Changes**: Upon approval, Terraform applies the changes to the target environment.