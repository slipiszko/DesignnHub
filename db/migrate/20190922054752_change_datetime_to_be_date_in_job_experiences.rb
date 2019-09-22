class ChangeDatetimeToBeDateInJobExperiences < ActiveRecord::Migration[5.2]
  def change
    change_column :job_experiences, :start_date, :date
    change_column :job_experiences, :end_date, :date
  end
end
