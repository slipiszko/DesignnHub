class DesignTag < ApplicationRecord
  belongs_to :design

  validates :name, presence: true, uniqueness: true
end
