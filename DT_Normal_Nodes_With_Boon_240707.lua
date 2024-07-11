local tbl = 
{
	
	{
		addchain = "A",
		attemptfull = true,
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		gpgt = 349,
		hqchancegt = 39,
		hqchancelt = 48,
		id = 37,
		maxattemptgt = 7,
		name = "Mountaineer/Pioneer's Gift I",
		name2 = "A 8+ Integrity w Boon - Gift I",
		normal = true,
		singlecheck = true,
		singleuse = true,
	},
	
	{
		addchain = "B",
		attemptfull = true,
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		gpgt = 299,
		hqchancegt = 49,
		hqchancelt = 65,
		id = 38,
		maxattemptgt = 7,
		name = "Mountaineer/Pioneer's Gift II",
		name2 = "B 8+ Integrity w Boon - Gift II",
		normal = true,
		singlecheck = true,
		singleuse = true,
	},
	
	{
		addchain = "C",
		attemptfull = true,
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		gpgt = 199,
		hqchancegt = 79,
		id = 41,
		maxattemptgt = 7,
		name = "Nald'thal/Nophica's Tidings",
		name2 = "C 8+ Integrity w Boon - Tidings",
		normal = true,
		singlecheck = true,
		singleuse = true,
	},
	
	{
		addchain = "D",
		attemptfull = true,
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		chainNot = "C",
		gpgt = 499,
		id = 3,
		maxattemptgt = 7,
		name = "King's Yield II - Blessed Harvest II",
		name2 = "D 8+ Integrity wo Boon - KY2/BH2",
		normal = true,
		singlecheck = true,
		singleuse = true,
		skip = false,
	},
	
	{
		addchain = "E",
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		buffsNot = "1286",
		g_func = "d([[[SkillProfile] - BY/BH check]])\nlocal gatherlist = Player:GetGatherableSlotList()\nlocal playergather = Player:GetStats(72)\nlocal reqlvl = 0\nlocal reqgather = 0\n\nfor _, item in pairs(gatherlist) do\n    if (itemid == item.id) then \n        reqlvl = item.requiredlevel\n\t\td([[[SkillProfile] - Required level of item is ]] .. reqlvl)\n    end\nend\n\nif reqlvl <= 459 then\n\td([[[SkillProfile] - Node is not supported - BY/BH Usage Allowed]])\n\treturn true\n\telseif reqlvl > 699 then reqgather = (((reqlvl - 700)*10)+5085)*1.1\n\telseif reqlvl > 689 then reqgather = (((reqlvl - 690)*10)+4965)*1.1\n\telseif reqlvl > 679 then reqgather = (((reqlvl - 680)*10)+4845)*1.1\n\telseif reqlvl > 669 then reqgather = (((reqlvl - 670)*10)+4725)*1.1\n\telseif reqlvl > 659 then reqgather = (((reqlvl - 660)*10)+4605)*1.1\n\telseif reqlvl > 649 then reqgather = (((reqlvl - 650)*10)+4485)*1.1\n\telseif reqlvl > 639 then reqgather = (((reqlvl - 640)*10)+4365)*1.1\n\telseif reqlvl > 629 then reqgather = (((reqlvl - 630)*10)+4245)*1.1\n\telseif reqlvl > 619 then reqgather = (((reqlvl - 620)*10)+4125)*1.1\n\telseif reqlvl > 609 then reqgather = (((reqlvl - 610)*10)+4005)*1.1\n\telseif reqlvl > 599 then reqgather = (((reqlvl - 600)*10)+3885)*1.1\n\telseif reqlvl > 589 then reqgather = (((reqlvl - 590)*10)+3765)*1.1\n\telseif reqlvl > 579 then reqgather = (((reqlvl - 580)*10)+3645)*1.1\n\telseif reqlvl > 569 then reqgather = (((reqlvl - 570)*10)+3525)*1.1\n\telseif reqlvl > 559 then reqgather = (((reqlvl - 560)*10)+3420)*1.1\n\telseif reqlvl > 539 then reqgather = (((reqlvl - 540)*10)+3210)*1.1\n\telse \t\t\t\t\t reqgather = (((reqlvl - 460)*10)+2400)*1.1\nend\n\n\nif reqgather > 0 then\n\tif playergather >= reqgather then\n\t\td([[[SkillProfile] - Bountiful Gives 3 Hits - BY/BH Usage Allowed]])\n\t\treturn true\n\telse\n\t\td([[[SkillProfile] - Bountiful Gives < 3 Hits - BY/BH Usage Skipped]])\n\t\treturn false\n\tend\nend",
		gpgt = 99,
		id = 10,
		maxattemptgt = 5,
		maxattemptlt = 7,
		name = "Bountiful Yield II - Bountiful Harvest II",
		name2 = "E 6/7 Integrity +3y BY2/BH2",
		normal = true,
		singlecheck = false,
		singleuse = false,
		skip = false,
	},
	
	{
		addchain = "F",
		attemptfull = true,
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		chainNot = "E",
		gpgt = 349,
		hqchancegt = 39,
		hqchancelt = 48,
		id = 37,
		maxattemptgt = 5,
		maxattemptlt = 7,
		name = "Mountaineer/Pioneer's Gift I",
		name2 = "F 6/7 Integrity <3y w Boon - Gift I",
		normal = true,
		singlecheck = true,
		singleuse = true,
	},
	
	{
		addchain = "G",
		attemptfull = true,
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		chainNot = "E",
		ephemeral = true,
		gpgt = 299,
		hqchancegt = 49,
		hqchancelt = 65,
		id = 38,
		legend = true,
		maxattemptgt = 5,
		maxattemptlt = 7,
		name = "Mountaineer/Pioneer's Gift II",
		name2 = "G 6/7 Integrity <3y w Boon - Gift II",
		normal = true,
		singlecheck = true,
		singleuse = true,
		unspoil = true,
	},
	
	{
		addchain = "H",
		attemptfull = true,
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		chainNot = "E",
		gpgt = 199,
		hqchancegt = 79,
		id = 41,
		maxattemptgt = 5,
		maxattemptlt = 7,
		name = "Nald'thal/Nophica's Tidings",
		name2 = "H 6/7 Integrity <3y w Boon - Tidings",
		normal = true,
		singlecheck = true,
		singleuse = true,
	},
	
	{
		addchain = "I",
		attemptfull = true,
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		chainNot = "E, H",
		gpgt = 499,
		id = 3,
		maxattemptgt = 5,
		maxattemptlt = 7,
		name = "King's Yield II - Blessed Harvest II",
		name2 = "I 6/7 Integrity <3y wo Boon - KY2/BH2",
		normal = true,
		singlecheck = true,
		singleuse = true,
	},
	
	{
		addchain = "J",
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		buffsNot = "1286",
		g_func = "d([[[SkillProfile] - BY/BH check]])\nlocal gatherlist = Player:GetGatherableSlotList()\nlocal playergather = Player:GetStats(72)\nlocal reqlvl = 0\nlocal reqgather = 0\n\nfor _, item in pairs(gatherlist) do\n    if (itemid == item.id) then \n        reqlvl = item.requiredlevel\n\t\td([[[SkillProfile] - Required level of item is ]] .. reqlvl)\n    end\nend\n\nif reqlvl <= 459 then\n\td([[[SkillProfile] - Node is not supported - BY/BH Usage Allowed]])\n\treturn true\n\telseif reqlvl > 699 then reqgather = (((reqlvl - 700)*10)+5085)*1.1\n\telseif reqlvl > 689 then reqgather = (((reqlvl - 690)*10)+4965)*1.1\n\telseif reqlvl > 679 then reqgather = (((reqlvl - 680)*10)+4845)*1.1\n\telseif reqlvl > 669 then reqgather = (((reqlvl - 670)*10)+4725)*1.1\n\telseif reqlvl > 659 then reqgather = (((reqlvl - 660)*10)+4605)*1.1\n\telseif reqlvl > 649 then reqgather = (((reqlvl - 650)*10)+4485)*1.1\n\telseif reqlvl > 639 then reqgather = (((reqlvl - 640)*10)+4365)*1.1\n\telseif reqlvl > 629 then reqgather = (((reqlvl - 630)*10)+4245)*1.1\n\telseif reqlvl > 619 then reqgather = (((reqlvl - 620)*10)+4125)*1.1\n\telseif reqlvl > 609 then reqgather = (((reqlvl - 610)*10)+4005)*1.1\n\telseif reqlvl > 599 then reqgather = (((reqlvl - 600)*10)+3885)*1.1\n\telseif reqlvl > 589 then reqgather = (((reqlvl - 590)*10)+3765)*1.1\n\telseif reqlvl > 579 then reqgather = (((reqlvl - 580)*10)+3645)*1.1\n\telseif reqlvl > 569 then reqgather = (((reqlvl - 570)*10)+3525)*1.1\n\telseif reqlvl > 559 then reqgather = (((reqlvl - 560)*10)+3420)*1.1\n\telseif reqlvl > 539 then reqgather = (((reqlvl - 540)*10)+3210)*1.1\n\telse \t\t\t\t\t reqgather = (((reqlvl - 460)*10)+2400)*1.1\nend\n\n\nif reqgather > 0 then\n\tif playergather >= reqgather then\n\t\td([[[SkillProfile] - Bountiful Gives 3 Hits - BY/BH Usage Allowed]])\n\t\treturn true\n\telse\n\t\td([[[SkillProfile] - Bountiful Gives < 3 Hits - BY/BH Usage Skipped]])\n\t\treturn false\n\tend\nend",
		gpgt = 99,
		id = 10,
		maxattemptgt = 4,
		maxattemptlt = 5,
		name = "Bountiful Yield II - Bountiful Harvest II",
		name2 = "J 5 Integrity +3y - BY2/BH2",
		normal = true,
		singlecheck = false,
		singleuse = false,
	},
	
	{
		addchain = "K",
		attemptfull = true,
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		chainNot = "J",
		gpgt = 349,
		hqchancegt = 39,
		hqchancelt = 48,
		id = 37,
		name = "Mountaineer/Pioneer's Gift I",
		name2 = "K 5 Integrity <3y w Boon - Gift I",
		normal = true,
		singlecheck = true,
		singleuse = true,
	},
	
	{
		addchain = "L",
		attemptfull = true,
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		chainNot = "J",
		gpgt = 299,
		hqchancegt = 49,
		hqchancelt = 65,
		id = 38,
		name = "Mountaineer/Pioneer's Gift II",
		name2 = "L 5 Integrity <3y w Boon - Gift II",
		normal = true,
		singlecheck = true,
		singleuse = true,
	},
	
	{
		addchain = "M",
		attemptfull = true,
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		chainNot = "J",
		gpgt = 199,
		hqchancegt = 79,
		id = 41,
		name = "Nald'thal/Nophica's Tidings",
		name2 = "M 5 Integrity <3y w Boon - Tidings",
		normal = true,
		singlecheck = true,
		singleuse = true,
	},
	
	{
		addchain = "N",
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		buffsNot = "1286",
		chainNot = "J, M",
		g_func = "local node  = Player:GetTarget()\nlocal hqreq = 80\n\nif node.gatherattemptsmax <= hqreq  then\n\t\treturn true\nelse\n\t\treturn false\nend",
		gpgt = 99,
		id = 10,
		maxattemptgt = 4,
		maxattemptlt = 5,
		name = "Bountiful Yield II - Bountiful Harvest II",
		name2 = "N 5 Integrity <3y wo Boon - BY2/BH2",
		normal = true,
		singlecheck = false,
		singleuse = false,
	},
	
	{
		blacklist = "2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19",
		g_func = "d([[[SkillProfile] - GP Cap check]])\nlocal playergpmax = Player:GetStats(10)\nlocal playergptar = playergpmax - 50\n\nif Player.GP.current > playergptar  then\n\t\td([[[SkillProfile] - Using BY/BH, GP exceeds ]] .. playergptar)\n\t\treturn true\nelse\n\t\treturn false\nend\n",
		id = 10,
		maxattemptlt = 4,
		name = "Bountiful Yield II - Bountiful Harvest II",
		name2 = "O <4 Integrity - GP Cap - BY2/BH2",
		normal = true,
		singlecheck = false,
		singleuse = true,
	},
}



return tbl