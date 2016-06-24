class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :description
      t.string :type
      t.date :dueDate

      t.timestamps null: false
    end
  end
end
