local tbl = 
{
	
	{
		g_func = "d([[[SkillProfile] - Gather Attempt Check]])\nlocal node  = Player:GetTarget()\nlocal mytarget = Player:GetTarget()\n\nif node.gatherattempts <= (node.gatherattemptsmax - 2) then\n\t\td([[[SkillProfile] - Use SR/AW]])\n\t\treturn true\nelse\n\t\td([[[SkillProfile] - Skip SR/AW Until 2 Attempts Used]])\n\t\treturn false\nend",
		gpgt = 299,
		id = 8,
		legend = true,
		name = "Solid Reason - Ageless Words",
		singlecheck = false,
		singleuse = false,
	},
	
	{
		g_skfunc = "local g_target = Player:GetTarget().id\n\nd([[[SkillProfile] - WttW Check]])\n\nlocal botWttW = ActionList:Get(1, 26522)\nd([[[SkillProfile] - Obtained Botany WttW]])\nlocal minWttW = ActionList:Get(1, 26521)\nd([[[SkillProfile] - Obtained Mining WttW]])\n\nif table.valid(botWttW) and botWttW.usable and botWttW:IsReady() then\n\td([[[SkillProfile] - Use Botany WttW]])\n\tbotWttW:Cast(g_target)\n\treturn true\nend\nif table.valid(minWttW) and minWttW.usable and minWttW:IsReady() then\n\td([[[SkillProfile] - Use Mining WttW]])\n\tminWttW:Cast(g_target)\n\treturn true\nend\nif not botWttW:IsReady() and not minWttW:IsReady() then\n\treturn false\nend",
		id = -2,
		legend = true,
		name = "Assign Skill From Script",
		name2 = "Assign WttW",
		singlecheck = false,
		singleuse = false,
	},
}



return tbl