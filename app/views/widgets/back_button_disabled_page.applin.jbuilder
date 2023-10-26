json.page Applin::nav_page(title: "Disabled", start: Applin::back_button(actions: [])) {
  Applin::column(widgets: [
    Applin::button(text: "Back", actions: [Applin::pop]),
  ])
}
