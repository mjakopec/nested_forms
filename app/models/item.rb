class Item < ActiveRecord::Base
  attr_accessible :description, :bill_id
  belongs_to :bill
end
