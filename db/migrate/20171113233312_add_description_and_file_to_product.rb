class AddDescriptionAndFileToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :description, :text
    add_column :products, :file, :string
  end
end
