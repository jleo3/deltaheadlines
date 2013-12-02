class Hashlio < ActiveRecord::Base
	belongs_to :portfolio
	belongs_to :user
	
	validates_presence_of :ticker

  # nice use of the before_save hook, and a nice, easy-to-read `add_http` method
	before_save :add_http

	def add_http
		if !self.ticker.include?("$")
			self.ticker = "$" + self.ticker
		end
	end

end
