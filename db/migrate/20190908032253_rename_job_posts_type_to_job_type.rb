class RenameJobPostsTypeToJobType < ActiveRecord::Migration[5.2]
  def change
    rename_column :job_posts, :type, :job_type
  end
end
