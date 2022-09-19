Rails.application.routes.draw do

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
    resources :end_users, only: [:index, :show, :edit, :update, :destroy]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :posts, only: [:index, :show, :edit, :update, :destroy]


     get '/search', to: 'searches#search'

  end


  devise_for :end_users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}




 scope module: :public do
  root to: 'homes#top'
  get "/home/about" => "homes#about"


  get 'end_users/unsubscribe' => 'end_users#unsubscribe', as: 'confirm_unsubscribe'
  patch 'end_users/withdraw' => 'end_users#withdraw', as: 'withdraw_end_user'

  #post 'end_users/guest_sign_in', to: 'end_users/sessions#guest_sign_in'
  post 'end_users/guest_sign_in'  => 'end_users/sessions#guest_sign_in'

  resources :end_users, only: [:index, :show, :edit,:update, :destroy] do
  resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end


  resources :posts, only: [:index,:show,:edit,:create,:destroy,:update] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end


  get '/search', to: 'searches#search'

end
end







