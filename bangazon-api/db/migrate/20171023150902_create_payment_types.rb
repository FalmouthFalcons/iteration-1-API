class CreatePaymentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_types do |t|
      t.text :payment_type
      t.integer :account_number
      t.references :Customer, foreign_key: true

      t.timestamps
    end
  end
end
