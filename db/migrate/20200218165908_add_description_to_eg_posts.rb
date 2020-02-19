class AddDescriptionToEgPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :eg_posts, :description, :text
  end
end
