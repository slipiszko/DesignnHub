class Design < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :design_tags

  validates :photo, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates_uniqueness_of :design_tags

  # def self.search(search, id)
  #   if search
  #     where(['name LIKE ?', "%#{search}%"])
  #   else
  #    scoped
  #   end
  # end
end
