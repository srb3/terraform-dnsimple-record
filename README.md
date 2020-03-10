# Overview
This terraform module will use the dnsimple provider to create a dns
record.
## Usage

```hcl

module "chef_server" {
  source                      = "devoptimist/record/dnsimple"
  version                     = "0.1.0"
  records                     = {"my-web-server" = "3.8.143.249"}
  domain_name                 = "mycompany.com"
  oauth_token                 = "MYDNSIMPLEOAUTHTOKEN"
  account                     = "17272"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
|instance_count|The number of recourds being created|number|0|no|
|records|A map of desiered dns hostname and public ip address|map|{}|no|
|domain_name|The domain name to use for the records and the certs|string||yes|
|oauth_token|The account token for your dnsimple account|string||yes|
|account|The dnsimple account name (normally a 6 digit number)|string||yes|

## Map Variable examples

### records

```hcl
"records" = {
  "my-web-server" = "3.7.122.138"
  }
}
```

## Outputs
| Name | Description | Type |
|------|-------------|------|
|name|The names of the records|list|
|value|The value of the record|list|
|hostname|The hostnames of the reccords|list|
