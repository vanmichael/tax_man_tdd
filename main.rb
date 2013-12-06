require 'pry'
require_relative 'lib/employee_reader.rb'
require_relative 'lib/employee'
require_relative 'lib/tax_calculator'
require_relative 'lib/liability'

liabilities = []

employees = EmployeeReader.new('taxes.csv')

employees.get_employees.each do |employee|
	liabilities << TaxCalculator.liability(employee)
end

liabilities.each do |tax_payer|
	if tax_payer.amount_owed < 0
		puts "#{tax_payer.employee.first_name} #{tax_payer.employee.last_name} recieves a refund of #{tax_payer.amount_owed.abs.round(2)}"
	else
		puts "#{tax_payer.employee.first_name} #{tax_payer.employee.last_name} has a liability of #{tax_payer.amount_owed.round(2)}"
	end	
end


	

