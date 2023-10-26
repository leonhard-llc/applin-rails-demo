json.page Applin::nav_page(title: "Nav Button") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::nav_button(text: "Page 1", actions: [Applin::push("/p1")]),
      Applin::nav_button(
        text: "Page 2",
        sub_text: "A very nice page",
        actions: [Applin::push("/p2")],
      ),
      Applin::nav_button(text: "Page 3", badge_text: "5", actions: [Applin::push("/p3")]),
      Applin::nav_button(
        text: "Page 4",
        badge_text: "123456789012345678901234567890",
        actions: [Applin::push("/p4")],
      ),
      Applin::nav_button(
        text: "Page 5",
        photo_url: "/placeholder-200x200.png",
        actions: [Applin::push("/p5")],
      ),
      Applin::nav_button(
        text: "Page 6",
        photo_url: "/nonexistent.png",
        actions: [Applin::push("/p6")],
      ),
      Applin::nav_button(text: "Disabled", actions: []),
      Applin::nav_button(
        text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM",
        actions: [Applin::push("/mmmm_mmmm")],
      ),
      Applin::nav_button(
        text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
        actions: [Applin::push("/mmmmmmmm")],
      ),
    ])
  }
}
