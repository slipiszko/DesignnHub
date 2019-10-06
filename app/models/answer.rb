class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :votes, dependent: :destroy

  validates :content, presence: true
  validates :upvotes, presence: true
  validates :downvotes, presence: true

  def answer_upvotes
    votes.sum(:upvotes)
  end

  def answer_downvotes
    votes.sum(:downvotes)
  end
end
