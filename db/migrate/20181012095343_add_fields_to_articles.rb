class AddFieldsToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :name, :string
    add_column :articles, :content, :text
  end
end
