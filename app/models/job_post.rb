class JobPost < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :job_applications, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :profession, presence: true
  validates :location, presence: true
  validates :job_type, presence: true
end
