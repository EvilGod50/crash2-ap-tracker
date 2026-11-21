--- Helpers to ease repeating functions for Logic

function has(item)
    if Tracker:ProviderCountForCode(item) == 1 then
		return true
	end
end