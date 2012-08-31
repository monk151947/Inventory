class IndentItem < ActiveRecord::Base
  attr_accessible :indent_id, :issued, :pending, :price, :required, :store_item_id
  belongs_to :indent
  belongs_to :store_item

  def store_item_name
    store_item.name unless store_item.nil?
  end

end

