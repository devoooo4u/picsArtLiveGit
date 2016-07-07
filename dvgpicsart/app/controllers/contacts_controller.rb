class ContactsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new
		@contact.name = params[:_fullName]
	    @contact.email = params[:_email]
		@contact.message = params[:_message]
		if @contact.save
			flash.now[:notice] = 'Thanks for messaging me !'
	    else
		    flash.now[:error] = "Oops! This message can not sent"
		end
		#redirect_to @concat
		render template: "contacts/contact", :layout => "master"
	end
	def show
		render template: "contacts/contact", :layout => "master"
	end
end