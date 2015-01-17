#!/usr/bin/env ruby

require_relative 'load'
require_relative 'update'
require_relative 'cleanup'

$BITFLOGGER_URL = 'http://localhost:4040/bitflogger/programs'
$BITFLOGGER_CURRENT_PROGRAM = ''
$BITFLOGGER_CURRENT_PROGRAM_VER = ''

case ARGV.shift
when "load"
	bitflogger_load(ARGV.shift, ARGV.shift)
when "update"
	bitflogger_update(ARGV.shift)
when "clean"
	bitflogger_cleanup
end
