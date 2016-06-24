class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :score
      t.string  :comment
      t.integer :goal_id
      t.integer :rater_id


      t.timestamps null: false
    end
  end
end
