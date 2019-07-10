class ChangePictureColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column :photos, :picture, :string
  end
end
