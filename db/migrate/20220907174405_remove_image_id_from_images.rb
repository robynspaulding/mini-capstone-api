class RemoveImageIdFromImages < ActiveRecord::Migration[7.0]
  def change
    remove_column :images, :image_id, :integer
  end
end
