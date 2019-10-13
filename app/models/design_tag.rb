class DesignTag < ApplicationRecord
  has_many :design_design_tags
  has_many :designs, through: :design_design_tags

  accepts_nested_attributes_for :designs

  validates :name, presence: true
end
