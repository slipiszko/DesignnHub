class AddDefaultValueToAnswer < ActiveRecord::Migration[5.2]
  def change
    change_column_default :answers, :upvotes, 0
    change_column_default :answers, :downvotes, 0
  end
end
