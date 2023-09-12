class PagesController < ApplicationController
  include ::Applin::Rails
  skip_forgery_protection

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
