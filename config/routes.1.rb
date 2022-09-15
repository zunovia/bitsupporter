Rails.application.routes.draw do

devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

namespace :admin do
  get 'top' => 'homes#top', as: 'top'

  resources :end_users, only: [:index, :show, :edit, :update, :destroy] do
  resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end

  resources :posts, only: [:index,:show,:edit,:create,:destroy,:update] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  resources :genres, only: [:index, :create, :edit, :update]
  get '/search', to: 'searches#search'

end



devise_for :end_users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

 scope module: :public do
  root to: 'homes#top'
  get 'end_users/index' => 'end_users#index', as: 'index'
  get 'end_users/:id' => 'end_users#show', as: 'user_page'
  get 'end_users/information/edit/:id' => 'end_users#edit', as: 'edit_information'
  patch 'end_users/information' => 'end_users#update', as: 'update_information'
  get 'end_users/unsubscribe' => 'end_users#unsubscribe', as: 'confirm_unsubscribe'
  put 'end_users/information' => 'end_users#update'
  patch 'end_users/withdraw' => 'end_users#withdraw', as: 'withdraw_end_user'


  resources :posts, only: [:index,:show,:edit,:create,:destroy,:update] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  resources :end_users do
  resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
 end

  get '/search', to: 'searches#search'

  end
end



