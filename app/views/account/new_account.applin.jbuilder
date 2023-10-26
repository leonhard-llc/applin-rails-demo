json.page Applin::nav_page(title: "New Account") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::textfield(label: "Username", var_name: "username"),
      Applin::nav_button(text: "Terms", actions: [Applin::push("/terms")]),
      Applin::nav_button(text: "Privacy", actions: [Applin::push("/privacy")]),
      Applin::checkbox(text: "I agree", var_name: "agree"),
      Applin::form_button(
        text: "Create Account",
        actions: [Applin::rpc("/create_account"), Applin::replace_all("/")],
      ),
    ])
  }
}
