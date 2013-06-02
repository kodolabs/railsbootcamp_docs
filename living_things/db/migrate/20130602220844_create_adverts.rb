class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :headline
      t.text :description
      t.integer :user_id
      t.boolean :active
      t.integer :price_in_cents

      t.timestamps
    end
    add_index :adverts, :user_id
  end
end
