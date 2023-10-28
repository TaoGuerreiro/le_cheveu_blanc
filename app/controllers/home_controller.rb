# frozen_string_literal: true

class HomeController < StoreController
  helper 'spree/products'
  respond_to :html

  def landing

  end

  def about

  end

  def contact
    UserMailer.with(contact: Contact.new(email: params[:email], full_name: params[:full_name], content: params[:content])).new_message_from_store.deliver_now
  end

  def index
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products
  end
end
