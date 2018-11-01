Rails.application.routes.draw do
    root to: 'application#home'

    get '/faq', to: 'pages#faq'
    get '/blog', to: 'pages#blog'
    get '/jobs', to: 'pages#jobs'
    get '/terms', to: 'pages#terms'
    get '/pricing', to: 'pages#pricing'
    get '/how-it-works', to: 'pages#how_it_works'

    get 'getstarted/creative', to: 'getstarted#creative'
    get 'getstarted/pro', to: 'getstarted#pro'
    get 'getstarted/thankyou', to: 'getstarted#thankyou'
    get '/getstarted', to: 'getstarted#getstarted'
end
