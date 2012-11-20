require 'open-uri'
require 'rexml/document'
# xml = REXML::Document.new(File.open("demo.xml"))

# puts "Root element: #{xml.root.name}"

# puts "\nThe names of all classes"
# xml.elements.each("//class") { |c| puts c.attributes["name"] }
# puts "\nThe description of Fixnum"
# p xml.elements["//class[@name='Fixnum']"].text

request_xml_url = "http://www.kma.go.kr/wid/queryDFS.jsp?gridx=63&gridy=111"
raw_xml = open( request_xml_url ).read

#puts raw_xml

xml = REXML::Document.new(raw_xml)

puts "Root elements : #{xml.root.name}"
#puts "Elements : #{xml.root.elements[2].elements[1]}"
#xml.root.elements[2].each { |e| puts e }
#puts xml.root.elements[2].elements["data[@seq='0]"]
puts "Hour : #{xml.root.elements[2].elements["data[@seq='5']"].elements[1].text}"
puts "Hour : #{xml.elements['//body/data[@seq="5"]/hour'].text}"

