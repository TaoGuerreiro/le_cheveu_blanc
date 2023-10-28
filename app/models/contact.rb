class Contact
  attr_accessor :email, :full_name, :nickname, :content

  def initialize(attr = {})
    @email = attr[:email]
    @full_name = attr[:full_name]
    @content = attr[:content]
  end
end
