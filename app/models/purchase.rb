class Purchase < ActiveRecord::Base
	validates_numericality_of :amount, message: 'deve ser um número'
end
