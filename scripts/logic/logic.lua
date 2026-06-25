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
		if (lifes[1] == life) or (lifes[2] == life) or (lifes[3] == life) or (lifes[4] == life) or (lifes[5] == life) or (lifes[6] == life) or (lifes[7] == life) or (lifes[8] == life) or (lifes[9] == life) or (lifes[10] == life) or (lifes[11] == life) or (lifes[12] == life) or (lifes[13] == life) or (lifes[14] == life) or (lifes[15] == life) or (lifes[16] == life) or (lifes[17] == life) or (lifes[18] == life) or (lifes[19] == life) or (lifes[20] == life) or (lifes[21] == life) or (lifes[22] == life) or (lifes[23] == life) or (lifes[24] == life) or (lifes[25] == life) or (lifes[26] == life) or (lifes[27] == life) or (lifes[28] == life) or (lifes[29] == life) or (lifes[30] == life) or (lifes[31] == life) or (lifes[32] == life) or (lifes[33] == life) or (lifes[34] == life) or (lifes[35] == life) or (lifes[36] == life) or (lifes[37] == life) or (lifes[38] == life) or (lifes[39] == life) or (lifes[40] == life) or (lifes[41] == life) or (lifes[42] == life) or (lifes[43] == life) or (lifes[44] == life) or (lifes[45] == life) or (lifes[46] == life) or (lifes[47] == life) or (lifes[48] == life) or (lifes[49] == life) or (lifes[50] == life) or (lifes[51] == life) or (lifes[52] == life) or (lifes[53] == life) or (lifes[54] == life) or (lifes[55] == life) or (lifes[56] == life) or (lifes[57] == life) or (lifes[58] == life) or (lifes[59] == life) or (lifes[60] == life) or (lifes[61] == life) or (lifes[62] == life) or (lifes[63] == life) or (lifes[64] == life) or (lifes[65] == life) or (lifes[66] == life) or (lifes[67] == life) or (lifes[68] == life) or (lifes[69] == life) or (lifes[70] == life) or (lifes[71] == life) or (lifes[72] == life) or (lifes[73] == life) or (lifes[74] == life) or (lifes[75] == life) or (lifes[76] == life) or (lifes[77] == life) or (lifes[78] == life) or (lifes[79] == life) or (lifes[80] == life) or (lifes[81] == life) or (lifes[82] == life) or (lifes[83] == life) or (lifes[84] == life) or (lifes[85] == life) or (lifes[86] == life) or (lifes[87] == life) or (lifes[88] == life) or (lifes[89] == life) or (lifes[90] == life) or (lifes[91] == life) or (lifes[92] == life) or (lifes[93] == life) or (lifes[94] == life) or (lifes[95] == life) then
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