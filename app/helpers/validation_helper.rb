module ValidationHelper
  def validation_status(user, attr)
    user.errors[attr].present? ? :invalid : :valid
  end

  def validation_message(user, attr)
    case validation_status(user, attr)
    when :invalid
      errors = user.errors.messages[attr].map { |m| t(".#{attr}") + " #{m}" }
      tag.small(errors.join(", "), class: "text-red-500")
    when :valid
    else tag.small("#{attr.to_s.titleize} est necessaire.", class: "text-orange-500")
    end
  end

  def validation_input(user, attr)
    case validation_status(user, attr)
    when :invalid then "ring-2 ring-red-500"
    when :ignore then "ring-2 ring-orange-500"
    end
  end
end
