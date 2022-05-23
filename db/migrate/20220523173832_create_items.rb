class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :creator
      t.string :item_name
      t.text :description
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
