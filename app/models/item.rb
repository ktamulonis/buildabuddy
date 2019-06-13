class Item < ApplicationRecord
  validates_presence_of :description, :quantity
end
