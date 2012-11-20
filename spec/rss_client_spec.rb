require 'spec_helper'

describe RssClient do

	before(:all) do
	  @client = RssClient.new
	  @client.getInfo
	end

	describe "Position" do
		# it "should be busong" do
		# 	@client.position.should eql "busong"
		# end
	end

	describe "Publish Time" do
		it "should be 201211161100" do
			@client.time.should eql "201211161100"	    
		end	  
	end

	describe "Sky" do
		it "should be Cloudy" do
			@client.sky.should eql "Cloudy"
		end
	end
	
	describe "Current Temp." do
		it "should be 9.0" do
			@client.curTemp.should eq(9.0)
		end
	end
	
	# describe "Min Temp." do
	# 	it "should be 0C" do
	# 	end
	# end

	describe "Max Temp." do
		it "should be 10C" do
			@client.maxTemp.should eq(10.0)
		end
	end
end