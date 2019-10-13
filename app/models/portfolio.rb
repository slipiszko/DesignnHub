class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :designs, through: :user

  validates :design, presence: true
end
