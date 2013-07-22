class Card < ActiveRecord::Base
  has_many :guesses
  belongs_to :deck
  validates :term, presence: true
  validates :definition, presence: true

  def return_errors
    # Grab the error messages hash from the User object
    error_message_hash = self.errors.messages
    # Create an empty array to store error messages
    # We will iterate through these on the login page
    #So users can be aware of all their errors at once
    error_display_array = []
    # Is there a problem with their name?
    if error_message_hash.has_key?(:definition)
      error_display_array << "Definintion cannot be blank."
    end

    if error_message_hash.has_key?(:term)
      error_display_array << "Term cannot be blank."
    end

    return error_display_array
  end
end
