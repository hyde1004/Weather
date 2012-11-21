#
# source from http://simonstarr.com/2009/06/29/using-ruby-and-libxml-to-parse-xml-from-friendfeed/
#

require 'open-uri'
require 'xml'

request_xml_url = "http://www.kma.go.kr/wid/queryDFS.jsp?gridx=63&gridy=111"

raw_xml = open( request_xml_url ).read

source = XML::Parser.string(raw_xml)
content = source.parse

data = content.root.find_first('./body/data/temp')

puts "current temp : #{data}"
