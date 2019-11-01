class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :comment, optional: true
  belongs_to :answer, optional: true

  # validates :user_id, uniqueness: { scope: :comment_id }
  # validates :user_id, uniqueness: { scope: :answer_id }
end
