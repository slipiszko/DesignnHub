class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.references :user, foreign_key: true
      t.references :answer, foreign_key: true
      t.references :comment, foreign_key: true
      t.references :critique, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
