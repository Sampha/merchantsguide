class CreateMineralCalculations < ActiveRecord::Migration[5.0]
  def change
    create_table :mineral_calculations do |t|
      t.integer :alien_one
      t.string :alien_one_name
      t.integer :alien_two
      t.string :alien_two_name
      t.integer :mineral
      t.string :mineral_name
      t.integer :total_value

      t.timestamps
    end
  end
end
