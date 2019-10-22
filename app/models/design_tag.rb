class DesignTag < ApplicationRecord
  has_many :design_design_tags, inverse_of: :design_tag
  has_many :designs, through: :design_design_tags

  validates :name, presence: true
end
