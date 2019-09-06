class CreateJobApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :job_applications do |t|
      t.text :note
      t.references :user, foreign_key: true
      t.references :job_post, foreign_key: true

      t.timestamps
    end
  end
end
