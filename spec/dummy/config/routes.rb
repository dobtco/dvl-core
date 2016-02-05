Rails.application.routes.draw do
  root to: 'home#index'

  delete 'delete', to: proc { [200, {}, ['']] }

  scope controller: :home do
    get '*actual_action_name', action: 'delegate'
  end
end
