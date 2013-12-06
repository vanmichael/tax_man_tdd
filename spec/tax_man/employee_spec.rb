require 'rspec'
require_relative '../../lib/employee'

describe Employee do

	let(:employee) { Employee.new("Van","Nguyen","100000","30000","30") }

	it 'should create an instance of employee' do
		expect(employee).to be_an_instance_of Employee
	end

	it 'should have a first name' do
		expect(employee.first_name).to eql "Van"
	end

	it 	'should have a last name' do
		expect(employee.last_name).to eql "Nguyen"
	end

	it 'should have a annual income' do
		expect(employee.annual_income).to eql "100000"
	end

	it 'should have a tax paid' do
		expect(employee.tax_paid).to eql "30000"
	end

	it 'should have a tax rate' do
		expect(employee.tax_rate).to eql "30"
	end

	it 'should replace missing numerical values with 0' do
		expect(Employee.new(nil,nil).annual_income).to eql 0
	end

	it 'should replace missing name with unknown' do
		expect(Employee.new(nil,nil).first_name).to eql "[Unknown]"
	end

end