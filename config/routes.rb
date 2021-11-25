Rails.application.routes.draw do
  root to:  'emails#index'
  devise_for :users
  resources :emails, except: [:new, :edit]
  resources :tasks, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 

# root   GET    /                        emails#index
# emails GET    /emails(.:format)        emails#index
#        POST   /emails(.:format)        emails#create
#  email GET    /emails/:id(.:format)    emails#show
#        PATCH  /emails/:id(.:format)    emails#update
#        PUT    /emails/:id(.:format)    emails#update
#        DELETE /emails/:id(.:format)    emails#destroy