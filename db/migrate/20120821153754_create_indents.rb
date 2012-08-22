class CreateIndents < ActiveRecord::Migration
  def change
    create_table :indents do |t|
      t.integer :indent_no
      t.string :name
      t.integer :store_id
      t.text :description

      t.timestamps
    end
   add_index :indents, :store_id
  end
end

