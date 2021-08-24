class ContactsController < ApplicationController
    def index
        @contact = Contact.new
    end
  
    def create
        @contact = Contact.new(contact_params)
        @contact.request = request
        if @contact.deliver
          flash.now[:success] = 'Votre message a bien été envoyé !'
          @contact = Contact.new
        elsif !@contact.valid?
          flash.now[:error] = "Des erreurs dans le formulaire on été détectés : #{@contact.errors.full_messages.to_sentence}"
        else
          flash.now[:error] = "Votre message n'a pas pu être envoyé !"
        end
        render :index
    end

    private 
        def contact_params
            params.require(:contact).permit(:name, :subject, :email, :message, :nickname, files: [])
        end
end
