class AddFilePathForPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :picture, :binary
  end
end
