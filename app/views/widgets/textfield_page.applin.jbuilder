json.page Applin::nav_page(title: "Text Field") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::textfield(var_name: "field1", label: "Field 1"),
      Applin::textfield(var_name: "field2", label: "Field 2", error: "An error message."),
      Applin::textfield(var_name: "field3", label: "Field 3", initial_string: "initial text"),
      Applin::textfield(
        var_name: "mmmm",
        label: "Field 4",
        initial_string: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
      Applin::textfield(var_name: "field4", label: "Enter numbers", allow: Applin::ALLOW_NUMBERS),
      Applin::textfield(var_name: "field5", label: "Enter text", allow: Applin::ALLOW_ASCII),
      Applin::textfield(var_name: "field6", label: "Enter tel", allow: Applin::ALLOW_TEL),
      Applin::textfield(var_name: "field7", label: "Enter email", allow: Applin::ALLOW_EMAIL),
      Applin::textfield(var_name: "field8", label: "Enter name", auto_capitalize: Applin::AUTO_CAPITALIZE_NAMES),
      Applin::textfield(var_name: "field8", label: "Enter sentences", auto_capitalize: Applin::AUTO_CAPITALIZE_SENTENCES),
      Applin::textfield(var_name: "field9", label: "Enter one line", max_lines: 1),
      Applin::textfield(var_name: "field10", label: "Enter up to three lines", max_lines: 3),
    ])
  }
}
