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

	def test_getInfo
		requestUrl = "http://www.kma.go.kr/wid/queryDFS.jsp?gridx=63&gridy=111"		
		client = RssClient.new(requestUrl)
		client.getInfo

		assert_equal( client.curTemp, "7.2" )	# Current Temp.
	end
	
end