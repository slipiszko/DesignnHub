class ChangeCommentUpvotesToUpvote < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :upvotes, :upvote
    rename_column :comments, :downvotes, :downvote
  end
end
