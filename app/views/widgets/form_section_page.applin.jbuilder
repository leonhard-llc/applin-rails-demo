json.page Applin::nav_page(title: "Form Section") {
  Applin::scroll {
    Applin::column(widgets: [
      Applin::form_section(title: "Section 1", widgets: [Applin::text("text"), Applin::text("text")]),
      Applin::form_section(title: "Section 2", widgets: [Applin::text("text"), Applin::text("text")]),
    ])
  }
}
