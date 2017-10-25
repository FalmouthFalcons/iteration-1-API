class EmployeeComputer < ApplicationRecord
  belongs_to :employee
  belongs_to :computer
end
