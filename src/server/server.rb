#!/usr/bin/env ruby

require "rubygems"
require "sinatra"

post '/form' do
	puts params['file1'][:filename]
end
