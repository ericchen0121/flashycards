class CreateGuesses < ActiveRecord::Migration
  def change
    create table :guesses do |t|
      t.integer :correct, :round_id, :card_id
      t.timestamps
    end
  end
end
