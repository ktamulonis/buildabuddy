class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :description
      t.string :size
      t.integer :quantity
      t.decimal :cost
      t.decimal :sales_price

      t.timestamps
    end
  end
end
