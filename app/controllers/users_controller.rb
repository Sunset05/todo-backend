class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
        #authorized
        render json: {user: current_user, todos: current_user.todos}
    end

    def create
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            @token = JWT.encode({ user_id: @user.id }, "yerr")
            render json: { user: @user, todos: @user.todos, token: @token }, status: :created 
        else
            render json: { errors: @user.errors.full_messages }, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit :username, :password
    end
end
