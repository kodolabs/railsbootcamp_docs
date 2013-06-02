class JoinAdvertAndCategory < ActiveRecord::Migration
  def change
    create_table :adverts_categories, :id => false do |t|
      t.integer :advert_id
      t.integer :category_id
    end

    add_index :adverts_categories, :advert_id
    add_index :adverts_categories, :category_id
  end
end
