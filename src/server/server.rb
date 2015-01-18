#!/usr/bin/env ruby

#  server.rb
#  A Sinatra server that responds to POST requests containing either binaries 
#  to be diffed or patched depending on the endpoint.
#  Author: William Woodruff

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
	content_type 'application/octet-stream'
	stream do |out|
		out << File.open('diffbin').read
	end
end

post "/dopatch" do
	File.open('oldbin', "w") do |f|
		f.write(params['oldbin'][:tempfile].read)
	end
	File.open('diffbin', "w") do |f|
		f.write(params['diffbin'][:tempfile].read)
	end
	system("../bdiff/bpatch oldbin diffbin newbin")
	content_type 'application/octet-stream'
	stream do |out|
		out << File.open('newbin').read
	end
end
