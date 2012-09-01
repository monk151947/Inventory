class Indent < ActiveRecord::Base
  attr_accessible :description, :indent_no, :name, :store_id, :indent_items_attributes
  has_many :indent_items
  accepts_nested_attributes_for :indent_items, :allow_destroy=> true
  belongs_to:store
  validates :name, :length => { :minimum => 2, :maximum => 30 }, :presence =>true
  validates :description, :length => { :minimum => 2, :maximum => 60 }, :presence=> true
  validates :indent_no, :presence=> true, :numericality => true
  validates :store_id, :presence=> true, :numericality => true

  def store_name
    store.name unless store.nil?
  end

end

