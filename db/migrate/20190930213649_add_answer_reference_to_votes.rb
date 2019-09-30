class AddAnswerReferenceToVotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :votes, :answer, foreign_key: true
  end
end
