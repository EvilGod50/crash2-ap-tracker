function slot_options(slotdata)
	
	options = slotdata["options"]
	
    if options["level_exit_locations"] ~= nil then
		local opt = Tracker:FindObjectForCode("levelexitlocations")
		local slotval = options["level_exit_locations"]
		if (opt) and (slotval == 1) then
			opt.Active = true
		end
	end
	
	-- Speedrun logic Slot settings
	if options["speedrun_logic"] ~= nil then
		for _, speed in ipairs(options["speedrun_logic"]) do
			speedstring = string.lower(speed)
			if speedstring == string.lower("red_gem_early") then
				local opt = Tracker:FindObjectForCode("redgemearly")
				if opt then
					opt.Active = true
				end
			end
			if speedstring == string.lower("road_to_ruin_gem") then
				local opt = Tracker:FindObjectForCode("roadtoruingem")
				if opt then
					opt.Active = true
				end
			end
			if speedstring == string.lower("ruination_skip_green") then
				local opt = Tracker:FindObjectForCode("ruinationskipgreen")
				if opt then
					opt.Active = true
				end
			end
		end
	end
	
	-- Fruit Sanity Slot Settings
	if options["fruit_sanity"] ~= nil then
		local opt = Tracker:FindObjectForCode("fruitsanity")
		local slotval = options["fruit_sanity"]
		if opt then
			opt.AcquiredCount = slotval
		end
		if options["exclude_difficult_wumpas"] ~= nil then
			local opt = Tracker:FindObjectForCode("excludedifficultwumpas")
			local slotval = options["exclude_difficult_wumpas"]
			if (opt) and (slotval == 1) then
				opt.Active = true
			end
		end
	end
	
	-- Life Sanity Slot Settings
	if options["life_sanity"] ~= nil then
		local opt = Tracker:FindObjectForCode("lifesanity")
		local slotval = options["life_sanity"]
		if (opt) and (slotval == 1) then
			opt.Active = true
		end
	end
	
	-- Entrance Randomizer Slot Settings
	if options["randomize_warp_destinations"] ~= nil then
		local opt = Tracker:FindObjectForCode("randomizewarpdestinations")
		local slotval = options["randomize_warp_destinations"]
		if (opt) and (slotval == 1) then
			opt.Active = true
		end
		-- Pull the randomized levels from slot data for logic
		if options["warp_room_destinations"] ~= nil then
			local opt = Tracker:FindObjectForCode("warproomdestinations")
			local slotval = options["warp_room_destinations"]
			if opt then
				opt.CurrentStage = slotval
			end
		end
		-- This was not required as we pull the locations directly from slotdata so any non-randomized will show vanilla
		-- if options["non_randomized_warp_destinations"] ~= nil then
		--	local opt = Tracker:FindObjectForCode("nonrandomizedwarpdestinations")
		--	local slotval = options["non_randomized_warp_destinations"]
		--	if opt then
		--		opt.CurrentStage = slotval
		--	end
		-- end
		-- Secret entrances have their own slotdata (Currently not randomized in the apworld)
		-- if options["secret_warp_room_entrances"] ~= nil then
		--	local opt = Tracker:FindObjectForCode("secretwarproomentrances")
		--	local slotval = options["secret_warp_room_entrances"]
		--	if opt then
		--		opt.CurrentStage = slotval
		--	end
		-- end
	end
	
	-- Gimmick Lock Slot Settings
	if options["gimmick_lock"] == 1 then
		local opt = Tracker:FindObjectForCode("gimmicklock")
		local slotval = options["gimmick_lock"]
		if (opt) and (slotval == 1) then
				opt.Active = true
		end
		if options["jetpack_lock_logic"] >= 1 then
			local opt = Tracker:FindObjectForCode("jetpacklocklogic")
			local slotval = options["jetpack_lock_logic"]
			if opt then
				opt.AcquiredCount = slotval
			end
			Tracker:FindObjectForCode("Jetpack").Active = false
		end
		if options["jetboard_lock_logic"] >= 1 then
			local opt = Tracker:FindObjectForCode("jetboardlocklogic")
			local slotval = options["jetboard_lock_logic"]
			if opt then
				opt.AcquiredCount = slotval
			end
			Tracker:FindObjectForCode("Jetboard").Active = false
		end
		if options["polar_lock_logic"] >= 1 then
			local opt = Tracker:FindObjectForCode("polarlocklogic")
			local slotval = options["polar_lock_logic"]
			if opt then
				opt.AcquiredCount = slotval
			end
			Tracker:FindObjectForCode("Polar").Active = false
		end
		if options["firefly_lock_logic"] >= 1 then
			local opt = Tracker:FindObjectForCode("fireflylocklogic")
			local slotval = options["firefly_lock_logic"]
			if opt then
				opt.AcquiredCount = slotval
			end
			Tracker:FindObjectForCode("Fireflies").Active = false
		end
	end
end
