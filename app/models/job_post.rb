class JobPost < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :city, presence: true
end
