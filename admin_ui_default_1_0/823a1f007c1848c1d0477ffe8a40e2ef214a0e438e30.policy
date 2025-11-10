@id("AdminCanManageService")
permit (
  principal in Gluu::Flex::AdminUI::Role::"admin",
  action in [Gluu::Flex::AdminUI::Action::"read",
  Gluu::Flex::AdminUI::Action::"write",
  Gluu::Flex::AdminUI::Action::"delete"],
  resource in Gluu::Flex::AdminUI::Resources::ParentResource::"Service"
);