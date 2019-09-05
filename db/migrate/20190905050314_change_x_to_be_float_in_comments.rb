class ChangeXToBeFloatInComments < ActiveRecord::Migration[5.2]
  def change
        change_column :comments, :x, :float, using: 'x::float'

  end
end
