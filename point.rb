require 'minitest/spec'
require 'minitest/autorun'

class Point
	attr_accessor :x, :y
	def initialize(x, y)
		@x = x.to_i
		@y = y.to_i
	end

end

describe Point do

	before do
		@p1 = Point.new(1,2)
		@p2 = Point.new(0,9)
	end

		
	it "returns x coordinate" do 
		@p1.x.must_equal 1
	end
	it "returns y coordinate" do
		@p2.y.must_equal 9
	end

end