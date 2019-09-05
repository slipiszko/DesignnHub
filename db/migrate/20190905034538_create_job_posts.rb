class CreateJobPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :job_posts do |t|
      t.string :title
      t.text :content
      t.string :photo
      t.string :category
      t.string :city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
