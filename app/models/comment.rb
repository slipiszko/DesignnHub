class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :design

  validates :content, presence: true
  validates :upvotes, presence: true
  validates :downvotes, presence: true
end
