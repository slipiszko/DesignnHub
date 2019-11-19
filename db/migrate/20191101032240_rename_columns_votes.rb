class RenameColumnsVotes < ActiveRecord::Migration[5.2]
  def change
    rename_column :votes, :upvotes, :upvote
    rename_column :votes, :downvotes, :downvote
  end
end
