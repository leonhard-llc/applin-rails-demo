json.page Applin::nav_page(title: "Applin Rails Demo", poll_seconds: 30) {
  Applin::scroll {
    Applin::column(widgets: [
      Applin::form_section(title: "About", widgets: [
        Applin::text("This app demonstrates how to use the applin-rails library to make a mobile app.\n\nThe demo server runs at\nhttps://rails-demo.applin.dev/."),
        Applin::nav_button(
          text: "Source Code of this App",
          sub_text: "github.com/leonhard-llc/applin-rails-demo",
          actions: [Applin::launch_url("https://github.com/leonhard-llc/applin-rails-demo")],
          ),
      ]),
      Applin::form_section(title: "Pages", widgets: [
        Applin::nav_button(text: "Nav Page", actions: [Applin::push("/nav_page_page")]),
        Applin::nav_button(text: "Plain Page", actions: [Applin::push("/plain_page_page")]),
      ]),
      Applin::form_section(title: "Widgets", widgets: [
        Applin::nav_button(text: "Back Button", actions: [Applin::push("/back_button_page")]),
        Applin::nav_button(text: "Button", actions: [Applin::push("/button_page")]),
        Applin::nav_button(text: "Checkbox", actions: [Applin::push("/checkbox_page")]),
        Applin::nav_button(text: "Error Text", actions: [Applin::push("/error_text_page")]),
        Applin::nav_button(text: "Form Button", actions: [Applin::push("/form_button_page")]),
        Applin::nav_button(text: "Form Section", actions: [Applin::push("/form_section_page")]),
        Applin::nav_button(text: "Grouped Row Table", actions: [Applin::push("/grouped_row_table_page")]),
        Applin::nav_button(text: "Image", actions: [Applin::push("/image_page")]),
        Applin::nav_button(text: "Nav Button", actions: [Applin::push("/nav_button_page")]),
        Applin::nav_button(text: "Text", actions: [Applin::push("/text_page")]),
        Applin::nav_button(text: "Textfield", actions: [Applin::push("/textfield_page")]),
      ]),
      Applin::form_section(title: "Page Update Modes", widgets: [
        Applin::nav_button(text: "Inert", actions: [Applin::push("/inert_page")]),
        Applin::nav_button(text: "Polled", actions: [Applin::push("/polled_page")]),
      # TODO: Implement streaming page updates.
      # Applin::nav_button(text: "stream_page", actions: [Applin::push("/stream_page")]),
      ]),
      Applin::form_section(title: "Error Pages", widgets: [
        Applin::nav_button(text: "App Error", actions: [Applin::push("/applin_app_error")]),
        Applin::nav_button(text: "Page Not Loaded", actions: [Applin::push("/applin_page_not_loaded")]),
        Applin::nav_button(text: "Network Error", actions: [Applin::push("/applin_network_error")]),
        Applin::nav_button(text: "Server Error", actions: [Applin::push("/server_error")]),
        Applin::nav_button(text: "State Load Error", actions: [Applin::push("/applin_state_load_error")]),
        Applin::nav_button(text: "User Error", actions: [Applin::push("/user_error")]),
        Applin::nav_button(text: "Error Details", actions: [Applin::push("/error_details")]),
      ]),
      Applin::form_section(title: "Example Pages", widgets: [
        Applin::nav_button(text: "New Account", actions: [Applin::push("/new_account")]),
      ]),
    # Applin::form_section(title: "Photos", widgets: [
    #   Applin::nav_button(text: "Choose Photo", actions: [Applin::push("/upload-photo")]),
    #   Applin::nav_button(text: "Take Photo", actions: [Applin::push("/take-photo")]),
    #   Applin::nav_button(text: "View Photo", actions: [Applin::push("/view_photo_page")]),
    # ]),
    # Applin::form_section(title: "Vars", widgets: [
    #   Applin::nav_button(text: "Check Vars", actions: [Applin::push("/check_vars_page")]),
    # ]),
    ])
  }
}
