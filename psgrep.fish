function psgrep
	set value (ps aux | grep $argv | grep -v grep)
	if count $value
		echo $value
	else
		set_color red;echo "No Processes Found!"
	end
end
