class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.text :last_name
      t.text :first_name
      t.date :date_customer_created
      t.boolean :active
      t.date :last_date_used
      t.text :email
      t.text :street_address
      t.text :city
      t.text :us_state
      t.integer :zip_code

      t.timestamps
    end
  end
end
