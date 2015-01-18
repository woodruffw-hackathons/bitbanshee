#!/usr/bin/env ruby

require "rubygems"
require "sinatra"

post "/makebdiff" do
	File.open('oldbin', "w") do |f|
		f.write(params['file1'][:tempfile].read)
	end
	File.open('newbin', "w") do |f|
		f.write(params['file2'][:tempfile].read)
	end
	return "Good."
end
