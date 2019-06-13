class Item < ApplicationRecord
  validates_presence_of :description, :quantity

  def self.import(file)
  	CSV.foreach(file.path, headers:false).with_index do |row, index|
  	  #this handles creation and updates of animal inventory items
  	  if index >= 2 && row[0] != nil
  	  	item = Item.find_by_description("#{row[0]}") 
  	  	if item == nil
  	  	  Item.create! description: row[0], quantity: row[1]
  	  	else
  	  	  Item.update(item.id,  :quantity => row[1])
  	  	end
  	  end
      
      #this handles creation and updates of accessory inventory items
  	  if index >= 2 && row[3] != nil
  	  	nickname = "#{row[3]}-#{row[4]}"
  	  	item = Item.find_by_nickname(nickname) 
  	  	if item == nil
  	  	  Item.create! nickname: nickname, description: row[3], size:row[4], quantity: row[5]
  	  	else
  	  	  Item.update(item.id, :quantity => row[5])
  	  	end
  	  end


  	end
  end
end
