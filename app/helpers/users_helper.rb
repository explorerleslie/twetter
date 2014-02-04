module UsersHelper

  def get_hash(email_address)
    email_address = email_address.downcase.strip
    email_hash = Digest::MD5.hexdigest(email_address)
  end
  
  def gravatar_img(email_address)
    email_hash = get_hash(email_address)
    image_src = "http://www.gravatar.com/avatar/#{email_hash}"
  end
  
  def gravatar_profile(email_address)
    email_hash = get_hash(email_address)
    profile_link = "http://www.gravatar.com/#{email_hash}"
  end
  
end
