class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :design
  has_many :votes, dependent: :destroy

  validates :content, presence: true
  validates :upvote, presence: true
  validates :downvote, presence: true

  def upvotes
    votes.sum(:upvotes)
  end

  def downvotes
    votes.sum(:downvotes)
  end
end
