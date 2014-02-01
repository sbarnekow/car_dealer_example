require 'spec_helper'
require 'rake'

File.expand_path("../../../Rakefile", __FILE__)

describe "walk dog" do
	it "returns dog walked" do
		rake :walk_dog.should eql "Dog walked."
	end
end