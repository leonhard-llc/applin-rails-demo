json.page Applin::nav_page(title: "Nav Page") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::text("Hello"),
      Applin::text("Hello2"),
    ])
  }
}
