Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]

  mount Rapidfire::Engine => "/rapidfire"
  root to: "rapidfire/answer_groups#new", question_group_id: 1
end
