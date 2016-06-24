class CreateTaggingsTable < ActiveRecord::Migration
  def change
    create_table :taggings_tables do |t|
      t.integer :goal_id
      t.integer :tag_id
    end
  end
end
