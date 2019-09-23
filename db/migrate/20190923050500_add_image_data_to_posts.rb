class AddImageDataToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :image_data, :text
  end
end
