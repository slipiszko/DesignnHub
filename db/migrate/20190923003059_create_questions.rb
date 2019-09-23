class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :content
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
