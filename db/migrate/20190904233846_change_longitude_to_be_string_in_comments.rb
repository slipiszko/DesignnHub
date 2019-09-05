class ChangeLongitudeToBeStringInComments < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :longitude, :string
  end
end
