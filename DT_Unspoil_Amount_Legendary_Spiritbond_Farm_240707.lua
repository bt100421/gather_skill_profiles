local tbl = 
{
	
	{
		g_skfunc = "local amin = ActionList:Get(1, 26521)\nlocal abot = ActionList:Get(1, 26522)\namin:Cast()\nabot:Cast()\n",
		id = -2,
		legend = true,
		name = "Assign Skill From Script",
		singlecheck = false,
		singleuse = false,
	},
	
	{
		g_func = "d([[[SkillProfile] - Gather Attempt Check]])\nlocal node  = Player:GetTarget()\nlocal mytarget = Player:GetTarget()\n\nif node.gatherattempts <= (node.gatherattemptsmax - 2) then\n\t\td([[[SkillProfile] - Use SR/AW]])\n\t\treturn true\nelse\n\t\td([[[SkillProfile] - Skip SR/AW Until 2 Attempts Used]])\n\t\treturn false\nend",
		gpgt = 299,
		id = 8,
		legend = true,
		name = "Solid Reason - Ageless Words",
		singlecheck = false,
		singleuse = false,
	},
}



return tbl