class ContactsController < ApplicationController
  def index
  	@contact = Contact.new
  end

  def confirm
  	 @contact = Contact.new(contact_params)
  	 if @contact.valid?
      render 'confirm'
    else
      render 'index'
    end
  end

  def thanks
  	@contact = Contact.new(contact_params)
    ContactMailer.received_email(@contact).deliver
  end

  def contact_params
    params.require(:contact).permit(:name, :email,:message)
  end
end
