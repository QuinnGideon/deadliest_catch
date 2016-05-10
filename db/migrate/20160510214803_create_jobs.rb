class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :boat_id
      t.string :body
      t.string :name
      t.decimal :cost
      t.string :origin
      t.string :destination
      t.integer :containers_reqd

      t.timestamps null: false
    end
  end
end
