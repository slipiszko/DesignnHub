class Design < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :portfolio, through: :user
  has_many :comments, dependent: :destroy
  has_many :design_design_tags
  has_many :design_tags, through: :design_design_tags

  accepts_nested_attributes_for :design_tags

  validates :photo, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
