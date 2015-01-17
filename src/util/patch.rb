def patch(oldbin, bdiff, newbin)
	system("../bdiff/bpatch #{oldbin} #{bdiff} #{newbin}")
end
