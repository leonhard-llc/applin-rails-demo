json.page Applin::nav_page(
  title: "RPC",
  start: Applin::back_button(actions: [Applin::rpc(url: "/ok"), Applin::pop]),
) {
  Applin::column(widgets: [
    Applin::button(text: "Back without RPC", actions: [Applin::pop]),
  ])
}
