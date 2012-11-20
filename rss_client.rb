#require 'simple-rss'
require 'open-uri'

# <<<BEGIN
# 	RSS Parser think stirng as long element.
# 	It cannot parser last element.
# 	I think XML parser will be better.
# BEGIN

class RssClient

	attr_accessor :curTemp, :maxTemp, :sky, :time

	def initialize
#		@requestUrl = "http://www.ruby-lang.org/en/feeds/news.rss"
		@requestUrl = "http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=4413357000"
	end
	
	def getInfo
		
		@time = "201211161100"
		@sky = "Cloudy"
		@curTemp = 9.0
		@maxTemp = 10.0	

#		rss = SimpleRSS.parse open(@requestUrl)

#		@sky = rss.channel.items[0].description.body
		# feed.items.description.body.data.each do |seq|
		# 	puts "Item : #{seq.temp}"
		# end
	end
end