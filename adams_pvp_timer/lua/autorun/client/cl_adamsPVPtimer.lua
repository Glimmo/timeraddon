
include("adamsPVPtimer_config.lua")

local playa = LocalPlayer()

local calcW = function(w) 
	return ScrW() / 1280 * w
end

local calcH = function(h)
	return ScrH() / 600 * h 
end

surface.CreateFont( "ToeJammerSmall", {
	font = timerFont, -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = calcH(smallFontSide),
	weight = 1000,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

surface.CreateFont( "ToeJammerMed", {
	font = timerFont, -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = calcH(medFontSize),
	weight = 1000,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

surface.CreateFont( "ToeJammerBig", {
	font = timerFont, -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = calcH(largeFontSize),
	weight = 1000,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )
hook.Add( "HUDPaint", "warOclock1", function()
	
	
	if  GetGlobalString("warJuniverette", 0) == 0  then -- PEACE TIME
		
	
		draw.SimpleTextOutlined(
			peacetime_wording, -- WRITING
			"ToeJammerBig", 
			ScrW() / 2, 
			calcH(30), 
			Color(140,140,140), 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0)
		)
		
		draw.SimpleTextOutlined(
			"Next battle will commence in:", -- WRITING
			"ToeJammerSmall", 
			ScrW() / 2, 
			calcH(65), 
			Color(255,255,255), 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0)
		)
		
		draw.SimpleTextOutlined(
			string.NiceTime(GetGlobalString( "YaWarStarterString", "0" ))..".", -- WRITING
			"ToeJammerSmall", 
			ScrW() / 2, 
			calcH(85), 
			Color(255,255,255), 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0)
		)
		
		if GetGlobalString( "Winner", "0" ) == 0 then
		draw.SimpleTextOutlined(
			nopoints, -- WRITING
			"ToeJammerSmall", 
			ScrW() / 2, 
			calcH(50), 
			Color(155,155,155), 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0)
		)
		end

		if GetGlobalString( "Winner", "0" ) == 1 then
		draw.SimpleTextOutlined(
			side1win, -- WRITING
			"ToeJammerSmall", 
			ScrW() / 2, 
			calcH(50), 
			side1color, 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0)
		)
		end

		if GetGlobalString( "Winner", "0" ) == 2 then
		draw.SimpleTextOutlined(
			side2win, -- WRITING
			"ToeJammerSmall", 
			ScrW() / 2, 
			calcH(50), 
			side2color, 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0)
		)
		end

		if GetGlobalString( "Winner", "0" ) == 3 then
		draw.SimpleTextOutlined(
			tiebreaker, -- WRITING
			"ToeJammerSmall", 
			ScrW() / 2, 
			calcH(50), 
			Color(255, 255, 255), 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0)
		)
		end
		
		
	end
		
	if GetGlobalString("warJuniverette", 0) == 1 then -- WAR TIME
		
		
		draw.SimpleTextOutlined(
			wartime_wording, -- WRITING
			"ToeJammerBig", 
			ScrW() / 2, 
			calcH(30), 
			Color(200,0,0), 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0)
		)
		
		draw.SimpleTextOutlined(
			whenEndMsg, -- WRITING
			"ToeJammerSmall", 
			ScrW() / 2, 
			calcH(50), 
			Color(0,0,0), 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(255, 255, 255)
		)
		
		draw.SimpleTextOutlined(
			string.NiceTime(GetGlobalString( "YaWarEnderString", "0" ))..".", -- WRITING
			"ToeJammerSmall", 
			ScrW() / 2, 
			calcH(70), 
			Color(0,0,0), 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(255, 255, 255)
		)
		
		draw.SimpleTextOutlined(
			GetGlobalString( "NVpoints", "0" ), -- WRITING
			"ToeJammerBig", 
			ScrW() / 2 + calcW(180), 
			calcH(50), 
			side2color, 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0)
		)
		
		draw.SimpleTextOutlined(
			GetGlobalString( "USpoints", "0" ), -- WRITING
			"ToeJammerBig", 
			ScrW() / 2 - calcW(180), 
			calcH(50), 
			side1color, 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0)
		)
		
		draw.SimpleTextOutlined(
			side2short, -- WRITING
			"ToeJammerMed", 
			ScrW() / 2 + calcW(180), 
			calcH(25), 
			side2color, 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0 )
		)
		
		draw.SimpleTextOutlined(
			side1short, -- WRITING
			"ToeJammerMed", 
			ScrW() / 2 - calcW(180), 
			calcH(25), 
			side1color, 
			TEXT_ALIGN_CENTER, 
			TEXT_ALIGN_CENTER, 
			1, 
			Color(0, 0, 0)
		)
		
	end
	
end)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	