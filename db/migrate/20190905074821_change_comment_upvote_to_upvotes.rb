class ChangeCommentUpvoteToUpvotes < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :upvote, :upvotes
    rename_column :comments, :downvote, :downvotes
  end
end
