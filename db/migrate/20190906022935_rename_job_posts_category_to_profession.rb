class RenameJobPostsCategoryToProfession < ActiveRecord::Migration[5.2]
  def change
    rename_column :job_posts, :category, :profession
  end
end
