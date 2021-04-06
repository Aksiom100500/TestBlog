class AddFieldsToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :name, :string
    add_column :categories, :description, :text
  end
end
