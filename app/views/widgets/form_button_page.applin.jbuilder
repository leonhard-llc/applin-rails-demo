json.page Applin::nav_page(title: "Form Button") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::form_button(text: "Button", actions: [Applin::push("/button_pressed_page")]),
      Applin::form_button(
        text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM",
        actions: [Applin::push("/button_pressed_page")],
      ),
      Applin::form_button(
        text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
        actions: [Applin::push("/button_pressed_page")],
      ),
      Applin::form_button(text: "Disabled", actions: []),
      Applin::form_button(
        text: "Start Aligned",
        actions: [Applin::push("/button_pressed_page")],
        align: Applin::ALIGN_START,
      ),
      Applin::form_button(
        text: "Center Aligned",
        actions: [Applin::push("/button_pressed_page")],
        align: Applin::ALIGN_CENTER,
      ),
      Applin::form_button(
        text: "End Aligned",
        actions: [Applin::push("/button_pressed_page")],
        align: Applin::ALIGN_END,
      ),
    ])
  }
}
