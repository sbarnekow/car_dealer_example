require 'spec_helper'

describe Car do
	before :each do # run before each test or :all runs once before all tests
		@car = Car.new "Make", "Model", "Color", "Year"
	end
	describe "#new" do
 		it "returns a car object" do
			@car.should be_an_instance_of Car
		end

		it "throws an ArgumentError when given fewer than four parameters" do
			lambda{ Car.new "Make", "Model"}.should raise_exception ArgumentError # a function that we can pass around
		end
	end
	describe "#make" do
		it "returns the make of the car" do
			@car.make.should eql "Make"
		end
	end
end