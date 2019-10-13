class CreateQuestionQuestionTags < ActiveRecord::Migration[5.2]
  def change
    create_table :question_question_tags do |t|
      t.references :question, foreign_key: true
      t.references :question_tag, foreign_key: true
    end
  end
end
