def bitflogger_cleanup
	if File.exists?('.loaded')
		File.delete("#{$BITFLOGGER_CURRENT_PROGRAM}#{$BITFLOGGER_CURRENT_PROGRAM_VER}")
		File.delete('.loaded')
	else
		puts "Nothing to be cleaned up."
	end
end
