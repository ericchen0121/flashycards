class User < ActiveRecord::Base
  has_many :rounds
  # Name cannot be blank. It must also be unique, but based on the lowercase form.
  validates :name, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A\w+\Z/}
  # Passwords cannot be blank, CASE MATTERS
  validates :password, presence: true
   
  def return_errors
    # Grab the error messages hash from the User object
    error_message_hash = self.errors.messages
    # Create an empty array to store error messages
    # We will iterate through these on the login page
    #So users can be aware of all their errors at once
    error_display_array = []
    # Is there a problem with their name?
    if error_message_hash.has_key?(:name)
      # If so, determine which error it is; A user name which is already taken, or a blank field?
      # Both errors should not be able to appear at once, since an already taken user name will not be blank
      if error_message_hash[:name].first.match("has already been taken")
        error_display_array << "This username has already been taken, please choose another."
      elsif error_message_hash[:name].first.match("can't be blank")
        error_display_array << "Username cannot be blank."
      elsif error_message_hash[:name].first.match("is invalid")
        error_display_array << "Username is invalid. Please use only letters, numbers, and underscores."
      end
    end

    # Is there a problem with their password?
    if error_message_hash.has_key?(:password)
      # If so, add password error message to error hash
      error_display_array << "Password cannot be blank."
    end

    return error_display_array
  end
end
