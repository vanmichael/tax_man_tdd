require 'rspec'
require 'pry'
require_relative '../../lib/liability'
require_relative '../../lib/employee'

describe Liability do

	let(:employee) { Employee.new("Van","Nguyen","100000","30000","30") }
	let(:liability) { Liability.new(employee,1000,1000) }

	it 'should have an employee' do
		expect(liability.employee.class).to eql Employee
		expect(liability.employee).to be_an_instance_of Employee
	end

	it 'should have an amount due' do
		expect(liability.amount_due).to eql 1000
	end

	it 'should have an amount owed' do
		expect(liability.amount_owed).to eql 1000
	end
end