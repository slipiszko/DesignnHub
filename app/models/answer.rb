class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :votes, dependent: :destroy
  has_many :responses, dependent: :destroy

  validates :content, presence: true
  validates :upvotes, presence: true
  validates :downvotes, presence: true

  def answer_upvotes
    votes.sum(:answer_upvote)
  end

  def answer_downvotes
    votes.sum(:answer_downvote)
  end
end
