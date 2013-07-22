class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :cards
  validates :name, presence: true

  def return_errors
    # Grab the error messages hash from the User object
    error_message_hash = self.errors.messages
    # Create an empty array to store error messages
    # We will iterate through these on the login page
    #So users can be aware of all their errors at once
    error_display_array = []
    # Is there a problem with their name?
    if error_message_hash.has_key?(:name)
      error_display_array << "Deck name cannot be blank."
    end

    return error_display_array
  end
end
