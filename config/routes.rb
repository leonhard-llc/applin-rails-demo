Rails.application.routes.draw do
  # https://guides.rubyonrails.org/routing.html
  get "/healthz", to: proc { [200, {}, ["success"]] }
  post "/ok", to: proc { [200, {}, ["success"]] }
  post "/error", to: proc { [400, {}, ["error1"]] }

  root "home#index" # Requests for "/" go to HomeController.index.
  get "/button_pressed_page", to: "home#button_pressed_page"

  get "/alert_modal_page", to: "pages#alert_modal_page"
  get "/draw_modal_page", to: "pages#draw_modal_page"
  get "/nav_page_page", to: "pages#nav_page_page"
  get "/plain_page_page", to: "pages#plain_page_page"

  get "/back_button_default_page", to: "widgets#back_button_default_page"
  get "/back_button_disabled_page", to: "widgets#back_button_disabled_page"
  get "/back_button_missing_page", to: "widgets#back_button_missing_page"
  get "/back_button_rpc_ok_page", to: "widgets#back_button_rpc_ok_page"
  get "/back_button_rpc_error_page", to: "widgets#back_button_rpc_error_page"
  get "/back_button_page", to: "widgets#back_button_page"
  get "/button_page", to: "widgets#button_page"
  get "/checkbox_page", to: "widgets#checkbox_page"
  get "/error_text_page", to: "widgets#error_text_page"
  get "/form_button_page", to: "widgets#form_button_page"
  get "/form_section_page", to: "widgets#form_section_page"
  get "/grouped_row_table_page", to: "widgets#grouped_row_table_page"
  get "/image_page", to: "widgets#image_page"
  get "/nav_button_page", to: "widgets#nav_button_page"
  get "/textfield_page", to: "widgets#textfield_page"
  get "/text_page", to: "widgets#text_page"
  # get "/NNNNN", to: "widgets#NNNNNN"
end
