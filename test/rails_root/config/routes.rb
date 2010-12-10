SortableTable::Application.routes.draw do
  resources :users do
    get :members, :on => :collection
    get :show, :on => :collection
  end

  namespace :admin do
    resources :users
  end
end
