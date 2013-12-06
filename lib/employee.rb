class Employee

	attr_reader :first_name, :last_name, :annual_income, :tax_paid, :tax_rate

	def initialize(first_name,last_name,annual_income=0,tax_paid=0,tax_rate=0)
		@first_name = first_name || '[Unknown]'
		@last_name = last_name || '[Unknown]'
		@annual_income = annual_income
		@tax_paid = tax_paid
		@tax_rate = tax_rate
	end
end