Rails.application.routes.draw do
 root 'pages#index'
 post "/send_search", to: "pages#search"
end
