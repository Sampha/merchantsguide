class CreateRomanNumerals < ActiveRecord::Migration[5.0]
  def change
    create_table :roman_numerals do |t|
      t.string :numeral
      t.integer :value
      t.timestamps
    end
  end
end
