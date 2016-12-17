repeat
	try
		do shell script "ping -c 5 google.com"
	on error
		display dialog "You are not connected to the internet"
		delay 5
		display notification "Internet is down"
		repeat 10 times
			set volume 12
			say "Your internet is down"
			beep
		end repeat
	end try
	delay 15
end repeat