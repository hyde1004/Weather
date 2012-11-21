class Weather
	attr_accessor :city, :sky, :curTemp, :minTemp, :maxTemp

	def initialize
		@city = "Cheonan"
		@sky = "Clear"
		@curTemp = 4
		@mixTemp = 0
		@maxTemp = 10
	end
end