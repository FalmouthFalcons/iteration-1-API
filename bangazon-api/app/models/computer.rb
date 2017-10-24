class Computer < ApplicationRecord
    has_many :Employee_Computers
    has_many :Employees, through: :Employee_Computers
end
