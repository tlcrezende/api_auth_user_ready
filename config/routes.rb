require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    # Devise
    mount_devise_token_auth_for 'User', at: 'auth'

    #scope de versionamento da api
    # o constrains do scope vai aceitar uma classe, e se nessa classe tem um método chamado match? ele vai automaticamente chamar esse método
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do 
      resources :articles
    end
    
    # Para avançar no versionamento, passar a v1 para false e incluir a v2 e assim vai.
    # scope module: :v2, constrains: ApiConstraints.new(version: 1, default: true) do 
    #   resources :articles
    # end
  end
end
