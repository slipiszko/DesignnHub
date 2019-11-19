class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :design
  has_many :votes, dependent: :destroy
  has_many :responses, dependent: :destroy

  validates :content, presence: true
  validates :upvotes, presence: true
  validates :downvotes, presence: true

  def comment_upvotes
    votes.sum(:comment_upvote)
  end

  def comment_downvotes
    votes.sum(:comment_downvote)
  end
end
