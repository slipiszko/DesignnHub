class Critique < ApplicationRecord
  belongs_to :user
  belongs_to :portfolio
  has_many :responses, dependent: :destroy

  validates :content, presence: true
end
