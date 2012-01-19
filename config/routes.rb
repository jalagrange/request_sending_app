RequestSendingApp::Application.routes.draw do
  resources :people do
    get 'post_test', :on => :collection
  end

  root :to => "people#index"
  
  match ':controller(/:action(/:id(.:format)))'
end
