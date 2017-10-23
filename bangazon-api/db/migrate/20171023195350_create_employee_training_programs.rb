class CreateEmployeeTrainingPrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_training_programs do |t|
      t.references :employee, foreign_key: true
      t.references :training_program, foreign_key: true

      t.timestamps
    end
  end
end
