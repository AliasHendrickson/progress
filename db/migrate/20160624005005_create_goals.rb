class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :description
      t.string :duration
      t.boolean :completed
      t.datetime :due_date

      t.timestamps null: false
    end
  end
end

