class RenameCommentsLongitudeToY < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :longitude, :y
  end
end
