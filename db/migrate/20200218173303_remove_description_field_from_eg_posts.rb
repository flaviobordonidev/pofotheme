class RemoveDescriptionFieldFromEgPosts < ActiveRecord::Migration[6.0]
  def change

    remove_column :eg_posts, :description, :text
  end
end
