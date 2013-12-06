require 'rspec'
require_relative '../../lib/tax_calculator'
require_relative '../../lib/employee'
require_relative '../../lib/liability'

describe TaxCalculator do
	let(:employee) { Employee.new("Van","Nguyen","100000","30000","30") }
	let(:employee_with_liability) { Employee.new("Mr","Liability","100000","40000","30")}
	let(:employee_with_refund) { Employee.new("Mrs","Refund","100000","20000","30")}


	it 'should determine that instance method liability is of liability class' do
		expect(TaxCalculator.liability(employee).class).to eql Liability
	end

	it 'should calculate the correct liability' do
		expect(TaxCalculator.liability(employee_with_liability).amount_owed).to eql 10000.00
	end

	it 'should calculate the correct refund' do
		expect(TaxCalculator.liability(employee_with_refund).amount_owed).to eql -10000.00
	end
	
end