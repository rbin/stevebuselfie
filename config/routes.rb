Stevebuselfy::Application.routes.draw do
	
  resources :selfies, :only => [:index, :show]

  root 'selfies#index'

  post '/inbound' => 'selfies#inbound'

end
