require "applin"
require "applin/rails"

class UpdateModesController < ApplicationController
  include ::Applin
  include ::Applin::Rails
  skip_forgery_protection

  def inert_page
    send_page nav_page(title: "Inert") {
      scroll {
        form(widgets: [
          text("This page updates when you load or refresh it (pull to refresh)."),
          text(Time.new.strftime("%Y-%m-%d %H:%M:%S")),
        ])
      }
    }
  end

  def polled_page
    send_page nav_page(title: "Polled", poll_seconds: 2) {
      scroll {
        form(widgets: [
          text("This page updates automatically every 2 seconds."),
          text(Time.new.strftime("%Y-%m-%d %H:%M:%S")),
        ])
      }
    }
  end
end
