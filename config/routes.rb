Rails.application.routes.draw do
  get "/api/docs", :to => 'swagger#index', :as => 'api_swagger'
end

