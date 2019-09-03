class Design < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user

  validates :photo, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true

  def self.search(search, id)
    if search
      where(['name LIKE ?', "%#{search}%"])
    else
     scoped
    end
  end
end
