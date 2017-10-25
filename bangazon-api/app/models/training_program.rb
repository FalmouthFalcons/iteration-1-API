class TrainingProgram < ApplicationRecord

    has_many :employee_training_programs
    has_many :employees, through: :employee_training_programs

end
