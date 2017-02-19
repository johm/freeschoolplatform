Rails.application.routes.draw do
  resources :course_proposal_questions
  resources :course_proposals
  resources :course_course_series
  resources :course_series
  resources :pages
  resources :sites
  resources :course_registrations
  resources :locations
  resources :course_sessions
  resources :courses
  namespace :admin do
    resources :users
    resources :sites
    resources :courses
    resources :locations
    resources :pages
    root to: "courses#index"


  end
  resources :attachments
  devise_for :users
  root :to => 'courses#index'

end
