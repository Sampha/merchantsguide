class CreateAlienNumerals < ActiveRecord::Migration[5.0]
  def change
    create_table :alien_numerals do |t|
      t.string :alien
      t.integer :value

      t.timestamps
    end
  end
end
