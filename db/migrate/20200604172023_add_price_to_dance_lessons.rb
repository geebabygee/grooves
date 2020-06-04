class AddPriceToDanceLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :dance_lessons, :price, :integer
  end
end
