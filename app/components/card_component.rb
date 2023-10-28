# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  attr_accessor :image, :link, :title

  def initialize(data = {})
    @image = data[:image]
    @link = data[:link]
    @title = data[:title]
  end


  # def call
  #   content_tag(:div, class: "rounded-lg hover:scale-105 transition relative group") do
  #     concat content_tag(:a, nil, href: @link, target: "_blank") do
  #       concat content_tag(:div, @title, class: "bg-secondary text-3xl text-white font-bold uppercase group-hover:opacity-100 opacity-0 absolute top-0 bottom-0 left-0 right-0 rounded-lg hover:shadow-xl transition flex items-center justify-center")
  #       concat image_tag(@image, class: "cursor-pointer max-w-full rounded-lg group-hover:opacity-0 transition")
  #     end
  #   end
  # end
end
