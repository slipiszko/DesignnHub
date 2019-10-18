class Critique < ApplicationRecord
  belongs_to :user
  belongs_to :portfolio

  validates :content, presence: true
end
