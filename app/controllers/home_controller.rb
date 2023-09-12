class HomeController < ApplicationController
  include ::Applin::Rails
  skip_forgery_protection

  #   def NNNNNNN
  #     send_page nav_page(title: "NNNNN") {
  #       scroll {
  #         column(widgets: [
  #           form_section(title: "NNNNN", widgets: [
  #             nav_button(text: "NNNNNN", actions: [push("/NNNNN")]),
  #           ]),
  #         ])
  #       }
  #     }
  #   end
  def index
    send_page nav_page(title: "Applin Rails Demo", poll_seconds: 30) {
      scroll {
        column(widgets: [
          form_section(title: "About", widgets: [
            text("This app demonstrates how to use the applin-rails library to make a mobile app.\n\nThe demo server runs at\nhttps://rails-demo.applin.dev/."),
            nav_button(
              text: "Source Code of this App",
              sub_text: "github.com/leonhard-llc/applin-rails-demo",
              actions: [launch_url("https://github.com/leonhard-llc/applin-rails-demo")],
            ),
          ]),
          form_section(title: "Pages", widgets: [
            nav_button(text: "Nav Page", actions: [push("/nav_page_page")]),
            nav_button(text: "Plain Page", actions: [push("/plain_page_page")]),
          ]),
          form_section(title: "Widgets", widgets: [
            nav_button(text: "Back Button", actions: [push("/back_button_page")]),
            nav_button(text: "Button", actions: [push("/button_page")]),
            nav_button(text: "Checkbox", actions: [push("/checkbox_page")]),
            nav_button(text: "Error Text", actions: [push("/error_text_page")]),
            nav_button(text: "Form Button", actions: [push("/form_button_page")]),
            nav_button(text: "Form Section", actions: [push("/form_section_page")]),
            nav_button(text: "Grouped Row Table", actions: [push("/grouped_row_table_page")]),
            nav_button(text: "Image", actions: [push("/image_page")]),
            nav_button(text: "Nav Button", actions: [push("/nav_button_page")]),
            nav_button(text: "Text", actions: [push("/text_page")]),
            nav_button(text: "Textfield", actions: [push("/textfield_page")]),
          ]),
          form_section(title: "Page Update Modes", widgets: [
            nav_button(text: "Inert", actions: [push("/inert_page")]),
            nav_button(text: "Polled", actions: [push("/polled_page")]),
          ]),
          form_section(title: "Error Pages", widgets: [
            nav_button(text: "App Error", actions: [push("/applin_app_error")]),
            nav_button(text: "Page Not Loaded", actions: [push("/applin_page_not_loaded")]),
            nav_button(text: "Network Error", actions: [push("/applin_network_error")]),
            nav_button(text: "Server Error", actions: [push("/applin_server_error")]),
            nav_button(text: "State Load Error", actions: [push("/applin_state_load_error")]),
            nav_button(text: "User Error", actions: [push("/applin_user_error")]),
            nav_button(text: "Error Details", actions: [push("/error_details")]),
          ]),
        # form_section(title: "Photos", widgets: [
        #   nav_button(text: "Choose Photo", actions: [push("/upload-photo")]),
        #   nav_button(text: "Take Photo", actions: [push("/take-photo")]),
        #   nav_button(text: "View Photo", actions: [push("/view_photo_page")]),
        # ]),
        # form_section(title: "Update Modes", widgets: [
        #   nav_button(text: "Inert", actions: [push("/inert_page")]),
        #   nav_button(text: "Poll", actions: [push("/poll_page")]),
        # # TODO: Implement streaming page updates.
        # # nav_button(text: "stream_page", actions: [push("/stream_page")]),
        # ]),
        # form_section(title: "Vars", widgets: [
        #   nav_button(text: "Check Vars", actions: [push("/check_vars_page")]),
        # ]),
        ])
      }
    }
  end

  def button_pressed_page
    send_page nav_page(title: "Button Pressed") { empty }
  end
end
