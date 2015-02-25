Rails.application.routes.draw do
  root to: 'home#index'

  scope controller: :home do
    get '*actual_action_name', action: 'delegate'
  end
end
