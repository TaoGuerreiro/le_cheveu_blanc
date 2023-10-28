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
    contact = Contact.new(contact_params)

    UserMailer.with(contact:).new_message_from_store.deliver_now
    redirect_to root_path, notice: "Message bien envoyé"
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
