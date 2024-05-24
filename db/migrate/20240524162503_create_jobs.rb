class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :company
      t.text :description
      t.string :key_skills
      t.text :highlight
      t.date :date_start
      t.date :date_end

      t.timestamps
    end
  end
end
