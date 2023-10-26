json.page Applin::nav_page(title: "Image") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::text("Fit"),
      Applin::image(
        aspect_ratio: 4.0,
        url: "/placeholder-200x200.png",
        disposition: Applin::DISPOSITION_FIT,
      ),
      Applin::text("Cover"),
      Applin::image(
        aspect_ratio: 4.0,
        url: "/placeholder-200x200.png",
        disposition: Applin::DISPOSITION_COVER,
      ),
      Applin::text("Stretch"),
      Applin::image(
        aspect_ratio: 4.0,
        url: "/placeholder-200x200.png",
        disposition: Applin::DISPOSITION_STRETCH,
      ),
      Applin::text("Not found"),
      Applin::image(
        aspect_ratio: 4.0,
        url: "/nonexistent",
        disposition: Applin::DISPOSITION_FIT,
      ),
    ])
  }
}
