class RenameCommentsLatitudeToX < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :latitude, :x
  end
end
