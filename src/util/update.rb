require 'open-uri'

require_relative 'patch'

def bitflogger_update(version)
	unless File.exists?('.loaded')
		puts "Cannot update without an initial program."
	else
		File.write("#{version}.bdiff",
			open("#{$BITFLOGGER_URL}/#{$BITFLOGGER_CURRENT_PROGRAM}/#{$BITFLOGGER_CURRENT_PROGRAM_VER}/#{version}.diff").read,
			{mode: 'wb'})
		patch("#{$BITFLOGGER_CURRENT_PROGRAM}#{$BITFLOGGER_CURRENT_PROGRAM_VER}", "#{version}.diff", "#{$BITFLOGGER_CURRENT_PROGRAM}#{version}")
		File.delete("#{$BITFLOGGER_CURRENT_PROGRAM}#{$BITFLOGGER_CURRENT_PROGRAM_VER}")
		File.delete("#{version}.bdiff")
		$BITFLOGGER_CURRENT_PROGRAM_VER = version
	end
end
