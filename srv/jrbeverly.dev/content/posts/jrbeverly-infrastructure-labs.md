+++
    author="jrbeverly"
    title="infrastructure-labs"
    date="2018-11-02T23:41:32Z"
    description="Terraform modules that define 'Repositories - jrbeverly'"
    tags=[
  "gitlab",
  "gitlab-groups",
  "repositories",
  "repository-management",
  "terraform",
  "terraform-modules"
]
    +++
    
# Infrastructure

## Summary

The specification of `jrbeverlylabs` as a set of terraform modules.

## Usage

To run this you need to execute:

```bash
terraform init
terraform plan
terraform apply
```

## Notes

This was a simple experiment making use of the `gitlab` provider of terraform. The idea was to see if it would assist in the process of maintaining `jrbeverlylabs` between gitlab.com and my internal gitlab instance.
