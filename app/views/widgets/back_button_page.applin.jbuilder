json.page Applin::nav_page(title: "Back Button") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::nav_button(text: "Default", actions: [Applin::push("/back_button_default_page")]),
      Applin::nav_button(text: "Disabled", actions: [Applin::push("/back_button_disabled_page")]),
      Applin::nav_button(text: "Missing", actions: [Applin::push("/back_button_missing_page")]),
      Applin::nav_button(text: "RPC", actions: [Applin::push("/back_button_rpc_ok_page")]),
      Applin::nav_button(text: "RPC Error", actions: [Applin::push("/back_button_rpc_error_page")]),
    ])
  }
}
