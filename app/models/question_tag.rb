class QuestionTag < ApplicationRecord
  has_many :questions, through: :question_question_tags

  accepts_nested_attributes_for :questions

  validates :name, presence: true
end
