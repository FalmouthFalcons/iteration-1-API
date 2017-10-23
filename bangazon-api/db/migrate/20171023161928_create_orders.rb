class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :Customer, foreign_key: true
      t.references :Payment_Type, foreign_key: true

      t.timestamps
    end
  end
end
