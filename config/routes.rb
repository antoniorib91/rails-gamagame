Rails.application.routes.draw do
  
  root to: 'gamagame#start'

  get '/', to: 'gamagame#start'
  post 'create', to: 'gamagame#create', as: :create_game

  scope ':token' do
    get 'questions', to: 'gamagame_questions#edit', as: :questions
    get 'score', to: 'gamagame#score'
    put 'questions/:id', to: 'gamagame_questions#update', as: :questions_update
    patch 'questions/:id', to: 'gamagame_questions#update'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
