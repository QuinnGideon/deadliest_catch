class AddProgressToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :progress, :string
  end
end
