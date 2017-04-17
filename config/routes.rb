Rails.application.routes.draw do
  resources :course_proposals
  resources :course_series
  resources :pages
  resources :course_registrations
  resources :locations
  resources :course_sessions
  resources :courses 
  get "course_calendar/(:start_date)", to: "courses#calendar"
  get 'course_archive', to: "courses#index", :upcoming=>true
  namespace :admin do
    resources :users
    resources :course_proposals
    resources :course_proposal_questions
    resources :course_proposal_question_answers
    resources :courses
    resources :course_sessions
    resources :course_series
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

  root :to => 'pages#homepage'

end
