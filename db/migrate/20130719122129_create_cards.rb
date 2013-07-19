class CreateCards < ActiveRecord::Migration
  def change
    create table :cards do |t|
      t.string :term, :definition
      t.timestamps
    end
  end
end
