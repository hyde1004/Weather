require 'open-uri'
require 'rexml/document'

class RssClient
	attr_accessor :requestUrl
	attr_accessor :curTemp, :maxTemp, :sky, :time


	def initialize(url)
		@requestUrl = url
	end
	
	def getInfo
		raw_xml = open( @requestUrl ).read		
		xml = REXML::Document.new(raw_xml)

		#puts "Root elements : #{xml.root.name}"
		#puts "Elements : #{xml.root.elements[2].elements[1]}"
		#xml.root.elements[2].each { |e| puts e }
		#puts xml.root.elements[2].elements["data[@seq='0]"]
		#puts "Hour : #{xml.root.elements[2].elements["data[@seq='5']"].elements[1].text}"
		@curTemp = xml.elements['//body/data[@seq="0"]/temp'].text
	end
end