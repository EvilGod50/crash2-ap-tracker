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

-- Life Count Checks for visability
function lifecount(life)
	if (connected) then
		local lifec = tonumber(life)
		if (lifes[1] == lifec) or (lifes[2] == lifec) or (lifes[3] == lifec) or (lifes[4] == lifec) or (lifes[5] == lifec) or (lifes[6] == lifec) or (lifes[7] == lifec) or (lifes[8] == lifec) or (lifes[9] == lifec) or (lifes[10] == lifec) or (lifes[11] == lifec) or (lifes[12] == lifec) or (lifes[13] == lifec) or (lifes[14] == lifec) or (lifes[15] == lifec) or (lifes[16] == lifec) or (lifes[17] == lifec) or (lifes[18] == lifec) or (lifes[19] == lifec) or (lifes[20] == lifec) or (lifes[21] == lifec) or (lifes[22] == lifec) or (lifes[23] == lifec) or (lifes[24] == lifec) or (lifes[25] == lifec) or (lifes[26] == lifec) or (lifes[27] == lifec) or (lifes[28] == lifec) or (lifes[29] == lifec) or (lifes[30] == lifec) or (lifes[31] == lifec) or (lifes[32] == lifec) or (lifes[33] == lifec) or (lifes[34] == lifec) or (lifes[35] == lifec) or (lifes[36] == lifec) or (lifes[37] == lifec) or (lifes[38] == lifec) or (lifes[39] == lifec) or (lifes[40] == lifec) or (lifes[41] == lifec) or (lifes[42] == lifec) or (lifes[43] == lifec) or (lifes[44] == lifec) or (lifes[45] == lifec) or (lifes[46] == lifec) or (lifes[47] == lifec) or (lifes[48] == lifec) or (lifes[49] == lifec) or (lifes[50] == lifec) or (lifes[51] == lifec) or (lifes[52] == lifec) or (lifes[53] == lifec) or (lifes[54] == lifec) or (lifes[55] == lifec) or (lifes[56] == lifec) or (lifes[57] == lifec) or (lifes[58] == lifec) or (lifes[59] == lifec) or (lifes[60] == lifec) or (lifes[61] == lifec) or (lifes[62] == lifec) or (lifes[63] == lifec) or (lifes[64] == lifec) or (lifes[65] == lifec) or (lifes[66] == lifec) or (lifes[67] == lifec) or (lifes[68] == lifec) or (lifes[69] == lifec) or (lifes[70] == lifec) or (lifes[71] == lifec) or (lifes[72] == lifec) or (lifes[73] == lifec) or (lifes[74] == lifec) or (lifes[75] == lifec) or (lifes[76] == lifec) or (lifes[77] == lifec) or (lifes[78] == lifec) or (lifes[79] == lifec) or (lifes[80] == lifec) or (lifes[81] == lifec) or (lifes[82] == lifec) or (lifes[83] == lifec) or (lifes[84] == lifec) or (lifes[85] == lifec) or (lifes[86] == lifec) or (lifes[87] == lifec) or (lifes[88] == lifec) or (lifes[89] == lifec) or (lifes[90] == lifec) or (lifes[91] == lifec) or (lifes[92] == lifec) or (lifes[93] == lifec) or (lifes[94] == lifec) or (lifes[95] == lifec) then
		 	return true
		else 
			return false
		end
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