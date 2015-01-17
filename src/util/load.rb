require 'open-uri'

def bitflogger_load(program, version)
	if File.exists?('.loaded')
		puts "This directory is already occupied."
	else
		File.open('.loaded', 'w') {}
		$BITFLOGGER_CURRENT_PROGRAM = program
		$BITFLOGGER_CURRENT_PROGRAM_VER = version
		File.write("#{program}#{version}",
			open("#{$BITFLOGGER_URL}/#{program}/#{version}/#{program}").read,
			{mode: 'wb'})
	end
end
