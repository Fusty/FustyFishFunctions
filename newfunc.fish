function newfunc

    if count $argv > 0

	set -l filename (echo $argv | sed -e 's/\.fish$//g')

	if not test -e ~/.config/fish/functions/$filename.fish 
		echo -e "function $filename\n\t#Function Guts Go Here\nend" > ~/.config/fish/functions/$filename.fish 

	end

        vi ~/.config/fish/functions/$filename.fish

    else

        echo "I need a function name"

    end

end
