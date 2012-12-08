class Bill < ActiveRecord::Base
  attr_accessible :bnr, :customer, :datump, :description, :bill_id, :items_attributes
  attr_accessor :description
  has_many :items, :dependent => :destroy
  accepts_nested_attributes_for :items, :allow_destroy => true
end
