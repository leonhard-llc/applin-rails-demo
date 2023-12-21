json.page Applin::nav_page(title: "Checkbox") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::checkbox(text: "Checkbox", var_name: "checkbox"),
      Applin::checkbox(text: "Initially checked", var_name: "initial-checked", initial_bool: true),
      Applin::checkbox(text: "Does RPC on change", var_name: "with-rpc", actions: [Applin::rpc("/ok")]),
      Applin::checkbox(text: "Does RPC on change, but it fails", var_name: "with-bad-rpc", actions: [Applin::rpc("/error")]),
      Applin::checkbox(text: "", var_name: "empty-checkbox"),
      Applin::checkbox(text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM", var_name: "mmmm-mmmm-checkbox"),
      Applin::checkbox(text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM", var_name: "mmmmmmmm-checkbox"),
    ])
  }
}
