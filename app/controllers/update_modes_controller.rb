class UpdateModesController < ApplicationController
  include ::Applin::Rails

  #        Ok(NavPage::new(
  #             "Inert",
  #             Column::new((
  #                 Text::new(format!(
  #                     "epoch seconds: {}",
  #                     state_clone.clock_epoch_seconds.read(rebuilder)
  #                 )),
  #                 Text::new("The home page has poll=10, so you will see this page update when the app polls."),
  #             )),
  #         ))
  def inert_page
    send_page nav_page(title: "Inert") {
      scroll {
        form(widgets: [
          text("This page updates only when you load it."),
          text(Time.new.strftime("%Y-%m-%d %H:%M:%S")),
        ])
      }
    }
  end

  def polled_page
    send_page nav_page(title: "Inert", poll_seconds: 2) {
      scroll {
        form(widgets: [
          text("This page updates automatically every 2 seconds."),
          text(Time.new.strftime("%Y-%m-%d %H:%M:%S")),
        ])
      }
    }
  end
end
