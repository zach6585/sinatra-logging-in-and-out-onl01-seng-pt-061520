class Helpers 
  def self.current_user(sessiona)
    User.find(sessiona[:user_id])
  end 
  
  def self.is_logged_in?(sessiona)
    !!sessiona[:user_id]
  end 
end