class Question < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :question_question_tags
  has_many :question_tags, through: :question_question_tags
  has_many :answers, dependent: :destroy

  accepts_nested_attributes_for :question_tags

  validates :content, presence: true
end
