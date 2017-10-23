class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.text :name_last
      t.text :name_first
      t.text :job_title
      t.date :employee_hire_date
      t.references :Department, foreign_key: true

      t.timestamps
    end
  end
end
