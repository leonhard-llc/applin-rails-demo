json.page Applin::nav_page(title: "Button") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::button(text: "Button", actions: [Applin::push("/button_pressed_page")]),
      Applin::button(text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM", actions: [Applin::push("/button_pressed_page")]),
      Applin::button(text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM", actions: [Applin::push("/button_pressed_page")]),
      Applin::button(text: "", actions: [Applin::push("/button_pressed_page")]),
      Applin::button(text: "Disabled Button", actions: []),
      Applin::button(text: "Does Nothing", actions: [Applin::nothing]),
    ])
  }
}
