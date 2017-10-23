class EmployeeTrainingProgram < ApplicationRecord
  belongs_to :employee
  belongs_to :training_program
end
