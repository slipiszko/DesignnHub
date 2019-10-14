class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :designs, through: :user

  validates :designs, presence: true
end
