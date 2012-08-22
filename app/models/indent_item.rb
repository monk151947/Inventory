class IndentItem < ActiveRecord::Base
  attr_accessible :indent_id, :issued, :pending, :price, :required, :store_item_id
  belongs_to :indent
  belongs_to :store_item
end

