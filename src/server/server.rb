#!/usr/bin/env ruby

require "rubygems"
require "sinatra"

post "/makebdiff" do
	File.open('oldbin', "w") do |f|
		f.write(params['oldbin'][:tempfile].read)
	end
	File.open('newbin', "w") do |f|
		f.write(params['newbin'][:tempfile].read)
	end
	system("../bdiff/bdiff oldbin newbin diffbin")
	return File.open('diffbin').read
end

post "/dopatch" do
	File.open('oldbin', "w") do |f|
		f.write(params['oldbin'][:tempfile].read)
	end
	File.open('diffbin', "w") do |f|
		f.write(params['diffbin'][:tempfile].read)
	end
	system("../bdiff/bpatch oldbin diffbin newbin")
	return File.open('newbin').read
end
