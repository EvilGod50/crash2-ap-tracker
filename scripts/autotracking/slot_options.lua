function slot_options(slotdata)
	
	options = slotdata["options"]
	
    if options["level_exit_locations"] == 1 then
		Tracker:FindObjectForCode("levelexitlocations").Active = true
	end
	
	-- Speedrun logic Slot settings
	if options["speedrun_logic"] ~= nil then
		for _, speed in ipairs(options["speedrun_logic"]) do
			speedstring = string.lower(speed)
			if speedstring == string.lower("red_gem_early") then
				Tracker:FindObjectForCode("redgemearly").Active = true
			end
			if speedstring == string.lower("road_to_ruin_gem") then
				Tracker:FindObjectForCode("roadtoruingem").Active = true
			end
			if speedstring == string.lower("ruination_skip_green") then
				Tracker:FindObjectForCode("ruinationskipgreen").Active = true
			end
		end
	end
	
	-- Fruit Sanity Slot Settings
	if options["fruit_sanity"] ~= nil then
		local slotval = options["fruit_sanity"]
		Tracker:FindObjectForCode("fruitsanity").AcquiredCount = slotval
		if options["exclude_difficult_wumpas"] == 1 then
			Tracker:FindObjectForCode("excludedifficultwumpas").Active = true
		end
	end
	
	-- Life Sanity Slot Settings
	if options["life_sanity"] == 1 then
		Tracker:FindObjectForCode("lifesanity").Active = true
	end
	
	-- Entrance Randomizer Slot Settings
	if options["randomize_warp_destinations"] == 1 then
		Tracker:FindObjectForCode("randomizewarpdestinations").Active = true
		-- Pull the randomized levels from slot data for logic
		if options["warp_room_destinations"] ~= nil then
			local slotval = options["warp_room_destinations"]
			Tracker:FindObjectForCode("warproomdestinations").CurrentStage = slotval
		end
		-- This was not required as we pull the locations directly from slotdata so any non-randomized will show vanilla
		-- if options["non_randomized_warp_destinations"] ~= nil then
		--		local slotval = options["non_randomized_warp_destinations"]
		--		Tracker:FindObjectForCode("nonrandomizedwarpdestinations").CurrentStage = slotval
		-- end
		-- Secret entrances have their own slotdata (Currently not randomized in the apworld), logic is handled by direct level access with their secret exits instead
		-- if options["secret_warp_room_entrances"] ~= nil then
		-- 		local slotval = options["secret_warp_room_entrances"]
		--		Tracker:FindObjectForCode("secretwarproomentrances").CurrentStage = slotval
		-- end
	end
	
	-- Gimmick Lock Slot Settings
	if options["gimmick_lock"] == 1 then
		Tracker:FindObjectForCode("gimmicklock").Active = true
		if options["jetpack_lock_logic"] >= 1 then
			local slotval = options["jetpack_lock_logic"]
			Tracker:FindObjectForCode("jetpacklocklogic").AcquiredCount = slotval
			Tracker:FindObjectForCode("Jetpack").Active = false
		end
		if options["jetboard_lock_logic"] >= 1 then
			local slotval = options["jetboard_lock_logic"]
			Tracker:FindObjectForCode("jetboardlocklogic").AcquiredCount = slotval
			Tracker:FindObjectForCode("Jetboard").Active = false
		end
		if options["polar_lock_logic"] >= 1 then
			local slotval = options["polar_lock_logic"]
			Tracker:FindObjectForCode("polarlocklogic").AcquiredCount = slotval
			Tracker:FindObjectForCode("Polar").Active = false
		end
		if options["firefly_lock_logic"] >= 1 then
			local slotval = options["firefly_lock_logic"]
			Tracker:FindObjectForCode("fireflylocklogic").AcquiredCount = slotval
			Tracker:FindObjectForCode("Fireflies").Active = false
		end
	end
	
	-- Ability Lock Slot Settings
	if options["ability_lock"] == 1 then
		Tracker:FindObjectForCode("abilitylock").Active = true
		local slotval = options["ability_lock_logic"]
		Tracker:FindObjectForCode("abilitylocklogic").AcquiredCount = slotval
		Tracker:FindObjectForCode("Crawl").Active = false
		Tracker:FindObjectForCode("Slide").Active = false
		Tracker:FindObjectForCode("GroundSpin").Active = false
		Tracker:FindObjectForCode("SlideSpin").Active = false
		Tracker:FindObjectForCode("JumpSpin").Active = false
		Tracker:FindObjectForCode("HighJumpSpin").Active = false
		Tracker:FindObjectForCode("Slam").Active = false
		Tracker:FindObjectForCode("CrouchJump").Active = false
		Tracker:FindObjectForCode("SlideJump").Active = false
		Tracker:FindObjectForCode("Dig").Active = false
	end
end
