class DesignDesignTag < ApplicationRecord
  belongs_to :design, optional: true
  belongs_to :design_tag, optional: true

  validates :design_id, :design_tag_id, presence: true
end
