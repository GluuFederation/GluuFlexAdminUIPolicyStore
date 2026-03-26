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