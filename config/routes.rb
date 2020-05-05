Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '*path' => 'options_request#preflight', via: :options

  namespace "api" do
    namespace "v1" do
      resources :restaurants, param: :restaurant_id, path: "/restaurants"
    end
  end
end
