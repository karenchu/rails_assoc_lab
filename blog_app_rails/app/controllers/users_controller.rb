class UsersController < ApplicationController
	before_action :logged_in?, only: [:show]
	
	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = current_user.articles.create
		redirect_to user_path(@user.id)
	end

	def show
		current_user.articles
	end

	def edit
	end

	private

		def user_params
			params.require(:user).permit(:email, :password, :password_confirmation)
		end

end
