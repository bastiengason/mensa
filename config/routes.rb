Rails.application.routes.draw do
  get 'getstarted/thankyou'

  get 'getstarted/basic' => redirect("https://basicplan.carrd.co/") # Recopie ca pour les deux autres plans
  get 'getstarted/basic_confirm', to: 'getstarted#basic_confirm'

  get 'getstarted/intermediate', to: 'getstarted#intermediate'
  get 'getstarted/intermediate_confirm', to: 'getstarted#intermediate_confirm'

  get 'getstarted/pro', to: 'getstarted#pro'
  get 'getstarted/pro_confirm', to: 'getstarted#pro_confirm'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#home'
end
