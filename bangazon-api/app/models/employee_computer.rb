class EmployeeComputer < ApplicationRecord
  belongs_to :Employee
  belongs_to :Computer
end
