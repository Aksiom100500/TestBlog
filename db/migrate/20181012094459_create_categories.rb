class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories, &:timestamps
  end
end
