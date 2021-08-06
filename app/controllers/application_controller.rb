class ApplicationController < ActionController::Base

    def devise_current_user
        @devise_current_user ||= warden.authenticate(scope: :user)
      end
      
    def current_user
        if params[:user_id].blank?
            devise_current_user
        else
            User.find(params[:user_id])
        end   
    end

end
