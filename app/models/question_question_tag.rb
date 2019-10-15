class QuestionQuestionTag < ApplicationRecord
  belongs_to :question
  belongs_to :question_tag
end
