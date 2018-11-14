

--[[ TIMER FONT
	For fonts, you can use any that are on your computer. Such as go into
	MS Paint and use the text tool and see what kinds of fonts there are. 
	Type in the exact name of the font in the variable below. 
	CAUTION: Not every computer has the same fonts. If a player cant see the writing or sees
	squares instead of words, then he doesn't have the font you're using and you'll need
	to change it.]]

timerFont = "Calibri"

smallFontSide = 16
medFontSize = 24
largeFontSize = 28



-- TIMER CONFIG

	war_length = 10 -- in seconds

	peace_length = 10 -- in seconds
	
	
	
-- WORDING CONFIG
	
	peacetime_wording = "CEASE FIRE"
	
	wartime_wording = "FIGHT"
	
	nopoints = "Nobody won last battle..." -- If neither side has any points.
	side1win = "The police won last battle!" -- Said if side 1 wins.
	side2win = "The gangsters won last battle!" -- Said if side 2 wins.
	tiebreaker = "Last battle was a tie breaker!" -- Said if both sides have the same amount of points.
	
	whenEndMsg = "Battle will end in:"
	whenStartMsg = "Battle will commence in:"



-- SIDE 1 CONFIG
	side1name = "The Good Guys"
	side1short = "Police" -- A short version of the name that goes above points if side name is too long.
	side1color = Color(0, 0, 255)

	side1jobs = {
		TEAM_POLICE, 
		TEAM_CHIEF, 
		TEAM_CITIZEN
		}



-- SIDE 2 CONFIG
	side2name = "The Bad Guys"
	side2color = Color(255, 0, 0)
	side2short = "Criminals" -- A short version of the name that goes above points if side name is too long.

	side2jobs = {
		TEAM_GANGSTER, 
		TEAM_MOBBOSS,
		TEAM_CITIZEN,
		}


