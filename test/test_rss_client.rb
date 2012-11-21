require '../lib/rss_client'
require 'test/unit'

class TestRssClient < Test::Unit::TestCase
	def setup	
		
	end

	def teardown
		
	end
	
	def test_initialize
		assert_raise(ArgumentError) { RssClient.new }

		requestUrl = "http://www.kma.go.kr/wid/queryDFS.jsp?gridx=63&gridy=111"		
		assert_nothing_raised(ArgumentError) { RssClient.new(requestUrl)}
	end

	def test_getInfo_local
		requestUrl = "./201211211400.xml"
		client = RssClient.new(requestUrl)
		client.getInfo

		assert_equal( client.publishedTime, "201211211400")
		assert_equal( client.curTemp, "7.2" )	# Current Temp.
		assert_equal( client.skyStatus, "Mostly Cloudy")
	end
	
	def test_getInfo_network
		requestUrl = "http://www.kma.go.kr/wid/queryDFS.jsp?gridx=63&gridy=111"

		client = RssClient.new(requestUrl)
		client.getInfo

		assert_equal( client.publishedTime, "201211211400")
		assert_equal( client.curTemp, "7.2" )	# Current Temp.
		assert_equal( client.skyStatus, "Mostly Cloudy")
	end	

	def test_showReport
		requestUrl = "./201211211400.xml"
		client = RssClient.new(requestUrl)
		client.getInfo
		
		assert_equal( client.showReport, "Published Time : 2012-11-21 14:00\nCurrent Temp : 7.2\nSky Status : Mostly Cloudy")
	end
end