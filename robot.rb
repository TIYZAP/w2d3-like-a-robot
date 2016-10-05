#!/usr/bin/env ruby

require 'erb'

class Robot

  attr_accessor :name, :object_to_bend, :new_name


  def say_hi
    "Hi"
  end

  def to_s
    @name
  end

  def say_name
    "My name is #{@name}"
  end
end

class BendingUnit < Robot
  def bend(object_to_bend)
    "Bend #{object_to_bend}"
  end
end

class ActorUnit < Robot
  def initialize(new_name)
    @name = new_name
  end
end

robot = Robot.new
robot.name = "Cayde-6"

puts robot.say_hi
puts robot.say_name

change = ActorUnit.new(ARGV[0])
puts change.say_name

bender = BendingUnit.new
puts bender.bend(ARGV[1])



our_class = ["Zachary", "Jon", "Keith", "Luis", "Michael", "Chris", "Brent"]

class_robots = []

our_class.each do |name|
  robot = Robot.new
  robot.name = "#{name} BOT"
  class_robots << robot
end

puts class_robots



new_file = File.open("./index.html", "w+")
new_file << ERB.new(File.read("index.html.erb")).result(binding)
new_file.close
