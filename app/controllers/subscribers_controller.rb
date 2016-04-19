class SubscribersController < ApplicationController

	def create
		email = params[:email]
		@subscriber = SubscribeToNewsletter.new
		@subscriber.call(email)
		flash[:notice] = "Successful Registration"
		redirect_to :back
	end
end