require "applin"

class WidgetsController < ApplicationController
  protect_from_forgery with: :exception, if: -> { !request.format.applin? }
end
