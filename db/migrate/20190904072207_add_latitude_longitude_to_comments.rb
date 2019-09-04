class AddLatitudeLongitudeToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :latitude, :float
    add_column :comments, :longitude, :float
  end
end
