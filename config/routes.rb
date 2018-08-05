Rails.application.routes.draw do
  resources :news_sources
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
    end
end
