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
  principal,
  action in [GluuFlexAdminUI::Action::"read",
  GluuFlexAdminUI::Action::"write",
  GluuFlexAdminUI::Action::"delete"],
  resource in GluuFlexAdminUIResources::ParentResource::"AuthServerAndConfiguration"
)
when {
    context has tokens.gluuflexadminui_userinfo_token &&
    context.tokens.gluuflexadminui_userinfo_token.hasTag("jansAdminUIRole") &&
    context.tokens.gluuflexadminui_userinfo_token.getTag("jansAdminUIRole").contains("admin")
};
```

#### Admin can manage User Indetity and Access


```
@id("AdminCanManageUserIdentityAndAccess")
permit (
  principal,
  action in [GluuFlexAdminUI::Action::"read",
  GluuFlexAdminUI::Action::"write",
  GluuFlexAdminUI::Action::"delete"],
  resource in GluuFlexAdminUIResources::ParentResource::"IdentityAndAccess"
)
when {
    context has tokens.gluuflexadminui_userinfo_token &&
    context.tokens.gluuflexadminui_userinfo_token.hasTag("jansAdminUIRole") &&
    context.tokens.gluuflexadminui_userinfo_token.getTag("jansAdminUIRole").contains("admin")
};
```

#### Admin can manage system monitoring


```
@id("AdminCanManageSystemMonitoring")
permit (
  principal,
  action in [GluuFlexAdminUI::Action::"read",
  GluuFlexAdminUI::Action::"write",
  GluuFlexAdminUI::Action::"delete"],
  resource in GluuFlexAdminUIResources::ParentResource::"SystemAndMonitoring"
)
when {
    context has tokens.gluuflexadminui_userinfo_token &&
    context.tokens.gluuflexadminui_userinfo_token.hasTag("jansAdminUIRole") &&
    context.tokens.gluuflexadminui_userinfo_token.getTag("jansAdminUIRole").contains("admin")
};
```

#### Admin can manage services


```
@id("AdminCanManageService")
permit (
  principal,
  action in [GluuFlexAdminUI::Action::"read",
  GluuFlexAdminUI::Action::"write",
  GluuFlexAdminUI::Action::"delete"],
  resource in GluuFlexAdminUIResources::ParentResource::"Service"
)
when {
    context has tokens.gluuflexadminui_userinfo_token &&
    context.tokens.gluuflexadminui_userinfo_token.hasTag("jansAdminUIRole") &&
    context.tokens.gluuflexadminui_userinfo_token.getTag("jansAdminUIRole").contains("admin")
};
```

#### Admin can manage Essential Admin UI Scopes

````
@id("AdminCanManageEssentialAdminUIScopes")
permit (
  principal,
  action in [GluuFlexAdminUI::Action::"read",
  GluuFlexAdminUI::Action::"write",
  GluuFlexAdminUI::Action::"delete"],
  resource in GluuFlexAdminUIResources::ParentResource::"EssentialAdminUIScopes"
)
when {
    context has tokens.gluuflexadminui_userinfo_token &&
    context.tokens.gluuflexadminui_userinfo_token.hasTag("jansAdminUIRole") &&
    context.tokens.gluuflexadminui_userinfo_token.getTag("jansAdminUIRole").contains("admin")
};
````

#### Auditor can Mmanage Admin UI Session

```
@id("AuditorCanManageAdminUISession")
permit (
  principal,
  action in [GluuFlexAdminUI::Action::"read",
  GluuFlexAdminUI::Action::"write",
  GluuFlexAdminUI::Action::"delete"],
  resource in GluuFlexAdminUIResources::Features::"AdminUISession"
)
when {
    context has tokens.gluuflexadminui_userinfo_token &&
    context.tokens.gluuflexadminui_userinfo_token.hasTag("jansAdminUIRole") &&
    context.tokens.gluuflexadminui_userinfo_token.getTag("jansAdminUIRole").contains("auditor")
};
```

#### Auditor can manage Dashboard


```
@id("AuditorCanManageDashboard")
permit (
  principal,
  action in [GluuFlexAdminUI::Action::"read",
  GluuFlexAdminUI::Action::"write",
  GluuFlexAdminUI::Action::"delete"],
  resource in GluuFlexAdminUIResources::Features::"Dashboard"
)
when {
    context has tokens.gluuflexadminui_userinfo_token &&
    context.tokens.gluuflexadminui_userinfo_token.hasTag("jansAdminUIRole") &&
    context.tokens.gluuflexadminui_userinfo_token.getTag("jansAdminUIRole").contains("auditor")
};
```

