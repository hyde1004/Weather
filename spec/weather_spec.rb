require 'spec_helper'

describe Weather do

	before :all do
		@info = Weather.new
	end

	describe "city" do
		it "should be Cheonan" do
			@info.city.should eql "Cheonan"
		end
	end

	describe "sky" do
		it "should be clear" do
			@info.sky.should eql "Clear"
		end
	end

	describe "Current Temperture" do
		it "should be current temperture" do
			@info.curTemp.should eq(4)
		end
	end

	describe "Min Temperture" do
		it "should be minimum temperture" do
			# @info.minTemp.should eq(0)
		end
	end

	describe "Max Temperture" do
		it "should be maximum temperture" do
			@info.maxTemp.should eq(10)
		end
	end	
end