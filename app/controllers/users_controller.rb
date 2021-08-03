class UsersController < ApplicationController

    def show
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        current_user.update(params[:user])
        redirect_to current_user
    end

end
