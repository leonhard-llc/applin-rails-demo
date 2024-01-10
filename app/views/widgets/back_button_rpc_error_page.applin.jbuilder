json.page Applin::nav_page(
  title: "RPC Error",
  start: Applin::back_button(actions: [Applin::rpc(url: "/user_error"), Applin::pop]),
) {
  Applin::column(widgets: [
    Applin::button(text: "Back without RPC", actions: [Applin::pop]),
  ])
}
