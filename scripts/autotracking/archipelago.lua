ScriptHost:LoadScript("scripts/autotracking/item_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/location_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/slot_options.lua")

CUR_INDEX = -1

-- Used for debugging tables only
function dump_table(o, depth)
    if depth == nil then
        depth = 0
    end
    if type(o) == 'table' then
        local tabs = ('	'):rep(depth)
        local tabs2 = ('	'):rep(depth + 1)
        local s = '{\n'
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. tabs2 .. '[' .. k .. '] = ' .. dump_table(v, depth + 1) .. ',\n'
        end
        return s .. tabs .. '}'
    else
        return tostring(o)
    end
end

if Highlight then
    highlightstatus = {
		[0] = Highlight.Unspecified,
        [10] = Highlight.NoPriority,
        [20] = Highlight.Avoid,
        [30] = Highlight.Priority,
        [40] = Highlight.None,
    }
end

function onClear(slotdata)

    CUR_INDEX = -1
	
    -- reset locations
    for _, slotdata in pairs(LOCATION_MAPPING) do
        for _, loc in pairs(slotdata) do
            if loc then
                local loc_obj = Tracker:FindObjectForCode(loc)
                if loc_obj then
                    if loc:sub(1, 1) == "@" then
                        loc_obj.AvailableChestCount = loc_obj.ChestCount
                        loc_obj.Highlight = 0
                    else
                        loc_obj.Active = false
                    end
                end
            end
        end
    end
	
    -- reset items
	Tracker:FindObjectForCode("Crystal").AcquiredCount = 0
	Tracker:FindObjectForCode("BlueGem").Active = false
	Tracker:FindObjectForCode("RedGem").Active = false
	Tracker:FindObjectForCode("GreenGem").Active = false
	Tracker:FindObjectForCode("YellowGem").Active = false
	Tracker:FindObjectForCode("PurpleGem").Active = false
	Tracker:FindObjectForCode("Polar").Active = true
	Tracker:FindObjectForCode("Jetpack").Active = true
	Tracker:FindObjectForCode("Jetboard").Active = true
	Tracker:FindObjectForCode("Fireflies").Active = true
	
	-- reset options
	Tracker:FindObjectForCode("levelexitlocations").Active = false
	Tracker:FindObjectForCode("redgemearly").Active = false
	Tracker:FindObjectForCode("roadtoruingem").Active = false
	Tracker:FindObjectForCode("ruinationskipgreen").Active = false
	Tracker:FindObjectForCode("fruitsanity").AcquiredCount = 0
	Tracker:FindObjectForCode("excludedifficultwumpas").Active = false
	Tracker:FindObjectForCode("lifesanity").Active = false
	Tracker:FindObjectForCode("randomizewarpdestinations").Active = false
	Tracker:FindObjectForCode("gimmicklock").Active = false
	Tracker:FindObjectForCode("jetpacklocklogic").AcquiredCount = 0
	Tracker:FindObjectForCode("jetboardlocklogic").AcquiredCount = 0
	Tracker:FindObjectForCode("polarlocklogic").AcquiredCount = 0
	Tracker:FindObjectForCode("fireflylocklogic").AcquiredCount = 0
	
	connected = true
	slot_options(slotdata)
	warp_room_destinations(slotdata)
	
	if options["life_count_checks"] ~= nil then
		lifes = options["life_count_checks"]
	end
	
	player_id = Archipelago.PlayerNumber or -1
	team_number = Archipelago.TeamNumber or 0
	
	if Archipelago.PlayerNumber > -1 then											
		hints_id = "_read_hints_"..team_number.."_"..player_id
		world_id = "Crash2_"..team_number.."_"..player_id
	    if Highlight then
            Archipelago:SetNotify({hints_id, world_id})
            Archipelago:Get({hints_id, world_id})		
		else
            Archipelago:SetNotify({hints_id})
            Archipelago:Get({hints_id})
        end
    end
end

-- Setup Warp Room Rando
function warp_room_destinations(slotdata)
	if slotdata["warp_room_destinations"] ~= nil then
		local warp = slotdata["warp_room_destinations"]
		warproom1 = {warp[5], warp[4], warp[3], warp[2], warp[1]}
		warproom2 = {warp[10], warp[9], warp[8], warp[7], warp[6]}
		warproom3 = {warp[15], warp[14], warp[13], warp[12], warp[11]}
		warproom4 = {warp[20], warp[19], warp[18], warp[17], warp[16]}
		warproom5 = {warp[25], warp[24], warp[23], warp[22], warp[21]}
	end
end

function onItem(index, item_id, item_name, player_number)
    if index <= CUR_INDEX then
        return
    end
	
    CUR_INDEX = index;
	local itemnospace = item_name:gsub("%s", "")
	local itemtracker = Tracker:FindObjectForCode(itemnospace)
	if (itemtracker) ~= nil then
		if itemtracker.Type == "toggle" then
			itemtracker.Active = true
		elseif itemtracker.Type == "consumable" then
			itemtracker.AcquiredCount = itemtracker.AcquiredCount + itemtracker.Increment
		else
			print ("onItem: failed to find item code", item_code, itemtracker.Type)
		end
	end	
end

function onLocation(location_id, location_name)
    local l = LOCATION_MAPPING[location_id]
    if not l or not l[1] then
        print ("onLocation: failed to find location code", location_id, location_name)
        return
    end

    for _, location in pairs(l) do
        local location_obj = Tracker:FindObjectForCode(location)
        if location_obj then
            if location:sub(1, 1) == "@" then
                location_obj.AvailableChestCount = location_obj.AvailableChestCount - 1
            else
                location_obj.Active = false
            end
        else
            print ("onLocation: failed to find location object", location)
        end
    end
end

function onNotify(key, value, old_value)
    if value ~= nil and value ~= 0 then
        if key == hints_id then
			for _, hint in ipairs(value) do
				updateHints(hint.location, hint.status)
			end
		end
    end
end
				 
function onNotifyLaunch(key, value)
    onNotify(key, value)
end

function updateHints(locationnum, status)
    if not Highlight then 
		return
	end
	
	local locations = LOCATION_MAPPING[locationnum]
    for _, location in ipairs(locations) do
        local obj = Tracker:FindObjectForCode(location)
        if obj then
			obj.Highlight = PriorityToHighlight[status]
        end
	end
end
	   
Archipelago:AddClearHandler("clear handler", onClear)
Archipelago:AddItemHandler("item handler", onItem)
Archipelago:AddLocationHandler("location handler", onLocation)

Archipelago:AddSetReplyHandler("notify handler", onNotify)
Archipelago:AddRetrievedHandler("notify launch handler", onNotifyLaunch)