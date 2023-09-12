class WidgetsController < ApplicationController
  include ::Applin::Rails
  skip_forgery_protection

  def back_button_default_page
    send_page nav_page(title: "Default") { empty }
  end

  def back_button_disabled_page
    send_page nav_page(title: "Disabled", start: back_button(actions: [])) {
      column(widgets: [
        button(text: "Back", actions: [pop]),
      ])
    }
  end

  def back_button_missing_page
    send_page nav_page(title: "Missing", start: empty) {
      column(widgets: [
        button(text: "Back", actions: [pop]),
      ])
    }
  end

  def back_button_rpc_ok_page
    send_page nav_page(title: "RPC", start: back_button(actions: [rpc("/ok"), pop])) {
      column(widgets: [
        button(text: "Back without RPC", actions: [pop]),
      ])
    }
  end

  def back_button_rpc_error_page
    send_page nav_page(title: "RPC Error", start: back_button(actions: [rpc("/error"), pop])) {
      column(widgets: [
        button(text: "Back without RPC", actions: [pop]),
      ])
    }
  end

  def back_button_page
    send_page nav_page(title: "Back Button") {
      scroll {
        form(widgets: [
          nav_button(text: "Default", actions: [push("/back_button_default_page")]),
          nav_button(text: "Disabled", actions: [push("/back_button_disabled_page")]),
          nav_button(text: "Missing", actions: [push("/back_button_missing_page")]),
          nav_button(text: "RPC", actions: [push("/back_button_rpc_ok_page")]),
          nav_button(text: "RPC Error", actions: [push("/back_button_rpc_error_page")]),
        ])
      }
    }
  end

  def button_page
    send_page nav_page(title: "Button") {
      scroll {
        form(widgets: [
          button(text: "Button", actions: [push("/button_pressed_page")]),
          button(text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM", actions: [push("/button_pressed_page")]),
          button(text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM", actions: [push("/button_pressed_page")]),
          button(text: "", actions: [push("/button_pressed_page")]),
          button(text: "Disabled Button", actions: []),
          button(text: "Does Nothing", actions: [nothing]),
        ])
      }
    }
  end

  def checkbox_page
    send_page nav_page(title: "Checkbox") {
      scroll {
        form(widgets: [
          checkbox(text: "Checkbox", var_name: "checkbox"),
          checkbox(text: "Initially checked", var_name: "initial-checked", initial_bool: true),
          checkbox(text: "Does RPC on change", var_name: "with-rpc", rpc: "/ok"),
          checkbox(text: "Does RPC on change, but it fails", var_name: "with-bad-rpc", rpc: "/error"),
          checkbox(text: "", var_name: "empty-checkbox"),
          checkbox(text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM", var_name: "mmmm-mmmm-checkbox"),
          checkbox(text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM", var_name: "mmmmmmmm-checkbox"),
        ])
      }
    }
  end

  def error_text_page
    send_page nav_page(title: "ErrorText") {
      scroll {
        form(widgets: [
          error_text("Error Message"),
          error_text(""),
          error_text("MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM"),
          error_text("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"),
        ])
      }
    }
  end

  def form_button_page
    send_page nav_page(title: "Form Button") {
      scroll {
        form(widgets: [
          form_button(text: "Button", actions: [push("/button_pressed_page")]),
          form_button(text: "", actions: [push("/button_pressed_page")]),
          form_button(
            text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM",
            actions: [push("/button_pressed_page")],
          ),
          form_button(
            text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
            actions: [push("/button_pressed_page")],
          ),
          form_button(text: "Disabled", actions: []),
          form_button(text: "Does Nothing", actions: [nothing]),
          form_button(text: "Start Aligned", actions: [push("/button_pressed_page")], align: ALIGN_START),
          form_button(text: "Center Aligned", actions: [push("/button_pressed_page")], align: ALIGN_CENTER),
          form_button(text: "End Aligned", actions: [push("/button_pressed_page")], align: ALIGN_END),
        ])
      }
    }
  end

  def form_section_page
    send_page nav_page(title: "Form Section") {
      scroll {
        form(widgets: [
          form_section(title: "Section", widgets: [text("aaa"), text("aaaa")]),
          form_section(title: "Empty Section", widgets: []),
          form_section(title: "", widgets: [
            text("This section has an empty title."),
            text("Below is an empty section with no title."),
          ]),
          form_section(title: nil, widgets: []),
          form_section(title: "Another Section", widgets: [text("ccc"), text("cccc")]),
        ])
      }
    }
  end

  def grouped_row_table_page
    send_page nav_page(title: "Grouped Row Table") {
      scroll {
        form(widgets: [
          form_section(title: "Single Group", widgets: [
            grouped_row_table(spacing: 8, row_groups: [
              [
                [text("A1"), text("B1"), text("C1")],
                [text("A2"), text("B2"), text("C2")],
              ]
            ]),
          ]),
          form_section(title: "Multiple Groups", widgets: [
            grouped_row_table(spacing: 8, row_groups: [
              [
                [text("A1"), text("B1"), text("C1")],
                [text("A2"), text("B2"), nil],
              ],
              [
                [text("A3"), text("B3"), text("C3")],
                [text("A4"), text("B4")],
              ],
            ]),
          ]),
          form_section(title: "With an empty column", widgets: [
            grouped_row_table(spacing: 8, row_groups: [
              [
                [text("A1"), nil, text("C1")],
                [text("A2"), nil, text("C2")],
              ],
            ]),
          ]),
          form_section(title: "With an empty row", widgets: [
            grouped_row_table(spacing: 8, row_groups: [
              [
                [text("A"), text("B")],
                [nil, nil],
                [text("AAA"), text("BBB")],
              ],
            ]),
          ]),
          form_section(title: "With empty groups", widgets: [
            grouped_row_table(spacing: 8, row_groups: [
              [],
              [
                [text("A1"), text("B1")],
              ],
              [],
              [
                [text("A2"), text("B2")],
              ],
            ]),
          ]),
          form_section(title: "With only an empty cell", widgets: [
            grouped_row_table(spacing: 8, row_groups: [
              [
                [nil],
              ],
            ]),
          ]),
          form_section(title: "With no cells", widgets: [
            grouped_row_table(spacing: 8, row_groups: [
              [
                [],
              ],
            ]),
          ]),
          form_section(title: "With no groups", widgets: [
            grouped_row_table(spacing: 8, row_groups: []),
          ]),
          form_section(title: "Row with a lot of words", widgets: [
            grouped_row_table(spacing: 8, row_groups: [
              [
                [
                  text("A1"),
                  text("MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM"),
                ],
                [text("A2"), text("B2")],
              ],
            ]),
          ]),
          form_section(title: "Row with a long word", widgets: [
            grouped_row_table(spacing: 8, row_groups: [
              [
                [
                  text("A1"),
                  text("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"),
                ],
                [text("A2"), text("B2")],
              ],
            ]),
          ]),
          form_section(title: "Long words", widgets: [
            grouped_row_table(spacing: 8, row_groups: [
              [
                [
                  text("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"),
                  text("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"),
                ],
                [
                  text("A2"),
                  text("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"),
                ],
              ],
            ]),
          ]),
        ])
      }
    }
  end

  def image_page
    send_page nav_page(title: "Image") {
      scroll {
        form(widgets: [
          text("Fit"),
          image(aspect_ratio: 2.0, url: "/placeholder-200x200.png", disposition: DISPOSITION_FIT),
          text("Cover"),
          image(aspect_ratio: 2.0, url: "/placeholder-200x200.png", disposition: DISPOSITION_COVER),
          text("Stretch"),
          image(aspect_ratio: 2.0, url: "/placeholder-200x200.png", disposition: DISPOSITION_STRETCH),
          text("Not found"),
          image(aspect_ratio: 4.0, url: "/nonexistent.png", disposition: DISPOSITION_FIT),
        ])
      }
    }
  end

  def nav_button_page
    send_page nav_page(title: "Nav Button") {
      scroll {
        form(widgets: [
          form_section(title: "Text", widgets: [
            nav_button(text: "Text", actions: [push("/button_pressed_page")]),
            nav_button(
              text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(
              text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(text: "", actions: [push("/button_pressed_page")]),
            nav_button(text: "Disabled", actions: []),
            nav_button(text: "Does Nothing", actions: [nothing]),
            nav_button(text: "With Badge", actions: [push("/button_pressed_page")], badge_text: "2"),
            nav_button(
              text: "With Long Badge",
              actions: [push("/button_pressed_page")],
              badge_text: "123456789",
            ),
            nav_button(
              text: "With Very Long Badge",
              actions: [push("/button_pressed_page")],
              badge_text: "123456789012345678901234567890",
            ),
            nav_button(
              text: "With Empty Badge",
              actions: [push("/button_pressed_page")],
              badge_text: "",
            ),
          ]),
          form_section(title: "Text + Sub-text", widgets: [
            nav_button(text: "Text", sub_text: "Sub-text", actions: [push("/button_pressed_page")]),
            nav_button(
              text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM",
              sub_text: "Sub-text",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(
              text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
              sub_text: "Sub-text",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(
              text: "Text",
              sub_text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(
              text: "Text",
              sub_text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(text: "", sub_text: "", actions: [push("/button_pressed_page")]),
            nav_button(text: "Sub-text is empty", sub_text: "", actions: [push("/button_pressed_page")]),
            nav_button(text: "", sub_text: "Text is empty", actions: [push("/button_pressed_page")]),
            nav_button(text: "Disabled", sub_text: "Sub-text", actions: []),
            nav_button(
              text: "With Badge",
              sub_text: "Sub-text",
              actions: [push("/button_pressed_page")],
              badge_text: "2",
            ),
            nav_button(
              text: "With Long Badge",
              sub_text: "Sub-text",
              actions: [push("/button_pressed_page")],
              badge_text: "123456789",
            ),
          ]),
          form_section(title: "Image + Text", widgets: [
            nav_button(
              text: "Text",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(text: "Disabled", photo_url: "/placeholder-200x200.png", actions: []),
            nav_button(
              text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(
              text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(
              text: "",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(
              text: "Image not found",
              photo_url: "/nonexistent.png",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(
              text: "Not an image",
              photo_url: "/healthz",
              actions: [push("/button_pressed_page")],
            ),
            # TODO: Use a URL that never returns a result.
            nav_button(
              text: "With Badge",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
              badge_text: "2",
            ),
            nav_button(
              text: "With Long Badge",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
              badge_text: "123456789",
            ),
          ]),
          form_section(title: "Image + Text + Sub-text", widgets: [
            nav_button(
              text: "Text",
              sub_text: "Sub-text",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
            ),
            nav_button(text: "Disabled", sub_text: "Sub-text", photo_url: "/placeholder-200x200.png", actions: []),
            nav_button(
              text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM",
              sub_text: "Sub-text",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
              ),
            nav_button(
              text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
              sub_text: "Sub-text",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
              ),
            nav_button(
              text: "Text",
              sub_text: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
              ),
            nav_button(
              text: "Text",
              sub_text: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
              ),
            nav_button(
              text: "",
              sub_text: "",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
              ),
            nav_button(
              text: "Sub-text is empty",
              sub_text: "",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
              ),
            nav_button(
              text: "",
              sub_text: "Text is empty",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
              ),
            nav_button(
              text: "With Badge",
              sub_text: "Sub-text",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
              badge_text: "2",
            ),
            nav_button(
              text: "With Long Badge",
              sub_text: "Sub-text",
              photo_url: "/placeholder-200x200.png",
              actions: [push("/button_pressed_page")],
              badge_text: "123456789",
            ),
          ]),
        ])
      }
    }
  end

  def textfield_page
    send_page nav_page(title: "Text Field") {
      scroll {
        form(widgets: [
          text("Without a label:"),
          textfield(var_name: "text1"),
          textfield(var_name: "label1", label: "With a label"),
          textfield(var_name: "error1", label: "With an error", error: "An error message."),
          textfield(var_name: "prefilled1", label: "Pre-filled", initial_string: "initial content"),
          textfield(var_name: "nums1", label: "Numbers only", allow: ALLOW_NUMBERS),
          textfield(var_name: "ascii1", label: "ASCII only", allow: ALLOW_ASCII),
          textfield(var_name: "tel1", label: "Tel", allow: ALLOW_TEL),
          textfield(var_name: "email1", label: "Email", allow: ALLOW_EMAIL),
          textfield(var_name: "names1", label: "Auto-capitalize for names", auto_capitalize: AUTO_CAPITALIZE_NAMES),
          textfield(
            var_name: "sentences1",
            label: "Auto-capitalize for sentences",
            auto_capitalize: AUTO_CAPITALIZE_SENTENCES,
          ),
          textfield(var_name: "minchars1", label: "3 chars required", min_chars: 3),
          textfield(var_name: "maxchars1", label: "5 chars max", max_chars: 5),
          textfield(var_name: "maxlines1", label: "Single-line", max_lines: 1),
          textfield(var_name: "maxlines2", label: "Three lines max", max_lines: 3),
          textfield(
            var_name: "mmms",
            label: "Pre-filled with many words",
            initial_string: "MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM",
            ),
          textfield(
            var_name: "mmmmm",
            label: "Pre-filled with a long word",
            initial_string: "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
            ),
        ])
      }
    }
  end

  def text_page
    send_page nav_page(title: "Text") {
      scroll {
        form(widgets: [
          text("Text"),
          text(""),
          text("MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM"),
          text("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"),
        ])
      }
    }
  end
end
