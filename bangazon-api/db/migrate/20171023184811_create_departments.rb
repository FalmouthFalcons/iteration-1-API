class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.text :department_name
      t.float :expense_budget

      t.timestamps
    end
  end
end
