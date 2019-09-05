class ChangeLatitudeToBeStringInComments < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :latitude, :string
  end
end
