-- Fruit Sanity visability 
function wumpasanity(fruit)
    if fruit == "bundle" and Tracker:ProviderCountForCode("fruitsanity") == 1 then
		return true
	elseif fruit == "full" and Tracker:ProviderCountForCode("fruitsanity") == 2 then
		return true
	elseif fruit == "exclude" and Tracker:ProviderCountForCode("excludedifficultwumpas") == 0 then
		return true
	end
end

-- Gimmick Lock Logic
function jetpacklogic(logic)
	if logic == "normal" then 
		if has("jetpack") or Tracker:ProviderCountForCode("jetpacklocklogic") >= 2 then
			return true
		end
	elseif logic == "lunatic" then
		if has("jetpack") or Tracker:ProviderCountForCode("jetpacklocklogic") == 3 then
			return true
		end
 	end
end
function jetboardlogic()
	if has("jetboard") or Tracker:ProviderCountForCode("jetboardlocklogic") >= 2 then
		return true
	end
end
function polarlogic(logic)
	if logic == "normal" then 
		if has("polar") or Tracker:ProviderCountForCode("polarlocklogic") >= 2 then
			return true
		end
	elseif logic == "lunatic" then
		if has("polar") or Tracker:ProviderCountForCode("polarlocklogic") == 3 then
			return true
		end
 	end
end
function fireflylogic(logic)
	if logic == "normal" then
		if has("fireflies") or Tracker:ProviderCountForCode("fireflylocklogic") >= 2 then
			return true
		end
	elseif logic == "lunatic" then
		if has("fireflies") or Tracker:ProviderCountForCode("fireflylocklogic") == 3 then
			return true
		end
	end
end

-- Ability Lock Logic
function abilitylocklogic(level, loc)
	if Tracker:ProviderCountForCode("abilitylocklogic") == 0 then
		if level == "turtlewoods" then
			if loc == "boxgem" then
				if has("slam") and has("slide") and has("slidejump") then
					return true
				elseif has("slam") then
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "snowgo" then
			if loc == "redgemearly" then
				if has("slam") and has("slide") and has("slidejump") and has("highjumpspin") then
					return true
				end
			elseif loc == "redgem" then
				if has("slide") and has("jumpspin") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "boxgem" then
				if has("slide") and has("slidejump") or (has("groundspin") and (has("slam") or has("crouchjump"))) then
					return true
				elseif has("slam") or has("crouchjump") and (has("highjumpspin") or has("groundspin") or has("jumpspin")) then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") or has("groundspin") or (has("crouchjump") and has("highjumpspin")) then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "secret" then
				if has("slide") and has("jumpspin") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "secretnitro2" then
				if has("slide") and has("jumpspin") and has("slidejump") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "secret2wall" then
				if has("slide") and has("jumpspin") and (has("crouchjump") or has("slidejump")) then
					return true
				elseif has("crouchjump") or has("slide") and has("slidejump") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "secretstash" then
				if has("slide") and has("jumpspin") and (has("crouchjump") or has("slam")) then
					return true
				elseif has("crouchjump") or (has("slide") and has("slidejump")) or has("slam") then
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "hangeight" then
			if loc == "timer" then
				if has("slide") or has("jumpspin") or has("groundspin") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "boxgem" then
				if has("jumpspin") or has("groundspin") or (has("slide") and has("slidejump")) or (has("crouchjump") and has("highjumpspin")) then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "bonus1" then
				if has("slide") or has("crawl") then
					return true
				end
			elseif loc == "bonus2-4" then
				if has("slide") or has("crawl") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "thepits" then
			if loc == "boxgem" then
				if has("slam") and has("slide") and has("crawl") then
					return true
				end
			elseif loc == "bonus" then
				if has("slide") or has("crawl") then
					return true
				end
			end
		elseif level == "crashdash" then
			if loc == "boxgem" then
				if (has("groundspin") or has("slide") and has("slidespin")) and (has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or (has("slide") and has("slidejump") and has("highjumpspin"))) then
					return true
				elseif has("slide") or has("groundspin") or has("jumpspin") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "bonus" then
				if has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or (has("slide") and has("slidejump") and has("highjumpspin")) then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "snowbiz" then
			if loc == "boxgem" then
				if has("slam") and (has("crouchjump") and has("highjumpspin") or (has("slide") or has("groundspin")) and (has("slide") and has("slidejump") or has("crouchjump")) and (has("groundspin") or has("jumpspin"))) then
					return true
				elseif has("slam") and (has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or has("slide")) then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "redgem" then
				if has("slam") then
					return true
				end
			end
		elseif level == "aircrash" then
			if loc == "boxgem" then
				if has("slam") then
					return true
				end
			elseif loc == "jump" then
				if has("slam") then
					return true
				elseif has("slam") or (has("slide") and has("slidejump")) then
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "bearit" then
			if loc == "boxgem" then
				if has("slide") and has("slidejump") and has("highjumpspin") and has("groundjump") or has("polar") then
					return true
				elseif has("slam") or has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or has("polar") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "wumpa" then
				if has("slide") and has("slidejump") or has("polar") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") and has("slidejump") and has("highjumpspin") or has("polar") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "crashcrush" then
			if loc == "boxgem" then
				if has("slide") and has("slidejump") and has("slam") then
					return true
				elseif has("slam") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "bonusbelow" then
				if has("crawl") and has("slide") then
					return true
				elseif has("crawl") or has("slide") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "fence" then
				if has("crawl") or has("slide") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "fencejump" then
				if has("slide") and has("slidejump") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "bonus" then
				if has("slide") and has("slidejump") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end	
		elseif level == "theeeldeal" then
			if loc == "boxgem" then 
				if has("slam") then
					return true
				end
			elseif loc == "bonus" then
				if has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or has("slam") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end				
			end
		elseif level == "komodo" then
			if has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
				return true
			end
		elseif level == "plantfood" then
			if loc == "yellowgem" then
				if has("slide") and has("slidejump") or has("jumpspin") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "boxgem" then
				if has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return true
				elseif has("slam") or has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "bonus" then
				if (has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin"))) and (has("slam") or (has("slide") and has("slidejump")) or hnas("crouchjump")) then
					return true
				elseif has("slam") or has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "sewerorlater" then
			if loc == "boxgem" then
				if has("slide") and has("slam") then
					return true
				end
			elseif loc == "metalboxes" then
				if has("slide") or has("crawl") then
					return true
				end
			elseif loc == "bonus" then
				if has("slide") then
					return true
				elseif has("slide") or (has("crouchjump") and has("highjumpspin")) then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "roadtoruin" then
			if loc == "boxgem" then
				if has("slide") and has("slidejump") and has("highjumpspin") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "death" then
				if has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or (has("slide") and has("slidejump") and has("highjumpspin")) then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "un-bearable" then
			if loc == "boxgem" then
				if has("slam") and has("slide") and has("slidejump") and (has("slidespin") or has("polar")) then
					return true
				elseif has("slam") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "secret" then
				if has("slide") and (has("crouchjump") or has("slidejump")) then
					return true
				elseif has("slam") or has("crouchjump") or (has("slide") and has("slidejump")) then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "bonus" then
				if has("slide") and has("slidejump") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "exit" then
				if has("slide") and has("slidejump") and has("slidespin") or has("polar") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "hanginout" then
			if loc == "general" then
				if has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "boxgem" then
				if has("slide") or has("slam") and (has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin"))) then
					return true
				elseif has("slam") or has("slide") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "bonus" then
				if has("crouchjump") and (has("jumpspin") or has("groundspin") or has("highjumpspin")) or has("slide") then
					return true
				elseif has("slam") or has("crouchjump") and (has("jumpspin") or has("groundspin") or has("highjumpspin")) or has("slide") then
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "digginit" then
			if loc == "boxgem" then
				if has("slam") and (has("slide") or has("crawl")) and (has("groundspin") or has("jumpspin")) then
					return true
				elseif has("slam") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") or has("crawl") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "exit" then
				if (has("slide") or has("crawl")) and (has("groundspin") or has("jumpspin")) then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "secret" then
				if has("slam") and (has("slide") or has("crawl")) and (has("groundspin") or has("jumpspin")) then
					return true
				elseif has("slam") then
					return AccessibilityLevel.SequenceBreak
				end	
			end	
		elseif level == "coldhardcrash" then
			if loc == "boxgem" then
				if has("slide") and has("slidejump") or has("crouchjump") and has("highjumpspin") then
					return true
				elseif has("slam") or has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return true
				elseif has("slam") or has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "wall" then
				if (has("slide") or has("groundspin") or has("jumpspin")) and (has("slide") and has("slidejump") or has("crouchjump")) then
					return true
				elseif (has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin"))) and (has("slam") or (has("slide") and has("slidejump")) or has("crouchjump")) then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "crusher" then
				if has("slide") or has("groundspin") or has("jumpspin") then
					return true
				elseif has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "ruination" then
			if loc == "boxgem" then
				if has("slam") then
					return true
				end
			elseif loc == "greengemskip" then
				if has("slide") and has("slidejump") and has("highjumpspin") or (has("greengem") and has("jumpspin")) then
					return true
				elseif has("slide") and has("slidejump") or has("greengem") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "greengem" then
				if has("jumpspin") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "bee-having" then
			if loc == "boxgem" then
				if has("slide") and has("dig") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") and has("dig") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "secret" then
				if has("slide") and has("dig") and has("slidejump") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "1up" then
				if has("slide") and has("dig") and (has("slidejump") or has("slam") or has("crouchjump")) then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "pistonitaway" then
			if loc == "boxgem" then
				if has("slide") and has("slidejump") and has("highjumpspin") then
					return true
				elseif has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or has("slam") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "bonus" then
				if has("slide") and has("slidejump") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "death" then
				if has("slide") and (has("slidejump") or has("crouchjump")) then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "rockit" then
			if loc == "boxgem" then
				if has("slide") and has("slidejump") and has("highjumpspin") or has("jetpack") then
					return true
				elseif has("slam") or has("jumpspin") or has("highjumpspin") and (has("crouchjump") or (has("slide") and has("slidejump"))) or has("jetpack") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "ring1" then
				if has("slide") and (has("slidejump") and has("highjumpspin") or has("slidespin")) or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or has("jetpack") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "ring2" then
				if has("slam") and has("slide") and has("slidejump") and has("highjumpspin") or has("jetpack") then
					return true
				elseif has("slam") or (has("slide") and has("slidejump") and has("highjumpspin")) or has("jetpack") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "exit" then
				if has("slide") and has("slidejump") and has("highjumpspin") or has("jetpack") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "nightfight" then
			if loc == "boxgem" then
				if has("slide") and (has("crouchjump") or has("slidejump") or has("jumpspin")) then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "bonus4-6" then
				if has("slide") and has("crawl") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "bonus3" then
				if has("slide") and has("crawl") then
					return true
				elseif has("slide") then
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "packattack" then
			if loc == "boxgem" then
				if has("slide") and has("slidejump") and has("highjumpspin") and has("jumpspin") or has("jetpack") then
					return true
				elseif has("jumpspin") or (has("slide") and has("slidejump") and has("highjumpspin")) or has("jetpack") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "akuaku" then
				if has("slide") and has("slidejump") and has("highjumpspin") or has("jetpack") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "check1" then
				if has("slide") and (has("slidejump") and has("highjumpspin") or has("slidespin")) or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or has("jetpack") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "check2" then
				if (has("crouchjump") or (has("slidejump") and has("highjumpspin"))) and (has("slide") and (has("slidejump") and has("highjumpspin") or has("slidejump")) or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin"))) or has("jetpack") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "exit" then
				if has("slide") and has("slidejump") and has("highjumpspin") or has("jetpack") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "crystal" then
				if has("slide") and has("slidejump") and has("highjumpspin") or has("jetpack") then
					return true
				end
			end
		elseif level == "spacedout" then
			if loc == "boxgem" then
				if has("slam") and has("slide") and (has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin"))) then
					return true
				elseif has("slam") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") or has("groundspin") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "gems" then
				if has("slide") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "platform" then
				if has("slide") and (has("crouchjump") or has("slidejump")) or has("groundspin") and has("crouchjump") then
					return true
				elseif has("crouchjump") or has("slide") and has("slidejump") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "exit" then
				if has("slide") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "totallybear" then
			if loc == "general" then
				if has("slide") and has("slidejump") or has("polar") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		elseif level == "totallyfly" then
			if loc == "boxgem" then
				if has("slide") and has("slam") then
					return true
				elseif has("slam") then
					return AccessibilityLevel.SequenceBreak
				end
			elseif loc == "general" then
				if has("slide") then
					return true
				else
					return AccessibilityLevel.SequenceBreak
				end
			end
		end
	elseif Tracker:ProviderCountForCode("abilitylocklogic") == 1 then
		if level == "turtlewoods" then
			if loc == "boxgem" then
				if has("slam") then
					return true
				end
			end
		elseif level == "snowgo" then
			if loc == "redgemearly" then
				if has("slam") and has("slide") and has("slidejump") and has("highjumpspin") then
					return true
				end
			elseif loc == "boxgem" then
				if has("slide") and has("slidejump") or has("slam") or (has("crouchjump") and (has("groundspin") or has("jumpspin") or has("highjumpspin"))) then
					return true
				end
			elseif loc == "secret2wall" then
				if has("crouchjump") or has("slide") and has("slidejump") then
					return true
				end
			elseif loc == "secretstash" then
				if has("crouchjump") or (has("slide") and has("slidejump")) or has("slam") then
					return true
				end
			else
				return true
			end
		elseif level == "hangeight" then
			if loc == "bonus1" then
				if has("slide") or has("crawl") then
					return true
				end
			else
				return true
			end
		elseif level == "thepits" then
			if loc == "boxgem" then
				if has("slam") and has("slide") and has("crawl") then
					return true
				end
			elseif loc == "bonus" then
				if has("slide") or has("crawl") then
					return true
				end
			end
		elseif level == "crashdash" then
			if loc == "boxgem" then
				if has("slide") or has("groundspin") or has("jumpspin") then
					return true
				end
			else
				return true
			end
		elseif level == "snowbiz" then
			if loc == "boxgem" then
				if has("slam") and (has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or has("slide")) then
					return true
				end
			elseif loc == "redgem" then
				if has("slam") then
					return true
				end
			end
		elseif level == "aircrash" then
			if loc == "boxgem" then
				if has("slam") then
					return true
				end
			elseif loc == "jump" then
				if has("slam") or (has("slide") and has("slidejump")) then
					return true
				end
			end
		elseif level == "bearit" then
			if loc == "boxgem" then
				if has("slam") or has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or has("polar") then
					return true
				end
			else
				return true
			end
		elseif level == "crashcrush" then
			if loc == "boxgem" then
				if has("slam") then
					return true
				end
			elseif loc == "bonusbelow" then
				if has("crawl") or has("slide") then
					return true
				end
			else
				return true
			end
		elseif level == "theeeldeal" then
			if loc == "boxgem" then 
				if has("slam") then
					return true
				end
			else
				return true				
			end
		elseif level == "komodo" then
			if has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
				return true
			end
		elseif level == "plantfood" then
			if loc == "boxgem" then
				if has("slam") or has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return true
				end
			elseif loc == "bonus" then
				if has("slam") or has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return true
				end
			else
				return true
			end
		elseif level == "sewerorlater" then
			if loc == "boxgem" then
				if has("slide") and has("slam") then
					return true
				end
			elseif loc == "metalboxes" then
				if has("slide") or has("crawl") then
					return true
				end
			elseif loc == "bonus" then
				if has("slide") or (has("crouchjump") and has("highjumpspin")) then
					return true
				end
			else
				return true
			end
		elseif level == "un-bearable" then
			if loc == "boxgem" then
				if has("slam") then
					return true
				end
			elseif loc == "secret" then
				if has("slam") or has("crouchjump") or (has("slide") and has("slidejump")) then
					return true
				end
			else
				return true
			end
		elseif level == "hanginout" then
			if loc == "boxgem" then
				if has("slam") or has("slide") then
					return true
				end
			elseif loc == "bonus" then
				if has("slam") or has("crouchjump") and (has("jumpspin") or has("groundspin") or has("highjumpspin")) or has("slide") then
					return true
				end
			else
				return true
			end
		elseif level == "digginit" then
			if loc == "boxgem" then
				if has("slam") then
					return true
				end
			elseif loc == "secret" then
				if has("slam") then
					return true
				end
			else
				return true
			end
		elseif level == "coldhardcrash" then
			if loc == "boxgem" then
				if has("slam") or has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return true
				end
			elseif loc == "general" then
				if has("slam") or has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return true
				end
			elseif loc == "wall" then
				if (has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin"))) and (has("slam") or (has("slide") and has("slidejump")) or has("crouchjump")) then
					return true
				end
			elseif loc == "crusher" then
				if has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) then
					return true
				end
			end
		elseif level == "ruination" then
			if loc == "boxgem" then
				if has("slam") then
					return true
				end
			elseif loc == "greengemskip" then
				if has("slide") and has("slidejump") or has("greengem") then
					return true
				end
			else
				return true
			end
		elseif level == "pistonitaway" then
			if loc == "boxgem" then
				if has("slide") or has("groundspin") or has("jumpspin") or (has("crouchjump") and has("highjumpspin")) or has("slam") then
					return true
				end
			else
				return true
			end
		elseif level == "rockit" then
			if loc == "boxgem" then
				if has("slam") or has("jumpspin") or has("highjumpspin") and (has("crouchjump") or (has("slide") and has("slidejump"))) or has("jetpack") then
					return true
				end
			elseif loc == "ring2" then
				if has("slam") or (has("slide") and has("slidejump") and has("highjumpspin")) or has("jetpack") then
					return true
				end
			else
				return true
			end
		elseif level == "nightfight" then
			if loc == "bonus3" then
				if has("slide") then
					return true
				end
			else
				return true
			end
		elseif level == "packattack" then
			if loc == "boxgem" then
				if has("jumpspin") or (has("slide") and has("slidejump") and has("highjumpspin")) or has("jetpack") then
					return true
				end
			elseif loc == "crystal" then
				if has("slide") and has("slidejump") and has("highjumpspin") or has("jetpack") then
					return true
				end
			else
				return true
			end
		elseif level == "spacedout" then
			if loc == "boxgem" then
				if has("slam") then
					return true
				end
			elseif loc == "platform" then
				if has("crouchjump") or has("slide") and has("slidejump") then
					return true
				end
			else
				return true
			end
		elseif level == "totallyfly" then
			if loc == "boxgem" then
				if has("slam") then
					return true
				end
			else
				return true
			end
		else
			return true
		end
	end
end

-- Life Count Checks for visability
function lifecount(life)
	if connected then
		local lifec = tonumber(life)
		if lifes[1] == lifec or lifes[2] == lifec or lifes[3] == lifec or lifes[4] == lifec or lifes[5] == lifec or lifes[6] == lifec or lifes[7] == lifec or lifes[8] == lifec or lifes[9] == lifec or lifes[10] == lifec or lifes[11] == lifec or lifes[12] == lifec or lifes[13] == lifec or lifes[14] == lifec or lifes[15] == lifec or lifes[16] == lifec or lifes[17] == lifec or lifes[18] == lifec or lifes[19] == lifec or lifes[20] == lifec or lifes[21] == lifec or lifes[22] == lifec or lifes[23] == lifec or lifes[24] == lifec or lifes[25] == lifec or lifes[26] == lifec or lifes[27] == lifec or lifes[28] == lifec or lifes[29] == lifec or lifes[30] == lifec or lifes[31] == lifec or lifes[32] == lifec or lifes[33] == lifec or lifes[34] == lifec or lifes[35] == lifec or lifes[36] == lifec or lifes[37] == lifec or lifes[38] == lifec or lifes[39] == lifec or lifes[40] == lifec or lifes[41] == lifec or lifes[42] == lifec or lifes[43] == lifec or lifes[44] == lifec or lifes[45] == lifec or lifes[46] == lifec or lifes[47] == lifec or lifes[48] == lifec or lifes[49] == lifec or lifes[50] == lifec or lifes[51] == lifec or lifes[52] == lifec or lifes[53] == lifec or lifes[54] == lifec or lifes[55] == lifec or lifes[56] == lifec or lifes[57] == lifec or lifes[58] == lifec or lifes[59] == lifec or lifes[60] == lifec or lifes[61] == lifec or lifes[62] == lifec or lifes[63] == lifec or lifes[64] == lifec or lifes[65] == lifec or lifes[66] == lifec or lifes[67] == lifec or lifes[68] == lifec or lifes[69] == lifec or lifes[70] == lifec or lifes[71] == lifec or lifes[72] == lifec or lifes[73] == lifec or lifes[74] == lifec or lifes[75] == lifec or lifes[76] == lifec or lifes[77] == lifec or lifes[78] == lifec or lifes[79] == lifec or lifes[80] == lifec or lifes[81] == lifec or lifes[82] == lifec or lifes[83] == lifec or lifes[84] == lifec or lifes[85] == lifec or lifes[86] == lifec or lifes[87] == lifec or lifes[88] == lifec or lifes[89] == lifec or lifes[90] == lifec or lifes[91] == lifec or lifes[92] == lifec or lifes[93] == lifec or lifes[94] == lifec or lifes[95] == lifec then
		 	return true
		end
	end
end

--Level Access Logic for Warp Room Destination's
function levelaccess(level)
	if level == "turtlewoods" and connected then
		local leveldec = 30
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "snowgo" and connected then
		local leveldec = 14
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "hangeight" and connected then
		local leveldec = 25
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "thepits" and connected then
		local leveldec = 31
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "crashdash" and connected then
		local leveldec = 24
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "snowbiz" and connected then
		local leveldec = 17
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "aircrash" and connected then
		local leveldec = 32
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "bearit" and connected then
		local leveldec = 29
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "crashcrush" and connected then
		local leveldec = 27
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "theeeldeal" and connected then
		local leveldec = 35
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "plantfood" and connected then
		local leveldec = 33
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "sewerorlater" and connected then
		local leveldec = 10
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "beardown" and connected then
		local leveldec = 34
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "roadtoruin" and connected then
		local leveldec = 22
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "un-bearable" and connected then
		local leveldec = 23
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "hanginout" and connected then
		local leveldec = 13
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "digginit" and connected then
		local leveldec = 21
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "coldhardcrash" and connected then
		local leveldec = 19
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "ruination" and connected then
		local leveldec = 15
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "bee-having" and connected then
		local leveldec = 36
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "pistonitaway" and connected then
		local leveldec = 16
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "rockit" and connected then
		local leveldec = 18
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "nightfight" and connected then
		local leveldec = 12
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "packattack" and connected then
		local leveldec = 26
		if warproomcheck(leveldec) == true then
			return true
		end
	elseif level == "spacedout" and connected then
		local leveldec = 38
		if warproomcheck(leveldec) == true then
			return true
		end
	end
end
function warproomcheck(leveldec)
	if warproom1[5] == leveldec or warproom1[4] == leveldec or warproom1[3] == leveldec or warproom1[2] == leveldec or warproom1[1] == leveldec then
		return true
	elseif Tracker:FindObjectForCode("@Warp Room/Ripper Roo Defeated").AvailableChestCount == 0 and (warproom2[5] == leveldec or warproom2[4] == leveldec or warproom2[3] == leveldec or warproom2[2] == leveldec or warproom2[1] == leveldec) then
		return true
	elseif Tracker:FindObjectForCode("@Warp Room/Komodo Brothers Defeated").AvailableChestCount == 0 and (warproom3[5] == leveldec or warproom3[4] == leveldec or warproom3[3] == leveldec or warproom3[2] == leveldec or warproom3[1] == leveldec) then
		return true
	elseif Tracker:FindObjectForCode("@Warp Room/Tiny Tiger Defeated").AvailableChestCount == 0 and (warproom4[5] == leveldec or warproom4[4] == leveldec or warproom4[3] == leveldec or warproom4[2] == leveldec or warproom4[1] == leveldec) then
		return true
	elseif Tracker:FindObjectForCode("@Warp Room/Dr. N. Gin Defeated").AvailableChestCount == 0 and (warproom5[5] == leveldec or warproom5[4] == leveldec or warproom5[3] == leveldec or warproom5[2] == leveldec or warproom5[1] == leveldec) then
		return true
	end
end