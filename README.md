# GluuFlexAdminUIPolicyStore

The default Cedarling policy-store for managing access control of [Gluu Flex Admin UI](https://github.com/GluuFederation/flex/tree/main/admin-ui).

## Frontend Resources

Below are resources with parent group and sub resources in Admin UI.

- System and monitoring
    - Dashboard
    - Health
    - License
    - MAU
    - Settings
    - Security
    - Webhooks
    - Assests
    - AuditLogs
- AuthServer and configuration
    - Clients
    - Scopes
    - Keys
    - AuthServerProperties
    - Logging
    - SSA
    - Authn
    - ConfigAPIPropeties
    - Sesisons
- Identity and Access
    - Users
    - Scripts
    - UserClaims
- Service
    - Cache
    - Persistance
    - SMTP
    - SCIM
    - FIDO
    - SAML
    - Lock

## Actions

The following actions can be performed on the resources.

- read
- write
- delete

## Policies and permissions

The default policies present in the policy store

#### Admin can manage Auth server config

```
@id("AdminCanManageAuthServerConfiguration")
permit (
  principal in Gluu::Flex::AdminUI::Role::"admin",
  action in [Gluu::Flex::AdminUI::Action::"read",
  Gluu::Flex::AdminUI::Action::"write",
  Gluu::Flex::AdminUI::Action::"delete"],
  resource in Gluu::Flex::AdminUI::Resources::ParentResource::"AuthServerAndConfiguration"
);
```

#### Admin can manage User Indetity and Access


```
@id("AdminCanManageUserIdentityAndAccess")
permit (
  principal in Gluu::Flex::AdminUI::Role::"admin",
  action in [Gluu::Flex::AdminUI::Action::"read",
  Gluu::Flex::AdminUI::Action::"write",
  Gluu::Flex::AdminUI::Action::"delete"],
  resource in Gluu::Flex::AdminUI::Resources::ParentResource::"IdentityAndAccess"
);
```

#### Admin can manage system monitoring


```
@id("AdminCanManageSystemMonitoring")
permit (
  principal in Gluu::Flex::AdminUI::Role::"admin",
  action in [Gluu::Flex::AdminUI::Action::"read",
  Gluu::Flex::AdminUI::Action::"write",
  Gluu::Flex::AdminUI::Action::"delete"],
  resource in Gluu::Flex::AdminUI::Resources::ParentResource::"SystemAndMonitoring"
);
```

#### Admin can manage services


```
@id("AdminCanManageService")
permit (
  principal in Gluu::Flex::AdminUI::Role::"admin",
  action in [Gluu::Flex::AdminUI::Action::"read",
  Gluu::Flex::AdminUI::Action::"write",
  Gluu::Flex::AdminUI::Action::"delete"],
  resource in Gluu::Flex::AdminUI::Resources::ParentResource::"Service"
);
```

#### Auditor can Mmanage System Monitoring

```
@id("AuditorCanManageSystemMonitoring")
permit (
  principal in Gluu::Flex::AdminUI::Role::"auditor",
  action in [Gluu::Flex::AdminUI::Action::"read",
  Gluu::Flex::AdminUI::Action::"write",
  Gluu::Flex::AdminUI::Action::"delete"],
  resource in Gluu::Flex::AdminUI::Resources::ParentResource::"SystemAndMonitoring"
);
```

#### Auditor can manage Clients


```
@id("AuditorCanManageClients")
permit (
  principal in Gluu::Flex::AdminUI::Role::"auditor",
  action in [Gluu::Flex::AdminUI::Action::"read",
  Gluu::Flex::AdminUI::Action::"write",
  Gluu::Flex::AdminUI::Action::"delete"],
  resource in Gluu::Flex::AdminUI::Resources::Features::"Clients"
);
```

#### Viewer can view User Indetity and Access

```
@id("ViewerCanViewUserIdentityAndAccess")
permit (
  principal in Gluu::Flex::AdminUI::Role::"viewer",
  action in Gluu::Flex::AdminUI::Action::"read",
  resource in Gluu::Flex::AdminUI::Resources::ParentResource::"IdentityAndAccess"
);
```
