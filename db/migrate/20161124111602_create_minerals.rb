class CreateMinerals < ActiveRecord::Migration[5.0]
  def change
    create_table :minerals do |t|
      t.string :name
      t.integer :value
      t.integer :alien_value_one
      t.integer :alien_value_two
      t.integer :total

      t.timestamps
    end
  end
end
