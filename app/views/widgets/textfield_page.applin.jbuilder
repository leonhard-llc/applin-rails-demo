json.page Applin::nav_page(title: "Text Field") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::textfield(var_name: "field1", label: "Field 1"),
      Applin::textfield(var_name: "with-err", label: "With an error message", error: "An error message."),
      Applin::textfield(var_name: "with-short-initial", label: "With a short initial string", initial_string: "initial text"),
      Applin::textfield(
        var_name: "with-long-initial",
        label: "With a long initial string",
        initial_string: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
      Applin::textfield(var_name: "numbers", label: "Enter numbers", allow: Applin::ALLOW_NUMBERS),
      Applin::textfield(var_name: "text", label: "Enter text", allow: Applin::ALLOW_ASCII),
      Applin::textfield(var_name: "tel", label: "Enter tel", allow: Applin::ALLOW_TEL),
      Applin::textfield(var_name: "email", label: "Enter email", allow: Applin::ALLOW_EMAIL),
      Applin::textfield(var_name: "name", label: "Enter name", auto_capitalize: Applin::AUTO_CAPITALIZE_NAMES),
      Applin::textfield(var_name: "sentences", label: "Enter sentences", auto_capitalize: Applin::AUTO_CAPITALIZE_SENTENCES),
      # TODO: Implement textfield.max_lines and uncomment.
      # Applin::textfield(var_name: "one-line", label: "Enter one line", max_lines: 1),
      # Applin::textfield(var_name: "three-lines-max", label: "Enter up to three lines", max_lines: 3),
      Applin::text("Time of page poll: " + Time.new.strftime("%Y-%m-%d %H:%M:%S")),
      Applin::textfield(var_name: "polls", label: "Polls page", poll_delay_ms: 0),
      Applin::textfield(var_name: "with-poll-delay", label: "Polls page after 1 second delay", poll_delay_ms: 1000),
    ])
  }
}
