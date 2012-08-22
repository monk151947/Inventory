class StoreItem < ActiveRecord::Base
  attr_accessible :name, :price, :quantity, :store_category_id, :store_id, :store_type_id, :tax
 belongs_to :store_category
  belongs_to :store
  belongs_to :store_type
  has_many:indent_items
  validates_presence_of :name
  validates_numericality_of  :quantity, :greater_than => 0, :less_than => 100000,:on => :create
  validates_numericality_of  :price
  validates_format_of :price, :with => /^\d+??(?:\.\d{0,2})?$/
  validates_numericality_of :tax, :greater_than_and_equal => 0, :less_than => 100
  validates_presence_of :tax

end

