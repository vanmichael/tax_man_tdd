require 'csv'
require_relative 'employee'

class EmployeeReader
	attr_reader :employees, :file_name

	def initialize(file_name)
		@file_name = file_name
	end

	def get_employees
		@employees = []
		CSV.foreach(@file_name, headers: true) do |row|
		@employees << Employee.new(
			row["first_name"],
			row["last_name"],
			row["annual_income"],
			row["tax_paid"],
			row["tax_rate"])
		end
		@employees
	end

end