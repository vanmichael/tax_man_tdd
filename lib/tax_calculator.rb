class TaxCalculator

	def self.liability(employee)
		@employee = employee
		Liability.new(employee,amount_due,amount_owed)
	end

	def self.amount_due
		@employee.annual_income.to_f * (@employee.tax_rate.to_f/100)
	end

	def self.amount_owed
		@employee.tax_paid.to_f - amount_due
	end

end