class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :poster_id, null: false
      t.timestamps
    end
    add_index :jobs, :poster_id
  end
end
