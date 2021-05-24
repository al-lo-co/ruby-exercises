#!/bin/ruby

require 'json'
require 'stringio'



n = gets.strip.to_i

n.to_s(2)
@val = 0
n.to_s(2).split("0").each{|val| val.size > @val ? @val = val.size : val}
puts @val