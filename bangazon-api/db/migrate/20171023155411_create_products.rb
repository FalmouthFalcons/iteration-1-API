class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.text :product_title
      t.float :product_price
      t.references :Customer, foreign_key: true

      t.timestamps
    end
  end
end
