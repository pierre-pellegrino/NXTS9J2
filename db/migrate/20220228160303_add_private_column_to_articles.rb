class AddPrivateColumnToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :private, :boolean
  end
end
