local tbl = 
{
	
	{
		ephemeral = true,
		g_skfunc = "--- g_skfunc(itemid, buffDB ,normal_data , collect_data , node_data)\n--- d(itemid) , d(buffDB) , d(normal_data)-- normal gather widowdata , d(collect_data)-- collectable windowdata  ;then you can get datainside from console\n--- d(node_data) -- node specific recorded data\n\nif table.valid(collect_data) then\n    \n\t--- value from collectable_window\n    local chance = collect_data.chance\n    local rarity = collect_data.rarity\n    local attempt = collect_data.attempt\n    local scour_gain = collect_data.scour_gain\n    local brazen_gain = collect_data.brazen_gain\n    local meticulous_gain = collect_data.meticulous_gain\n    local meticulous_chance = collect_data.meticulous_chance\n    local intuition_percentage = collect_data.intuition_percentage\n    local job = Player.job\n\tlocal gp_current = Player.gp.current\n\tlocal gp_start = node_data.startgp\n\tlocal attemptmax = collect_data.attemptmax\n\n\n\t--- get recorded scrutiny gain value\n    local scrutiny_gain = Settings.MadaoGather.GMP[itemid].scrutiny or 200 \n\n    --- collect skill ids\n    local scour_id = job == 16 and 22182 or 22186\n    local brazen_id = job == 16 and 22183 or 22187\n    local meti_id = job == 16 and 22184 or 22188\n    local scrutiny_id = job == 16 and 22185 or 22189\n    local min_wise_id = 26521\n\tlocal bot_wise_id = 26522\n    local solid_id = job == 16 and 232 or 215\n    local ptouch_id = job == 16 and 34871 or 34872\n\t\n\t--- solid / ageless and WttW\n\tif rarity == 1000 then\n\t\tif Player.level >= 90 and attempt <= (attemptmax - 1) then\n        \tlocal min_wise = ActionList:Get(1, min_wise_id)\n\t\t\tlocal bot_wise = ActionList:Get(1, bot_wise_id)\n        \tif table.valid(min_wise) and min_wise:IsReady() then\n            \treturn min_wise_id\n        \tend\n\t\t\tif table.valid(bot_wise) and bot_wise:IsReady() then\n            \treturn bot_wise_id\n        \tend\n\t\tend\n        if gp_current >= 300 and attempt <= (attemptmax - 2) then\n            return solid_id\n        end\n    end\n\n\t--- priming touch\n\tif rarity < 1000 and gp_start >= 800 and gp_start < 1000 and Player.level >= 95 and gp_current >= 400 and not buffDB[3910] and not buffDB[3911] then\n\t\treturn ptouch_id\n\tend\t\n\n\t--- finish rarity\n    if rarity < 1000 and attempt > 1 then\n\t\tif buffDB[3911] or buffDB[2418] or rarity + meticulous_gain >= 1000 then\n    \t\treturn meti_id\n    \telseif rarity + scour_gain >= 1000 then\n    \t\treturn scour_id\n    \telseif not buffDB[757] and gp_current >= 200 and rarity + meticulous_gain + scrutiny_gain >= 1000 then\n            return scrutiny_id\n        elseif not buffDB[757] and gp_current >= 200 and rarity + scour_gain + scrutiny_gain >= 1000 then\n            return scrutiny_id\n        end\n\tend\n\n\t--- maximize scrutiny\n\tif rarity < 1000 and attempt > 2 then\n\t\tif buffDB[3911] or buffDB[2418] then\n    \t\treturn meti_id\n    \telseif not buffDB[757] and gp_current >= 200 then\n\t\t\treturn scrutiny_id\n\t\telse\n    \t\treturn scour_id\n        end\n\tend\n\n\t--- fallback \n\tif gp_start >= 400 then\n    \tif not buffDB[757] and gp_current >= 200 then\n        \treturn scrutiny_id\n        end\n        return meti_id\n\telse\n    \t--spam brazen if lack of start gp\n        return brazen_id\n    end \nend\n",
		id = -2,
		legend = true,
		name = "Assign Skill From Script",
		name2 = "7.0 Collectable Skill Function",
		normal = true,
		singlecheck = false,
		singleuse = false,
		unspoil = true,
	},
}



return tbl