Rails.application.routes.draw do

  scope "(:locale)", locale: /en|fr/ do

    root to: 'application#home'

    get 'getstarted/thankyou'

    get 'getstarted/starter' => redirect("https://starterplan.carrd.co/")
    get 'getstarted/basic_confirm', to: 'getstarted#basic_confirm'

    get 'getstarted/standard'=> redirect("https://standardplan.carrd.co/")
    get 'getstarted/intermediate_confirm', to: 'getstarted#intermediate_confirm'

    get 'getstarted/plus'=> redirect("https://plusplan.carrd.co/")
    get 'getstarted/pro_confirm', to: 'getstarted#pro_confirm'

    get '/faq', to: 'pages#faq'
    get '/blog', to: 'pages#blog'
    get '/jobs', to: 'pages#jobs'
    get '/terms', to: 'pages#terms'

  end

end
