json.page Applin::plain_page(title: "Plain Page") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::text("Hello"),
      Applin::text("Hello2"),
      Applin::button(text: "Back", actions: [Applin::pop]),
    ])
  }
}
