json.page Applin::nav_page(title: "Error Text") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::error_text("Error Message"),
      Applin::error_text("MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM"),
      Applin::error_text("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"),
    ])
  }
}
