class ChangeDefaultValueForPrivateArticle < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :private, :boolean
  end
end
