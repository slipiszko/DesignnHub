class ChangeYToBeFloatInComments < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :y, :float, using: 'y::float'
  end
end

