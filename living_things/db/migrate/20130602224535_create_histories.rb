class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :advert_id
      t.text :body

      t.timestamps
    end
    add_index :histories, :advert_id
  end
end
