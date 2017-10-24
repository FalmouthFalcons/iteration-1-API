class Employee < ApplicationRecord
  belongs_to :Department
  has_many :Employee_Training_Programs
  has_many :Training_Programs, through: :Employee_Training_Programs
  has_many :Employee_Computers
  has_many :Computers, through: :Employee_Computers
end
