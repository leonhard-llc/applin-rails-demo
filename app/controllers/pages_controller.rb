class PagesController < ApplicationController
  include ::Applin::Rails

  def alert_modal_page
    send_page alert_modal(title: "Alert Modal", modal_buttons:[
      modal_button(text:"Button", actions:[push("/button_pressed_page")]),
      modal_button(text:"MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM", actions:[push("/button_pressed_page")]),
      modal_button(text:"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM", actions:[push("/button_pressed_page")]),
      modal_button(text:"Destructive Button", is_destructive: true, actions:[push("/button_pressed_page")]),
      modal_button(text:"Disabled Button", actions:[]),
      modal_button(text:"Button with RPC", actions:[rpc("/ok")]),
      modal_button(text:"Button with RPC that fails", actions:[rpc("/error")]),
      modal_button(text:"Button", actions:[push("/button_pressed_page")]),
      modal_button(text:"Show Drawer Modal", actions:[push("/draw_modal_page")]),
      ok_modal_button,
      cancel_modal_button,
    ])
  end

  def draw_modal_page
    send_page drawer_modal(title: "Drawer Modal", modal_buttons:[
      modal_button(text:"Button", actions:[push("/button_pressed_page")]),
      modal_button(text:"MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM", actions:[push("/button_pressed_page")]),
      modal_button(text:"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM", actions:[push("/button_pressed_page")]),
      modal_button(text:"Destructive Button", is_destructive: true, actions:[push("/button_pressed_page")]),
      modal_button(text:"Disabled Button", actions:[]),
      modal_button(text:"Button with RPC", actions:[rpc("/ok")]),
      modal_button(text:"Button with RPC that fails", actions:[rpc("/error")]),
      modal_button(text:"Button", actions:[push("/button_pressed_page")]),
      modal_button(text:"Show Alert Modal", actions:[push("/alert_modal_page")]),
      ok_modal_button,
      cancel_modal_button,
    ])
  end

  def nav_page_page
    send_page nav_page(title: "Nav Page") {
      scroll {
        form(widgets: [
          text("Hello"),
          text("Hello2"),
        ])
      }
    }
  end

  def plain_page_page
    send_page plain_page(title: "Plain Page") {
      scroll {
        form(widgets: [
          text("Hello"),
          text("Hello2"),
          button(text: "Back", actions: [pop]),
        ])
      }
    }
  end
end
