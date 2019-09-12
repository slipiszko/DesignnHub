class RemoveDesignIdFromDesignTags < ActiveRecord::Migration[5.2]
  def change
    remove_column :design_tags, :design_id, :bigint
  end
end
