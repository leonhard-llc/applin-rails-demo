class HomeController < ApplicationController
  include ::Applin::Rails
  @@count = 0

  def index
    send_page plain_page {
      scroll {
        column(widgets: [
          form_section(widgets: [
            text("Hello World!"),
            text("Page views since server start: #{self.next_count}"),
            button(text: "Poll", actions: [poll])
          ])
        ])
      }
    }
  end

  private

  def next_count
    @@count += 1
  end
end
