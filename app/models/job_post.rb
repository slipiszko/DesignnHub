class JobPost < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :profession, presence: true
  validates :city, presence: true
  validates :type, presence: true
end
