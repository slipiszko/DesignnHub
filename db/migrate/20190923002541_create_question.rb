class CreateQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :content
      t.string :photo
      t.references :user, foreign_key: true
    end
  end
end
