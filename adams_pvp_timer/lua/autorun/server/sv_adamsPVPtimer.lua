
hook.Add("Initialize", "whenTimerStart", function()


local warJuniver = 0
local USdeathBerries = 0
local NVdeathBerries = 0
local whoWon = 0

include("adamsPVPtimer_config.lua")

	hook.Add("PlayerDeath", "OnUSDead", function(victim, inflictor, attacker)
	if inflictor:IsValid() then
		if attacker:IsValid() then
			if table.HasValue(side1jobs, victim:Team()) and table.HasValue(side2jobs, attacker:Team()) then
				NVdeathBerries = NVdeathBerries + 1
			end
			if table.HasValue(side2jobs, victim:Team()) and table.HasValue(side1jobs, attacker:Team()) then
				USdeathBerries = USdeathBerries + 1
			end
		end
	end
	end)




	AdamsWarEnder = function()
		timer.Create( 
			"WarEnder", 
			war_length, 
			1, 
			function() 
				warJuniver = 0
				print( warJuniver )
				AdamsWarStarter()
				if NVdeathBerries == USdeathBerries then
					whoWon = 3
				end
				if USdeathBerries == 0 and NVdeathBerries == 0 then
					whoWon = 0
				end
				if USdeathBerries > NVdeathBerries then
					whoWon = 1
				end
				if NVdeathBerries > USdeathBerries then
					whoWon = 2
				end
			end 
		)
	end

	AdamsWarStarter = function()
		timer.Create( 
			"WarStarter", 
			peace_length, 
			1, 
			function() 
				warJuniver = 1
				print( warJuniver )
				AdamsWarEnder()
				USdeathBerries = 0
				NVdeathBerries = 0
			end 
		)
	end


	AdamsWarStarter()

hook.Add("Think", "YaboiWarTimerHookThinkServerString", function()
	SetGlobalString( "YaWarStarterString", math.ceil(timer.TimeLeft("WarStarter")) )
	SetGlobalString( "YaWarEnderString", math.ceil(timer.TimeLeft("WarEnder")) )
	SetGlobalString( "warJuniverette", warJuniver )
	SetGlobalString( "USpoints", USdeathBerries )
	SetGlobalString( "NVpoints", NVdeathBerries )
	SetGlobalString( "Winner", whoWon )
end)



end)









