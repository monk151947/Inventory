class Store < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :indents
  has_many :store_items
#  validates :name, :length => { :minimum => 2, :maximum => 30 }, presence: true
#  validates :code, :length => { :minimum => 2, :maximum => 10 }, presence: true

  validates_length_of     :name, :within => 1..20
#  validates_uniqueness_of :code
  validates_length_of     :code, :within => 1..10
end

