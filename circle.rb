require 'minitest/autorun'
require_relative 'point'

class Circle

	attr_accessor :area
	def initialize(p, r)
		@p = p
		@r = r.to_f
		calc_area
	end

	def calc_area
		@area = Math::PI * (@r**2)
	end
end

describe Circle do
	before do
		@p = Point.new(0, 0)
		@circle = Circle.new(@p, 5)
	end

	it "returns area" do 
		@circle.area.must_equal 25*Math::PI
	end
end