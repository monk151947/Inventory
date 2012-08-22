class CreateStoreItems < ActiveRecord::Migration
  def change
    create_table :store_items do |t|
      t.string :name
      t.integer :store_type_id
      t.integer :store_id
      t.integer :store_category_id
      t.decimal :price
      t.integer :quantity
      t.decimal :tax

      t.timestamps
    end
    add_index :store_items, :store_type_id
    add_index :store_items, :store_category_id
    add_index :store_items, :store_id
  end
end

