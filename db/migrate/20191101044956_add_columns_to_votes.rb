class AddColumnsToVotes < ActiveRecord::Migration[5.2]
  def change
    rename_column :votes, :upvote, :comment_upvote
    rename_column :votes, :downvote, :comment_downvote

    add_column :votes, :answer_upvote, :integer, default: 0
    add_column :votes, :answer_downvote, :integer, default: 0
  end
end
