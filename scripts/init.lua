Tracker:AddItems("items/items.json")
Tracker:AddItems("items/options.json")

Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tabs.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/settings.json")

Tracker:AddMaps("maps/overworld.json")

ScriptHost:LoadScript("scripts/logic/logic.lua")

Tracker:AddLocations("locations/Overworld.json")

ScriptHost:LoadScript("scripts/autotracking.lua")