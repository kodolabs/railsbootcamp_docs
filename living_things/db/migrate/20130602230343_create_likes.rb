class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :fan_id
      t.integer :advert_id

      t.timestamps
    end
    add_index :likes, :fan_id
    add_index :likes, :advert_id
  end
end
