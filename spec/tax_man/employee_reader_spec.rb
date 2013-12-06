require 'rspec'
require 'pry'
require_relative '../../lib/employee_reader'

describe EmployeeReader do
	let(:employee_reader) { EmployeeReader.new('file.csv') }

	it 'should have a file name' do
		expect(employee_reader.file_name).to eql 'file.csv'
	end

end