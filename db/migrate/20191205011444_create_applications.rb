class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.integer :job_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
