class DesignTag < ApplicationRecord
  has_many :design_design_tags
  has_many :designs, through: :design_design_tags

  validates :name, presence: true
end
