class ContactsController < ApplicationController

	

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			redirect_to root_path, notice: "Merci, nous avons pris en compte votre demande."
		else
			render :new
		end
	end

	private

	def contact_params
		params.require(:contact).permit(:name, :type, :phone, :description, :mail)
	end


end
