class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken

        before_action :configure_permitted_parameters, if: :devise_controller?

        protected
        # Configuração que permite atualizar ou não o user
        def configure_permitted_parameters
                devise_parameter_sanitizer.permit(:account_update, keys: [:name, :nickname, :email, :username])
        end
end
