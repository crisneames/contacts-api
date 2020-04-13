class ContactsController < ApplicationController


  def index
    render json: { status: 200, contacts: Contact.all }
  end

#display one of a given resource, which we get by id
  def show
    contact = Contact.find(params[:id])
    render json: { status: 200, contact: contact }
    end

  # Post request
  def create
     contact = Contact.new(contact_params)

     if contact.save
       render json: { status: 201, contact: contact }
     else
       # Unprocessable Entity
       render json: { status: 422, contact: contact }
     end
   end

   # Put request
   def update
     contact = Contact.find(params[:id])
     contact.update(contact_params)
     render json: { contact: contact }
   end

   # Delete
   def destroy
    contact = Contact.destroy(params[:id])
    render json: { status: 204 }
  end

   private # Any methods below here

   def contact_params
    # Returns a sanitized hash of the params with nothing extra
    params.required(:contact).permit(:name, :city, :state, :country, :birthday, :bio, :phone, :email, :artwork)
    end

end
