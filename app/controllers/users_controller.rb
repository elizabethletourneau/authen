class UsersController < ApplicationController
    # before_filter :find_user, only: [:show, :edit, :update, :destroy]
    before_action :require_user, only: [:index, :show]
    before_action :require_editor, only: [:edit]
    before_action :require_admin, only: [:destroy]

    def index
       @users = User.all
    end

    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:success] = "Successfully Created a User"
            redirect_to @user
        else
            flash[:warning] = 'Invalid Sign Up'
            redirect_to '/signup'
        end
    end

    def edit
        @user = User.find(params[:id])
    end


    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          redirect_to @user
        else

          render "edit"
        end
    end



    def destroy
        @user.destroy
        redirect_to user_index_path
    end

    private
    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :email, :password)
    end

    def find_user
        @user = User.find(params[:id])
    end
end