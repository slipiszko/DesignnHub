class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  belongs_to :answer

  validates :user_id, uniqueness: { scope: :comment_id }
end
