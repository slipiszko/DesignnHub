class ChangeDescriptionToBeTextInDesigns < ActiveRecord::Migration[5.2]
  def change
    change_column :designs, :description, :text
  end
end
