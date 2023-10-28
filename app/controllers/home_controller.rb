# frozen_string_literal: true

class HomeController < StoreController
  helper 'spree/products'
  respond_to :html

  def landing

  end

  def about

  end

  def contact
    @contact = Contact.new
  end

  def send_message
    @contact = Contact.new(contact_params)

    if @contact.valid?
      begin
        UserMailer.with(contact: @contact).new_message_from_store.deliver_now
        redirect_to root_path, notice: "Message bien envoyé", status: :see_other
      rescue => e
        # Ajouter une logique pour gérer l'erreur d'envoi de l'e-mail, par exemple :
        flash[:error] = "Une erreur est survenue lors de l'envoi du message. Veuillez réessayer."
        render "contact", status: :unprocessable_entity
      end
    else
      render "contact", status: :unprocessable_entity
    end
  end

  def index
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :full_name, :content)
  end
end
