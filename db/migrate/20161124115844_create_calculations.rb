class CreateCalculations < ActiveRecord::Migration[5.0]
  def change
    create_table :calculations do |t|
      t.integer :value_one
      t.integer :value_two
      t.integer :value_three
      t.integer :value_four
      t.string :value_one_name
      t.string :value_two_name
      t.string :value_three_name
      t.string :value_four_name

      t.timestamps
    end
  end
end
