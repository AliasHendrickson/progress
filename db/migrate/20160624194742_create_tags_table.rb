class CreateTagsTable < ActiveRecord::Migration
  def change
    create_table :tags_tables do |t|
      t.string :name
    end
  end
end
