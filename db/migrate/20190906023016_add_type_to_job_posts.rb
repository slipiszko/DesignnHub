class AddTypeToJobPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :job_posts, :type, :string
  end
end
