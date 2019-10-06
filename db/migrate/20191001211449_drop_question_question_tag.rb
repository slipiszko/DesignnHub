class DropQuestionQuestionTag < ActiveRecord::Migration[5.2]
  def change
    drop_table :question_question_tags
  end
end
