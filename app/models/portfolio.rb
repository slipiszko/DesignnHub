class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :critiques, dependent: :destroy

  validates :description, presence: true
end
