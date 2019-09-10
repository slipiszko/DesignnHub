class AddPhotoToJobApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :job_applications, :photo, :string
  end
end
