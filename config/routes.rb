# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get 'home/index'
  
  resource :contacts, only: [:new, :create], path_names: {:new => ''} #only это хэш, new и create то что хотим оставить
                                            #delete, put, update  не будут создаваться
                                            #эти маршруты routes
  resources :articles

end
