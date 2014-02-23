require 'minitest/autorun'
require_relative 'point'

class Triangle

	attr_accessor :area
	def initialize(p1, p2, p3)
		@p1 = p1
		@p2 = p2
		@p3 = p3
		calc_area
	end

	def calc_area
		@area = (0.5*((@p1.x - @p2.x).abs) * ((@p1.y - @p3.y).abs))
	end
end

describe Triangle do 
	before do 
		@p1 = Point.new(0, 0)
		@p2 = Point.new(6, 0)
		@p3 = Point.new(3, 6)
		@triangle = Triangle.new(@p1, @p2, @p3)
	end

	it "returns area" do 
		@triangle.area.must_equal 18
	end
end