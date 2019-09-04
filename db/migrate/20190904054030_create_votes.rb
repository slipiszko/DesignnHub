class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :comment, foreign_key: true
      t.integer :upvotes, default: 0
      t.integer :downvotes, default: 0

      t.timestamps
    end
  end
end
