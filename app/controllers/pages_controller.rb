require "applin"

class PagesController < ApplicationController
  protect_from_forgery with: :exception, if: -> { !request.format.applin? }
end
