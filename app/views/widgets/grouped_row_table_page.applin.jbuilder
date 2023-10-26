json.page Applin::nav_page(title: "Grouped Row Table") {
  Applin::scroll {
    Applin::form(widgets: [
      Applin::form_section(title: "Two Groups", widgets: [
        Applin::grouped_row_table(spacing: 8, row_groups: [
          [
            [Applin::text("A1"), Applin::text("B1"), Applin::text("C1")],
            [Applin::text("A2"), Applin::text("B2"), nil],
          ],
          [
            [Applin::text("One"), nil, Applin::text("Three")],
          ],
        ]),
      ]),
      Applin::form_section(title: "Long text", widgets: [
        Applin::grouped_row_table(spacing: 8, row_groups: [
          [
            [
              Applin::text("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"),
              Applin::text("MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM"),
            ],
            [Applin::text("A2"), Applin::text("B2")],
          ],
        ]),
      ]),
    ])
  }
}
