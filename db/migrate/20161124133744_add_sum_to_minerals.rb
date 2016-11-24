class AddSumToMinerals < ActiveRecord::Migration[5.0]
  def change
    add_column :minerals, :sum, :integer
  end
end
