class CreateDesigns < ActiveRecord::Migration[5.2]
  def change
    create_table :designs do |t|
      t.string :photo
      t.string :title
      t.string :description
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
