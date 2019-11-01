class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :design
  has_many :votes, dependent: :destroy

  validates :content, presence: true
  validates :upvotes, presence: true
  validates :downvotes, presence: true

  def comment_upvotes
    votes.sum(:upvote)
  end

  def comment_downvotes
    votes.sum(:downvote)
  end
end
