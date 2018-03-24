Rails.application.routes.draw do
  root 'presentations#index'

  get 'presentations/upload'

  resources 'presentations', only: :upload do
    collection { post :import }
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
