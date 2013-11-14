class Hashlio < ActiveRecord::Base
	belongs_to :portfolio
	belongs_to :user
	
	validates_presence_of :ticker

	before_save :add_http

	def add_http
		if !self.ticker.include?("$")
			self.ticker = "$" + self.ticker
		end
	end

end
