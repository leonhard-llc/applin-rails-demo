json.page Applin::nav_page(title: "New Account") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::textfield(
        var_name: "username",
        label: "Username",
        error: @username_bad ? "Please enter letters and numbers" : nil,
      ),
      Applin::nav_button(text: "Terms", actions: [Applin::push("/terms")]),
      Applin::nav_button(text: "Privacy", actions: [Applin::push("/privacy")]),
      Applin::checkbox(text: "I agree", var_name: "agree"),
      Applin::form_button(
        text: "Create Account",
        actions: [
          Applin::rpc("/create_account"),
          Applin::on_user_error_poll,
          Applin::replace_all("/"),
        ],
      ),
    ])
  }
}
