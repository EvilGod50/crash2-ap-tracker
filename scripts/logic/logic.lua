-- Fruit Sanity Logic
function fruitbundles()
    if Tracker:ProviderCountForCode("fruitsanity") == 1 then
		return true
	else
		return false
	end
end
function fullsanity()
	if Tracker:ProviderCountForCode("fruitsanity") == 2 then
		return true
	else
		return false
	end
end
function excludedifficultwumpas()
	if Tracker:ProviderCountForCode("excludedifficultwumpas") == 1 then
		return false
	else
		return true
	end
end

-- Gimmick Lock Logic
function jetpacklocklogic()
	if (Tracker:ProviderCountForCode("jetpack") == 1) or (Tracker:ProviderCountForCode("jetpacklocklogic") == 3) then
		return true
	else
		return false
 	end
end
function jetpacklocklogic2()
	if (Tracker:ProviderCountForCode("jetpack") == 1) or (Tracker:ProviderCountForCode("jetpacklocklogic") >= 2) then
		return true
	else
		return false
 	end
end
function jetboardlocklogic()
	if (Tracker:ProviderCountForCode("jetboard") == 1) or (Tracker:ProviderCountForCode("jetboardlocklogic") >= 2) then
		return true
	else
		return false
	end
end
function polarlocklogic()
	if (Tracker:ProviderCountForCode("polar") == 1) or (Tracker:ProviderCountForCode("polarlocklogic") == 3) then
		return true
	else
		return false
 	end
end
function polarlocklogic2()
	if (Tracker:ProviderCountForCode("polar") == 1) or (Tracker:ProviderCountForCode("polarlocklogic") >= 2) then
		return true
	else
		return false
 	end
end
function fireflylocklogic()
	if (Tracker:ProviderCountForCode("fireflies") == 1) or (Tracker:ProviderCountForCode("fireflylocklogic") == 3) then
		return true
	else
		return false
 	end
end
function fireflylocklogic2()
	if (Tracker:ProviderCountForCode("fireflies") == 1) or (Tracker:ProviderCountForCode("fireflylocklogic") >= 2) then
		return true
	else
		return false
 	end
end

--Level Access Logic for Warp Room Destination's
function levelaccess(level)
	if (level == "turtlewoods") and (connected) then
		local leveldec = 30
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "snowgo") and (connected) then
		local leveldec = 14
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "hangeight") and (connected) then
		local leveldec = 25
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "thepits") and (connected) then
		local leveldec = 31
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "crashdash") and (connected) then
		local leveldec = 24
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "snowbiz") and (connected) then
		local leveldec = 17
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "aircrash") and (connected) then
		local leveldec = 32
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "bearit") and (connected) then
		local leveldec = 29
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "crashcrush") and (connected) then
		local leveldec = 27
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "theeeldeal") and (connected) then
		local leveldec = 35
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "plantfood") and (connected) then
		local leveldec = 33
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "sewerorlater") and (connected) then
		local leveldec = 10
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "beardown") and (connected) then
		local leveldec = 34
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "roadtoruin") and (connected) then
		local leveldec = 22
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "un-bearable") and (connected) then
		local leveldec = 23
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "hanginout") and (connected) then
		local leveldec = 13
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "digginit") and (connected) then
		local leveldec = 21
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "coldhardcrash") and (connected) then
		local leveldec = 19
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "ruination") and (connected) then
		local leveldec = 15
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "bee-having") and (connected) then
		local leveldec = 36
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "pistonitaway") and (connected) then
		local leveldec = 16
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "rockit") and (connected) then
		local leveldec = 18
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "nightfight") and (connected) then
		local leveldec = 12
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "packattack") and (connected) then
		local leveldec = 26
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
	if (level == "spacedout") and (connected) then
		local leveldec = 38
		if warproomcheck(leveldec) == true then
			return true
		else
			return false
		end
	end
end
function warproomcheck(leveldec)
	if (warproom1[5] == leveldec) or (warproom1[4] == leveldec) or (warproom1[3] == leveldec) or (warproom1[2] == leveldec) or (warproom1[1] == leveldec) then
		return true
	elseif ((Tracker:ProviderCountForCode("crystal") >= 5) and ((warproom2[5] == leveldec) or (warproom2[4] == leveldec) or (warproom2[3] == leveldec) or (warproom2[2] == leveldec) or (warproom2[1] == leveldec))) then
		return true
	elseif ((Tracker:ProviderCountForCode("crystal") >= 10) and ((warproom3[5] == leveldec) or (warproom3[4] == leveldec) or (warproom3[3] == leveldec) or (warproom3[2] == leveldec) or (warproom3[1] == leveldec))) then
		return true
	elseif ((Tracker:ProviderCountForCode("crystal") >= 15) and ((warproom4[5] == leveldec) or (warproom4[4] == leveldec) or (warproom4[3] == leveldec) or (warproom4[2] == leveldec) or (warproom4[1] == leveldec))) then
		return true
	elseif ((Tracker:ProviderCountForCode("crystal") >= 20) and ((warproom5[5] == leveldec) or (warproom5[4] == leveldec) or (warproom5[3] == leveldec) or (warproom5[2] == leveldec) or (warproom5[1] == leveldec))) then
		return true
	else
		return false
	end
end