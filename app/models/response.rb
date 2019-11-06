class Response < ApplicationRecord
  belongs_to :user
  belongs_to :answer, optional: true
  belongs_to :comment, optional: true
  belongs_to :critique, optional: true

  validates :content, presence: true
end
