class Employee < ApplicationRecord
  belongs_to :department
  has_many :employee_training_programs
  has_many :training_programs, through: :employee_training_programs
  has_many :employee_computers
  has_many :computers, through: :employee_computers
end
