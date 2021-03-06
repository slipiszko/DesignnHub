class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.text :content
      t.integer :upvotes
      t.integer :downvotes
      t.string :photo

      t.timestamps
    end
  end
end
