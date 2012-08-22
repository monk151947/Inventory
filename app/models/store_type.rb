class StoreType < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :store_items
  validates_length_of     :name, :within => 1..20
  validates_uniqueness_of :code
  validates_length_of     :code, :within => 1..10
  validates_presence_of   :name,:code
end

