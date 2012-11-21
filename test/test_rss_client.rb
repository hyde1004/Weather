require '../lib/rss_client'
require 'test/unit'

class TestRssClient < Test::Unit::TestCase
	def setup	
		
	end

	def teardown
		
	end
	
	def test_initialize
		assert_raise(ArgumentError) { RssClient.new }

		requestUrl = "http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=4413357000"		
		assert_nothing_raised(ArgumentError) { RssClient.new(requestUrl)}
	end

	def test_readXml
		
	end
	
end