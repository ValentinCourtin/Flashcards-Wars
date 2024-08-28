Rails.application.routes.draw do
  resources :subcategories, only: [:index, :show] do
    resources :questions, only: [:show]
  end

  resources :trainings, only: [:index, :show] do
    get 'play' => 'trainings#play'
    get 'finished' => 'trainings#finished'
    get 'resolve' => 'trainings#resolve'
    get 'replay' => 'trainings#replay'
  end

  resources :duels, only: [:index, :show, :create] do
    get 'duelplay' => 'duels#duelplay'
    get 'duelfinished' => 'duels#duelfinished'
    get 'duelresolve' => 'duels#duelresolve'
    collection do
      post :choice
      get :opponent_choice
    end
  end

  resources :shops, only: [:index] do
    collection do
      post :choice
      get :buy
      get :player_choice
      get :wheel
      # get :update_carousel
    end
  end

  devise_for :users

  resources :users, only: [] do
    collection do
      get :profil
    end
  end

  get 'users/rank', to: "users#rank"
  # get 'users/profil', to: 'users#profil'


  resources :inventories, only: [:edit, :update, :delete] do
    collection do
      get :myitems
    end
  end


  # creation de routes pour USERS/RANK
  # get 'rank', to: "users#rank"

  # creation de routes pour USERS/show
  get "home", to: "users#show"
  root to: "users#show"
  get "welcome", to: "pages#welcome"


  get "up" => "rails/health#show", as: :rails_health_check
end
