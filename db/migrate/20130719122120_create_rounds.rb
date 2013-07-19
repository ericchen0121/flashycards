class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :user_id, :deck_id
      t.timestamps
    end
  end
end
