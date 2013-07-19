class CreateDecks < ActiveRecord::Migration
  def change
    create table :decks do |t|
      t.string :name
      t.timestamps
    end
  end
end
