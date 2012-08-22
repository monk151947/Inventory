class CreateIndentItems < ActiveRecord::Migration
  def change
    create_table :indent_items do |t|
      t.integer :indent_id
      t.integer :store_item_id
      t.decimal :price
      t.integer :issued
      t.integer :pending
      t.integer :required

      t.timestamps
    end
   add_index :indent_items, :indent_id
   add_index :indent_items, :store_item_id
  end
end

