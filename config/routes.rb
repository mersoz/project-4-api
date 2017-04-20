Rails.application.routes.draw do
  scope :api do
    resources :listings
    resources :comments
    resources :posts
    resources :companies
    resources :users

    get 'indeed_listings', to: 'indeed#indeed_listings'
    get 'job_stats', to: 'glassdoor#job_stats'
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
