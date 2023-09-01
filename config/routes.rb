Rails.application.routes.draw do
  # https://guides.rubyonrails.org/routing.html
  root "home#index" # Requests for "/" go to HomeController.index.
  get '/healthz', to: proc { [200, {}, ['success']] }
end
