class JobExperience < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :location, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
