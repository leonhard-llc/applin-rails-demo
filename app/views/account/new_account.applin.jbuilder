json.page Applin::nav_page(title: "New Account") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::textfield(
        var_name: "username",
        label: "Username",
        error: @username_error,
      ),
      Applin::nav_button(text: "Terms", actions: [Applin::push("/terms")]),
      Applin::nav_button(text: "Privacy", actions: [Applin::push("/privacy")]),
      Applin::checkbox(text: "I agree", var_name: "agree"),
      @agree_error ? Applin::error_text(@agree_error) : nil,
      Applin::form_button(
        text: "Create Account",
        actions: [
          Applin::rpc(url: "/create_account", on_user_error_poll: true),
          Applin::replace_all("/"),
        ],
      ),
    ].compact)
  }
}
