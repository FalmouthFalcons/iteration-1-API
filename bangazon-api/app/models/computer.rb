class Computer < ApplicationRecord
    has_many :employee_computers
    has_many :employees, through: :employee_computers
end
