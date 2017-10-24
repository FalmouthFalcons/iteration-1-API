class TrainingProgram < ApplicationRecord
    has_many :Employee_Training_Programs
    has_many :Employees, through: :Employee_Training_Programs
end
