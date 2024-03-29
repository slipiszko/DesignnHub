class Article < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :description, presence: true
end
