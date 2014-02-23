require 'minitest/autorun'
require_relative 'point'
require_relative 'rectangle'
require_relative 'triangle'
require_relative 'circle'

class Scene
	def initialize
		@shapes_in_scene = Array.new
	end

	def shape_count
		return @shapes_in_scene.size
	end

	def total_area
		sum = 0.0
		@shapes_in_scene.each do |shape|
			sum += shape.area
		end
		return sum
	end

	def add_shape(shape)
		@shapes_in_scene.push(shape)
	end

	def remove_shape(shape)
		@shapes_in_scene.delete(shape)
	end
end

describe Scene do 
	before do 
		@rp1 = Point.new(0, 0)
		@rp2 = Point.new(5, 5)
		@tp1 = Point.new(0, 0)
		@tp2 = Point.new(6, 0)
		@tp3 = Point.new(3, 6)
		@cp1 = Point.new(0, 0)
		@radius = 5
		@rectangle = Rectangle.new(@rp1, @rp2)
		@triangle = Triangle.new(@tp1, @tp2, @tp3)
		@circle = Circle.new(@cp1, @radius)
		@scene = Scene.new
		@scene.add_shape(@rectangle)
		@scene.add_shape(@circle)
	end

	it "counts total shapes" do 
		@scene.shape_count.must_equal 2
	end

	it "adds a shape" do 
		@scene.add_shape(@triangle)
		@scene.shape_count.must_equal 3
	end

	it "calculates total area" do 
		@scene.total_area.must_equal 25 + 25*Math::PI 
	end

	it "removes a shape" do 
		@scene.remove_shape(@rectangle)
		@scene.shape_count.must_equal 1
	end
end