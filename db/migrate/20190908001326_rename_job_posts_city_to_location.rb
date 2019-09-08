class RenameJobPostsCityToLocation < ActiveRecord::Migration[5.2]
  def change
    rename_column :job_posts, :city, :location
  end
end
