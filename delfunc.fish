function delfunc
    if count $argv > 0
	if not [ $argv = "delfunc" ]
		set -l filename (echo $argv | sed -e 's/\.fish$//g')
        	rm ~/.config/fish/functions/$filename.fish
	else
		echo "Please don't delete delfunc!"
	end
    else
        echo "I need a function name . . ."
    end
end
