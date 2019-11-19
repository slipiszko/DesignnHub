class DesignDesignTag < ApplicationRecord
  belongs_to :design, optional: true
  belongs_to :design_tag, optional: true
end
