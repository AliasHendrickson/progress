class RemoveCompletedFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :completed
  end
end
