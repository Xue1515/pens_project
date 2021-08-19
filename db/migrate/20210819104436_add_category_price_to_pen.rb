class AddCategoryPriceToPen < ActiveRecord::Migration[6.0]
  def change
    add_column :pens, :category, :string
    add_column :pens, :price, :integer
  end
end
