function shish
	if count $argv > 0
		set countArgs (count $argv)
		set otherArgs (echo "")

		if count $argv > 1
			set otherArgs (echo $argv[2..$countArgs])
		end

		switch $argv[1]
		case maple
			ssh $otherArgs fusty@maple.itsalti.com
		case ftb
			ssh $otherArgs ftb@ftb.mcnsa.com
		case mdjd
			ssh $otherArgs mdjd@10.0.0.84
		end
	else
		echo "I need something here . . ."
	end
end
