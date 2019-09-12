class CreateDesignDesignTags < ActiveRecord::Migration[5.2]
  def change
    create_table :design_design_tags do |t|
      t.references :design, foreign_key: true
      t.references :design_tag, foreign_key: true
    end
  end
end
