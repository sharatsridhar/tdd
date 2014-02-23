require 'minitest/autorun'
require_relative 'point'

class Rectangle

	attr_accessor :area
	def initialize(p1, p2)
		@p1 = p1
		@p2 = p2
		calc_area
	end

	def calc_area
		@area = (@p2.x - @p1.x).abs * (@p2.y - @p1.y).abs
	end
end

describe Rectangle do
	before do
		@p1 = Point.new(0, 0)
		@p2 = Point.new(5, 5)
		@rectangle = Rectangle.new(@p1, @p2)
	end

	it "returns area" do
		@rectangle.area.must_equal 25
	end
end