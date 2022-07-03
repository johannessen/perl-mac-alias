on run argv
	set thePath to item 1 of argv
	set theAlias to (POSIX file thePath) as alias
	tell application "Finder"
		if kind of theAlias is "Alias" then
			return POSIX path of ((original item of theAlias) as alias)
		end if
	end tell
end run
