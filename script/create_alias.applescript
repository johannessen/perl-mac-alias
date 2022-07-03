on run argv
	set theTarget to item 1 of argv
	set theFolder to item 2 of argv
	set theName to item 3 of argv
	set theAlias to missing value
	try
		tell application "Finder"
			make alias file to (POSIX file theTarget) at (POSIX file theFolder)
			set theAlias to the result
			set name of the result to theName
		end tell
	on error errStr number errNum
		if theAlias is not missing value then
			-- Undo make alias
			set theVolume to output volume of (get volume settings)
			set volume output volume 0 -- Silence UI sound effects
			tell application "System Events" to delete theAlias
			set volume output volume theVolume
		end if
		error errStr number errNum
	end try
end run
