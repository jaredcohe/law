class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :author
      t.string :job_title
      t.text :job_description
      t.integer :weekly_hours
      t.integer :annual_compensation

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
