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
    resources :course_proposals
    resources :courses
    resources :locations
    resources :pages
    resources :menus
    resources :menu_pages
    resources :sites
    post 'course_proposals/:id/reject', to: "course_proposals#reject",:as => "reject_course_proposal_admin_course_proposal"
    post 'course_proposals/:id/defer', to: "course_proposals#defer",:as => "defer_course_proposal_admin_course_proposal"
    post 'course_proposals/:id/approve', to: "course_proposals#approve",:as => "approve_course_proposal_admin_course_proposal"

    
    root to: "courses#index"
  end
  resources :attachments
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  root :to => 'courses#index'

end
