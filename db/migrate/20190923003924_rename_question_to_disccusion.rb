class RenameQuestionToDisccusion < ActiveRecord::Migration[5.2]
  def change
    rename_table :questions, :discussions
  end
end
