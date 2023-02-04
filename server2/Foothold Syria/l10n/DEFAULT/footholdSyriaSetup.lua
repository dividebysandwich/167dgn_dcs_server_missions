function merge(tbls)
	local res = {}
	for i,v in ipairs(tbls) do
		for i2,v2 in ipairs(v) do
			table.insert(res,v2)
		end
	end
	
	return res
end

function allExcept(tbls, except)
	local tomerge = {}
	for i,v in pairs(tbls) do
		if i~=except then
			table.insert(tomerge, v)
		end
	end
	return merge(tomerge)
end

upgrades = {
	ships = {
		blue = {'blueShip','blueShip','blueShip'},
		red = {'redShipS','redShipS','redShipM','redShipM','redShipL','redShipL'}
	},
	ships2 = {
		blue = {'blueShip'},
		red = {'redShipS','redShipS','redShipM','redShipM','redShipXL'}
	},
	carrier = {
		blue = {'blueShip'},
		red = {'redShipS'}
	},
	airfield = {
		blue = {'blueInfantry','blueSHORAD', 'bluePD'},
		red = {'redInfantry','redSHORAD', 'redPD'}
	},
	airfield2 = {
		blue = {'blueInfantry','blueSHORAD', 'bluePD'},
		red = {'redInfantry','redSHORAD', 'redPD2'}
	},
	generic = {
		blue = {'blueInfantry', 'blueArmor', 'blueSHORAD'},
		red = {'redInfantry','redArmor', 'redSHORAD'}
	},
	merad = {
		blue = {'blueSHORAD', 'blueMERAD'},
		red = {'redSHORAD', 'redMERAD'}
	},
	lorad = {
		blue = {'blueSHORAD', 'blueMERAD', 'bluePD'},
		red = {'redSHORAD', 'redLORAD', 'redPD'}
	},
	sa5 = {
		blue = {'blueSHORAD', 'blueLORAD'},
		red = {'redSHORAD','redSA5'}
	},
	insAirfield = {
		blue = {'blueInfantry','blueSHORAD', 'bluePD'},
		red = {'insInfantry','insArmor', 'insSHORAD'}
	},
	insGeneric = {
		blue = {'blueInfantry','blueSHORAD'},
		red = {'insInfantry','insArmor','insInfantry','insArmor', 'insSHORAD'}
	},
	insMaximum = {
		blue = {'blueInfantry'},
		red = {'insInfantry','insArmor','insInfantry','insArmor', 'insSHORAD','insInfantry','insArmor', 'insSHORAD'}
	},
	insMinimum = {
		blue = {'blueInfantry','blueSHORAD'},
		red = {'insInfantry', 'insSHORAD'}
	},
	insSAM = {
		blue = {'blueSHORAD', 'blueMERAD', 'bluePD'},
		red = {'insSHORAD', 'insSHORAD', 'insSHORAD'}
	},
	ewr = {
		blue = {'blueInfantry'},
		red = {'redEWR','redSHORAD'}
	},
	milbase = {
		blue = {'blueInfantry', 'blueArmor'},
		red = {'redInfantry','redArmor', 'redSHORAD','redArmor','redArmor'}
	},
	bigSAM = {
		blue = {'blueAmmo', 'blueAmmo', 'blueAmmo', 'blueAmmo', 'blueAmmo', 'blueAmmo', 'blueLORAD'},
		red = {'redAmmo','redAmmo', 'redSA11'}
	},
	radarstrike = {
		blue = {'blueInfantry'},
		red = {'redRadar'}
	},
	insOutpost = {
		blue = {'blueInfantry'},
		red = {'insOutpost'}
	},
	insAmbush = {
		blue = {'blueInfantry'},
		red = {'insAmbush'}
	},
	minimal = {
		blue = {'blueInfantry'},
		red = {'redInfantry'}
	}
}
-- redInfantry, redArmor, redSHORAD, redMERAD, redLORAD, redPD, redSA5, redEWR
-- insInfantry, insArmor, insSHORAD
-- blueInfantry, blueArmor, blueSHORAD, blueMERAD, blueLORAD, bluePD
-- blueShip
-- redShipS, redShipM, redShipL

flavor = {
	incirlik = 'WPT 1\nStart zone',
	hatay = 'WPT 3\n',
	minakh = 'WPT 6\n',
	aleppo = 'WPT 7\n',
	taftanaz = 'WPT 9\nProvides Helicopter spawns for players if captured',
	jirah = 'WPT 18\nProvides Helicopter spawns for players if captured',
	tabqa = 'WPT 31\n',
	alduhur = 'WPT 15\nProvides Plane and Helicopter spawns for players if captured',
	alassad = 'WPT 12\n',
	hama = 'WPT 25\n',
	palmyra = 'WPT 43\n',
	powerplant = 'WPT 10\n+180 credits/hour',
	alpha = 'WPT 2\n',
	bravo = 'WPT 4\n',
	charlie = 'WPT 5\nEWR Site, can not be captured, destroy for 500 credits and reduced enemy patrols',
	delta = 'WPT 8\n',
	echo = 'WPT 45\n',
	foxtrot = 'WPT 19\n',
	golf = 'WPT 28\n',
	hotel = 'WPT 11\nSAM site',
	india = 'WPT 23\nSAM site',
	juliett = 'WPT 33\nSAM site',
	kilo = 'WPT 36\nEWR Site, can not be captured, destroy for 500 credits and reduced enemy patrols',
	foblima = 'WPT 26\nProvides Helicopter spawns for players if captured',
	fobmike = 'WPT 39\nProvides Helicopter spawns for players if captured',
	november = 'WPT 34\n',
	oscar = 'WPT 41\n',
	papa = 'WPT 21\nSpawns SA-11 or Patriot at max level',
	romeo = 'WPT 24\n',
	sierra= 'WPT 27\nStrike target, can not be captured, destroy for 500 credits', 
	tango= 'WPT 16\nInsurgent outpost, can not be captured, clear for 1000 credits', 
	uniform= 'WPT 38\nInsurgent outpost, can not be captured, clear for 1000 credits', 
	victor = 'WPT 14\nCrashed Blackhawk, ambushed by local insurgents, clear for 500 credits',
	substationnorth = 'WPT 17\nStrike target, can not be captured, destroy for 500 credits',
	durayhim = 'WPT 20\n',
	raqqa = 'WPT 30\n',
	dam = 'WPT 29\n+180 credits/hour',
	tv = 'WPT 32\nStrike target, can not be captured, destroy for 500 credits',
	sa5 = 'WPT 42\n',
	milbase = 'WPT 40\n',
	carrier = 'WPT 44\nStart zone',
	refinery = 'WPT 37\n+180 credits/hour',
	factory = 'WPT 22\n+180 credits/hour',
	substationwest = 'WPT 13\nStrike target, can not be captured, destroy for 500 credits',
	radio = 'WPT 35\nStrike target, can not be captured, destroy for 500 credits'
}
local filepath = 'footholdSyria_1.0.lua'
if lfs then 
	local dir = lfs.writedir()..'Missions/Saves/'
	lfs.mkdir(dir)
	filepath = dir..filepath
	env.info('Foothold - Save file path: '..filepath)
end
bc = BattleCommander:new(filepath, 10, 60)
zones = {
	incirlik = ZoneCommander:new({zone='Incirlik', side=2, level=1, upgrades=upgrades.minimal, crates={}, flavorText=flavor.incirlik}),
	hatay = ZoneCommander:new({zone='Hatay', side=1, level=3, upgrades=upgrades.airfield, crates={}, flavorText=flavor.hatay}),
	minakh = ZoneCommander:new({zone='Minakh', side=1, level=3, upgrades=upgrades.airfield2, crates={}, flavorText=flavor.minakh}),
	aleppo = ZoneCommander:new({zone='Aleppo', side=1, level=3, upgrades=upgrades.airfield, crates={}, flavorText=flavor.aleppo}),
	taftanaz = ZoneCommander:new({zone='Taftanaz', side=1, level=3, upgrades=upgrades.airfield2, crates={}, flavorText=flavor.taftanaz}),
	jirah = ZoneCommander:new({zone='Jirah', side=1, level=3, upgrades=upgrades.insAirfield, crates={}, flavorText=flavor.jirah}),
	tabqa = ZoneCommander:new({zone='Tabqa', side=1, level=3, upgrades=upgrades.insAirfield, crates={}, flavorText=flavor.tabqa}),
	alduhur = ZoneCommander:new({zone='Abu al-Duhur', side=1, level=3, upgrades=upgrades.airfield2, crates={}, flavorText=flavor.alduhur}),
	alassad = ZoneCommander:new({zone='Bassel Al-Assad', side=1, level=3, upgrades=upgrades.airfield, crates={}, flavorText=flavor.alassad}),
	hama = ZoneCommander:new({zone='Hama', side=1, level=3, upgrades=upgrades.airfield2, crates={}, flavorText=flavor.hama}),
	palmyra = ZoneCommander:new({zone='Palmyra', side=1, level=3, upgrades=upgrades.airfield2, crates={}, flavorText=flavor.palmyra}),
	powerplant = ZoneCommander:new({zone='Power Plant', side=1, level=3, upgrades=upgrades.generic, crates={}, flavorText=flavor.powerplant, income=0.5}),
	alpha = ZoneCommander:new({zone='FOB Alpha', side=2, level=1, upgrades=upgrades.minimal, crates={}, flavorText=flavor.alpha}),
	bravo = ZoneCommander:new({zone='Bravo', side=1, level=2, upgrades=upgrades.merad, crates={}, flavorText=flavor.bravo}),
	charlie = ZoneCommander:new({zone='Charlie', side=1, level=2, upgrades=upgrades.ewr, crates={}, flavorText=flavor.charlie}),
	delta = ZoneCommander:new({zone='Delta', side=1, level=2, upgrades=upgrades.merad, crates={}, flavorText=flavor.delta}),
	echo = ZoneCommander:new({zone='Echo', side=1, level=6, upgrades=upgrades.ships, crates={}, flavorText=flavor.echo}),
	foxtrot = ZoneCommander:new({zone='Foxtrot', side=1, level=5, upgrades=upgrades.insGeneric, crates={}, flavorText=flavor.foxtrot}),
	golf = ZoneCommander:new({zone='Golf', side=1, level=3, upgrades=upgrades.insSAM, crates={}, flavorText=flavor.golf}),
	hotel = ZoneCommander:new({zone='Hotel', side=1, level=3, upgrades=upgrades.lorad, crates={}, flavorText=flavor.hotel}),
	india = ZoneCommander:new({zone='India', side=1, level=3, upgrades=upgrades.lorad, crates={}, flavorText=flavor.india}),
	juliett = ZoneCommander:new({zone='Juliett', side=1, level=3, upgrades=upgrades.lorad, crates={}, flavorText=flavor.juliett}),
	kilo = ZoneCommander:new({zone='Kilo', side=1, level=2, upgrades=upgrades.ewr, crates={}, flavorText=flavor.kilo}),
	foblima = ZoneCommander:new({zone='FOB Lima', side=0, level=0, upgrades=upgrades.minimal, crates={}, flavorText=flavor.foblima}),
	fobmike = ZoneCommander:new({zone='FOB Mike', side=0, level=0, upgrades=upgrades.minimal, crates={}, flavorText=flavor.fobmike}),
	november = ZoneCommander:new({zone='November', side=1, level=3, upgrades=upgrades.generic, crates={}, flavorText=flavor.november}),
	oscar = ZoneCommander:new({zone='Oscar', side=1, level=2, upgrades=upgrades.insMinimum, crates={}, flavorText=flavor.oscar}),
	papa = ZoneCommander:new({zone='Papa', side=1, level=3, upgrades=upgrades.bigSAM, crates={}, flavorText=flavor.papa}),
	romeo = ZoneCommander:new({zone='Romeo', side=1, level=3, upgrades=upgrades.generic, crates={}, flavorText=flavor.romeo}),
	sierra = ZoneCommander:new({zone='Sierra', side=1, level=1, upgrades=upgrades.radarstrike, crates={}, flavorText=flavor.sierra}),
	tango = ZoneCommander:new({zone='Tango', side=1, level=1, upgrades=upgrades.insOutpost, crates={}, flavorText=flavor.tango}),
	uniform = ZoneCommander:new({zone='Uniform', side=1, level=1, upgrades=upgrades.insOutpost, crates={}, flavorText=flavor.uniform}),
	victor = ZoneCommander:new({zone='Victor', side=1, level=2, upgrades=upgrades.insAmbush, crates={}, flavorText=flavor.victor}),
	substationnorth = ZoneCommander:new({zone='Substation North', side=1, level=2, upgrades=upgrades.insMinimum, crates={}, flavorText=flavor.substationnorth}),
	durayhim = ZoneCommander:new({zone='Durayhim', side=1, level=5, upgrades=upgrades.insGeneric, crates={}, flavorText=flavor.durayhim}),
	raqqa = ZoneCommander:new({zone='Raqqa', side=1, level=8, upgrades=upgrades.insMaximum, crates={}, flavorText=flavor.raqqa}),
	dam = ZoneCommander:new({zone='Dam', side=1, level=5, upgrades=upgrades.insGeneric, crates={}, flavorText=flavor.dam, income=0.5}),
	tv = ZoneCommander:new({zone='TV Tower', side=1, level=2, upgrades=upgrades.insMinimum, crates={}, flavorText=flavor.tv}),
	sa5 = ZoneCommander:new({zone='SA-5', side=1, level=3, upgrades=upgrades.sa5, crates={}, flavorText=flavor.sa5}),
	milbase = ZoneCommander:new({zone='Military Base', side=1, level=5, upgrades=upgrades.milbase, crates={}, flavorText=flavor.milbase}),
	carrier = ZoneCommander:new({zone='Carrier Group', side=2, level=1, upgrades=upgrades.carrier, crates={}, flavorText=flavor.carrier}),
	refinery = ZoneCommander:new({zone='Refinery', side=1, level=3, upgrades=upgrades.generic, crates={}, flavorText=flavor.refinery, income=0.5}),
	factory = ZoneCommander:new({zone='Factory', side=1, level=3, upgrades=upgrades.generic, crates={}, flavorText=flavor.factory, income=0.5}),
	substationwest = ZoneCommander:new({zone='Substation West', side=1, level=3, upgrades=upgrades.generic, crates={}, flavorText=flavor.substationwest}),
	radio = ZoneCommander:new({zone='Radio Tower', side=1, level=3, upgrades=upgrades.generic, crates={}, flavorText=flavor.radio})
}

zones.incirlik:addGroups({
	GroupCommander:new({name='incirlik-supply-1', mission='supply', targetzone='Hatay'}),
	GroupCommander:new({name='incirlik-supply-2', mission='supply', targetzone='FOB Alpha'}),
	GroupCommander:new({name='incirlik-aleppo-tanker', mission='patrol', targetzone='Aleppo'})
})

zones.hatay:addGroups({
	GroupCommander:new({name='hatay-supply-1', mission='supply', targetzone='Minakh'}),
	GroupCommander:new({name='hatay-supply-2', mission='supply', targetzone='Taftanaz'}),
	GroupCommander:new({name='hatay-supply-3', mission='supply', targetzone='Bassel Al-Assad'}),
	GroupCommander:new({name='hatay-supply-4', mission='supply', targetzone='Minakh'}),
	GroupCommander:new({name='hatay-supply-5', mission='supply', targetzone='Taftanaz'}),
	GroupCommander:new({name='hatay-supply-6', mission='supply', targetzone='Bassel Al-Assad'}),
	GroupCommander:new({name='hatay-supply-7', mission='supply', targetzone='Bravo'}),
	GroupCommander:new({name='hatay-supply-8', mission='supply', targetzone='Bravo'}),
	GroupCommander:new({name='hatay-patrol-1', mission='patrol', targetzone='Hatay'}),
	GroupCommander:new({name='hatay-patrol-2', mission='patrol', targetzone='Hatay'}),
	GroupCommander:new({name='hatay-attack-1', mission='attack', targetzone='Hotel'})
})

zones.durayhim:addGroups({
	GroupCommander:new({name='durayhim-attack-1', mission='attack', targetzone='Abu al-Duhur', type='surface'}),
	GroupCommander:new({name='durayhim-attack-2', mission='attack', targetzone='Abu al-Duhur', type='surface'}),
	GroupCommander:new({name='durayhim-attack-3', mission='attack', targetzone='Abu al-Duhur', type='surface'})
})

zones.minakh:addGroups({
	GroupCommander:new({name='minakh-supply-1', mission='supply', targetzone='Hatay'}),
	GroupCommander:new({name='minakh-supply-2', mission='supply', targetzone='Aleppo'}),
	GroupCommander:new({name='minakh-supply-3', mission='supply', targetzone='Hatay'}),
	GroupCommander:new({name='minakh-supply-4', mission='supply', targetzone='Aleppo'}),
	GroupCommander:new({name='minakh-supply-5', mission='supply', targetzone='Charlie'}),
	GroupCommander:new({name='minakh-attack-1', mission='attack', targetzone='Taftanaz'}),
	GroupCommander:new({name='minakh-attack-2', mission='attack', targetzone='Aleppo'})
})

zones.aleppo:addGroups({
	GroupCommander:new({name='aleppo-supply-1', mission='supply', targetzone='Minakh'}),
	GroupCommander:new({name='aleppo-supply-2', mission='supply', targetzone='Taftanaz'}),
	GroupCommander:new({name='aleppo-supply-3', mission='supply', targetzone='Jirah'}),
	GroupCommander:new({name='aleppo-supply-4', mission='supply', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='aleppo-supply-5', mission='supply', targetzone='Minakh'}),
	GroupCommander:new({name='aleppo-supply-7', mission='supply', targetzone='Jirah'}),
	GroupCommander:new({name='aleppo-supply-8', mission='supply', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='aleppo-supply-9', mission='supply', targetzone='Delta'}),
	GroupCommander:new({name='aleppo-supply-10', mission='supply', targetzone='Delta'}),
	GroupCommander:new({name='aleppo-patrol-1', mission='patrol', targetzone='Taftanaz'}),
	GroupCommander:new({name='aleppo-patrol-2', mission='patrol', targetzone='Charlie'}),
	GroupCommander:new({name='aleppo-attack-1', mission='attack', targetzone='Bravo'}),
	GroupCommander:new({name='aleppo-attack-2', mission='attack', targetzone='Jirah'}),
	GroupCommander:new({name='aleppo-attack-3', mission='attack', targetzone='Abu al-Duhur', type='surface'}),
	GroupCommander:new({name='aleppo-attack-4', mission='attack', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='aleppo-patrol-3', mission='patrol', targetzone='Abu al-Duhur'})
})

zones.taftanaz:addGroups({
	GroupCommander:new({name='taftanaz-supply-1', mission='supply', targetzone='Hatay'}),
	GroupCommander:new({name='taftanaz-supply-2', mission='supply', targetzone='Aleppo'}),
	GroupCommander:new({name='taftanaz-supply-3', mission='supply', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='taftanaz-supply-4', mission='supply', targetzone='Hatay'}),
	GroupCommander:new({name='taftanaz-supply-6', mission='supply', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='taftanaz-supply-7', mission='supply', targetzone='Delta'}),
	GroupCommander:new({name='taftanaz-supply-8', mission='supply', targetzone='Delta'}),
	GroupCommander:new({name='taftanaz-supply-9', mission='supply', targetzone='Power Plant'}),
	GroupCommander:new({name='taftanaz-supply-10', mission='supply', targetzone='Power Plant'}),
	GroupCommander:new({name='taftanaz-attack-1', mission='attack', targetzone='Hatay'}),
	GroupCommander:new({name='taftanaz-attack-2', mission='attack', targetzone='Minakh'}),
	GroupCommander:new({name='taftanaz-attack-3', mission='attack', targetzone='Power Plant'}),
	GroupCommander:new({name='taftanaz-attack-4', mission='attack', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='taftanaz-attack-5', mission='attack', targetzone='Power Plant'}),
	GroupCommander:new({name='taftanaz-attack-6', mission='attack', targetzone='Abu al-Duhur'})
})

zones.jirah:addGroups({
	GroupCommander:new({name='jirah-supply-1', mission='supply', targetzone='Aleppo'}),
	GroupCommander:new({name='jirah-supply-2', mission='supply', targetzone='Tabqa'}),
	GroupCommander:new({name='jirah-supply-3', mission='supply', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='jirah-supply-4', mission='supply', targetzone='Aleppo'}),
	GroupCommander:new({name='jirah-supply-5', mission='supply', targetzone='Tabqa'}),
	GroupCommander:new({name='jirah-supply-6', mission='supply', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='jirah-supply-7', mission='supply', targetzone='Durayhim'}),
	GroupCommander:new({name='jirah-supply-8', mission='supply', targetzone='Durayhim'}),
	GroupCommander:new({name='jirah-supply-9', mission='supply', targetzone='Foxtrot'}),
	GroupCommander:new({name='jirah-supply-10', mission='supply', targetzone='Foxtrot'}),
	GroupCommander:new({name='jirah-attack-1', mission='attack', targetzone='Hatay'}),
	GroupCommander:new({name='jirah-attack-2', mission='attack', targetzone='Hama'}),
	GroupCommander:new({name='jirah-attack-3', mission='attack', targetzone='Aleppo'}),
	GroupCommander:new({name='jirah-attack-4', mission='attack', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='jirah-attack-5', mission='attack', targetzone='Tabqa'}),
	GroupCommander:new({name='jirah-attack-6', mission='attack', targetzone='Juliett'}),
	GroupCommander:new({name='jirah-attack-7', mission='attack', targetzone='Aleppo', type='surface'}),
	GroupCommander:new({name='jirah-attack-8', mission='attack', targetzone='Durayhim', type='surface'})
})

zones.tabqa:addGroups({
	GroupCommander:new({name='tabqa-supply-1', mission='supply', targetzone='Jirah'}),
	GroupCommander:new({name='tabqa-supply-2', mission='supply', targetzone='Jirah'}),
	GroupCommander:new({name='tabqa-supply-3', mission='supply', targetzone='Foxtrot'}),
	GroupCommander:new({name='tabqa-supply-4', mission='supply', targetzone='Foxtrot'}),
	GroupCommander:new({name='tabqa-supply-5', mission='supply', targetzone='Raqqa'}),
	GroupCommander:new({name='tabqa-supply-6', mission='supply', targetzone='Raqqa'}),
	GroupCommander:new({name='tabqa-supply-7', mission='supply', targetzone='Golf'}),
	GroupCommander:new({name='tabqa-supply-8', mission='supply', targetzone='Golf'}),
	GroupCommander:new({name='tabqa-supply-9', mission='supply', targetzone='Dam'}),
	GroupCommander:new({name='tabqa-supply-10', mission='supply', targetzone='Dam'}),
	GroupCommander:new({name='tabqa-supply-11', mission='supply', targetzone='Military Base'}),
	GroupCommander:new({name='tabqa-supply-12', mission='supply', targetzone='Military Base'}),
	GroupCommander:new({name='tabqa-supply-13', mission='supply', targetzone='Juliett'}),
	GroupCommander:new({name='tabqa-supply-14', mission='supply', targetzone='Juliett'}),
	GroupCommander:new({name='tabqa-supply-15', mission='supply', targetzone='Oscar'}),
	GroupCommander:new({name='tabqa-supply-16', mission='supply', targetzone='Oscar'}),
	GroupCommander:new({name='tabqa-patrol-1', mission='patrol', targetzone='Tabqa'}),
	GroupCommander:new({name='tabqa-attack-1', mission='attack', targetzone='Palmyra'}),
	GroupCommander:new({name='tabqa-attack-2', mission='attack', targetzone='Foxtrot'}),
	GroupCommander:new({name='tabqa-attack-3', mission='attack', targetzone='Golf'}),
	GroupCommander:new({name='tabqa-attack-4', mission='attack', targetzone='Raqqa'}),
	GroupCommander:new({name='tabqa-attack-5', mission='attack', targetzone='Dam'}),
	GroupCommander:new({name='tabqa-attack-6', mission='attack', targetzone='Military Base'}),
	GroupCommander:new({name='tabqa-attack-7', mission='attack', targetzone='Taftanaz'})
})

zones.milbase:addGroups({
	GroupCommander:new({name='milbase-supply-1', mission='supply', targetzone='Oscar', type='surface'}),
	GroupCommander:new({name='milbase-supply-2', mission='supply', targetzone='Oscar', type='surface'}),
	GroupCommander:new({name='milbase-attack-1', mission='attack', targetzone='Juliett', type='surface'}),
	GroupCommander:new({name='milbase-attack-2', mission='attack', targetzone='Juliett', type='surface'})
})

zones.alduhur:addGroups({
	GroupCommander:new({name='alduhur-supply-1', mission='supply', targetzone='Aleppo'}),
	GroupCommander:new({name='alduhur-supply-2', mission='supply', targetzone='Taftanaz'}),
	GroupCommander:new({name='alduhur-supply-3', mission='supply', targetzone='Jirah'}),
	GroupCommander:new({name='alduhur-supply-4', mission='supply', targetzone='Hama'}),
	GroupCommander:new({name='alduhur-supply-5', mission='supply', targetzone='Bassel Al-Assad'}),
	GroupCommander:new({name='alduhur-supply-6', mission='supply', targetzone='Aleppo'}),
	GroupCommander:new({name='alduhur-supply-7', mission='supply', targetzone='Taftanaz'}),
	GroupCommander:new({name='alduhur-supply-8', mission='supply', targetzone='Jirah'}),
	GroupCommander:new({name='alduhur-supply-9', mission='supply', targetzone='Hama'}),
	GroupCommander:new({name='alduhur-supply-10', mission='supply', targetzone='Bassel Al-Assad'}),
	GroupCommander:new({name='alduhur-supply-11', mission='supply', targetzone='India'}),
	GroupCommander:new({name='alduhur-supply-12', mission='supply', targetzone='India'}),
	GroupCommander:new({name='alduhur-supply-13', mission='supply', targetzone='Factory'}),
	GroupCommander:new({name='alduhur-supply-14', mission='supply', targetzone='Factory'}),
	GroupCommander:new({name='alduhur-supply-15', mission='supply', targetzone='November'}),
	GroupCommander:new({name='alduhur-supply-16', mission='supply', targetzone='November'}),
	GroupCommander:new({name='alduhur-supply-17', mission='supply', targetzone='Papa', type='surface'}),
	GroupCommander:new({name='alduhur-supply-18', mission='supply', targetzone='Papa', type='surface'}),
	GroupCommander:new({name='alduhur-attack-1', mission='attack', targetzone='Bassel Al-Assad'}),
	GroupCommander:new({name='alduhur-attack-2', mission='attack', targetzone='Factory'}),
	GroupCommander:new({name='alduhur-attack-3', mission='attack', targetzone='Hotel'}),
	GroupCommander:new({name='alduhur-patrol-1', mission='patrol', targetzone='Bassel Al-Assad'}),
	GroupCommander:new({name='alduhur-patrol-2', mission='patrol', targetzone='Abu al-Duhur'})
})

zones.alassad:addGroups({
	GroupCommander:new({name='alassad-supply-1', mission='supply', targetzone='Hatay'}),
	GroupCommander:new({name='alassad-supply-2', mission='supply', targetzone='Hama'}),
	GroupCommander:new({name='alassad-supply-3', mission='supply', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='alassad-supply-4', mission='supply', targetzone='Hatay'}),
	GroupCommander:new({name='alassad-supply-5', mission='supply', targetzone='Hama'}),
	GroupCommander:new({name='alassad-supply-6', mission='supply', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='alassad-supply-7', mission='supply', targetzone='Hotel'}),
	GroupCommander:new({name='alassad-supply-8', mission='supply', targetzone='Hotel'}),
	GroupCommander:new({name='alassad-supply-9', mission='supply', targetzone='Romeo'}),
	GroupCommander:new({name='alassad-supply-10', mission='supply', targetzone='Romeo'}),
	GroupCommander:new({name='alassad-patrol-1', mission='patrol', targetzone='Echo'}),
	GroupCommander:new({name='alassad-patrol-2', mission='patrol', targetzone='Bassel Al-Assad'}),
	GroupCommander:new({name='alassad-patrol-3', mission='patrol', targetzone='Bassel Al-Assad'})
})

zones.hama:addGroups({
	GroupCommander:new({name='hama-supply-1', mission='supply', targetzone='Bassel Al-Assad'}),
	GroupCommander:new({name='hama-supply-2', mission='supply', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='hama-supply-3', mission='supply', targetzone='Palmyra'}),
	GroupCommander:new({name='hama-supply-4', mission='supply', targetzone='Bassel Al-Assad'}),
	GroupCommander:new({name='hama-supply-5', mission='supply', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='hama-supply-6', mission='supply', targetzone='Palmyra'}),
	GroupCommander:new({name='hama-supply-7', mission='supply', targetzone='India'}),
	GroupCommander:new({name='hama-supply-8', mission='supply', targetzone='India'}),
	GroupCommander:new({name='hama-supply-9', mission='supply', targetzone='November'}),
	GroupCommander:new({name='hama-supply-10', mission='supply', targetzone='November'}),
	GroupCommander:new({name='hama-supply-11', mission='supply', targetzone='Romeo'}),
	GroupCommander:new({name='hama-supply-12', mission='supply', targetzone='Romeo'}),
	GroupCommander:new({name='hama-patrol-1', mission='patrol', targetzone='Hama'}),
	GroupCommander:new({name='hama-attack-1', mission='attack', targetzone='Factory'}),
	GroupCommander:new({name='hama-attack-2', mission='attack', targetzone='Romeo'}),
	GroupCommander:new({name='hama-attack-3', mission='attack', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='hama-attack-4', mission='attack', targetzone='Abu al-Duhur'})
})

zones.november:addGroups({
	GroupCommander:new({name='november-attack-abu', mission='attack', targetzone='Abu al-Duhur', type='surface'}),
	GroupCommander:new({name='november-attack-hama', mission='attack', targetzone='Hama', type='surface'}),
	GroupCommander:new({name='november-attack-india', mission='attack', targetzone='India', type='surface'})
})

zones.palmyra:addGroups({
	GroupCommander:new({name='palmyra-supply-1', mission='supply', targetzone='Hama'}),
	GroupCommander:new({name='palmyra-supply-2', mission='supply', targetzone='Hama'}),
	GroupCommander:new({name='palmyra-supply-3', mission='supply', targetzone='SA-5'}),
	GroupCommander:new({name='palmyra-supply-4', mission='supply', targetzone='SA-5'}),
	GroupCommander:new({name='palmyra-supply-5', mission='supply', targetzone='Military Base'}),
	GroupCommander:new({name='palmyra-supply-6', mission='supply', targetzone='Military Base'}),
	GroupCommander:new({name='palmyra-patrol-1', mission='patrol', targetzone='Palmyra'}),
	GroupCommander:new({name='palmyra-attack-1', mission='attack', targetzone='Hama'}),
	GroupCommander:new({name='palmyra-attack-2', mission='attack', targetzone='Tabqa'}),
	GroupCommander:new({name='palmyra-supply-7', mission='supply', targetzone='Refinery'}),
	GroupCommander:new({name='palmyra-supply-8', mission='supply', targetzone='Refinery'}),
	GroupCommander:new({name='palmyra-patrol-2', mission='patrol', targetzone='Kilo'}),
	GroupCommander:new({name='palmyra-attack-3', mission='attack', targetzone='Refinery', type='surface'}),
	GroupCommander:new({name='palmyra-attack-4', mission='attack', targetzone='Abu al-Duhur'}),
	GroupCommander:new({name='palmyra-patrol-3', mission='patrol', targetzone='Palmyra'}),
	GroupCommander:new({name='palmyra-attack-5', mission='attack', targetzone='Hama', type='surface'})
})

zones.refinery:addGroups({
	GroupCommander:new({name='refinery-supply-1', mission='supply', targetzone='Palmyra', type='surface'}),
	GroupCommander:new({name='refinery-supply-2', mission='supply', targetzone='Palmyra', type='surface'}),
	GroupCommander:new({name='refinery-supply-3', mission='supply', targetzone='Juliett', type='surface'}),
	GroupCommander:new({name='refinery-supply-4', mission='supply', targetzone='Juliett', type='surface'})
})

zones.factory:addGroups({
	GroupCommander:new({name='factory-supply-1', mission='supply', targetzone='Hama', type='surface'}),
	GroupCommander:new({name='factory-supply-2', mission='supply', targetzone='Hama', type='surface'})
})

zones.romeo:addGroups({
	GroupCommander:new({name='romeo-attack-1', mission='attack', targetzone='Factory', type='surface'}),
	GroupCommander:new({name='romeo-attack-2', mission='attack', targetzone='Hama', type='surface'}),
	GroupCommander:new({name='romeo-supply-1', mission='supply', targetzone='Factory', type='surface'}),
	GroupCommander:new({name='romeo-supply-2', mission='supply', targetzone='Hama', type='surface'})
})

zones.carrier:addGroups({
	GroupCommander:new({name='carrier-supply-1', mission='supply', targetzone='Romeo', type='carrier_air'}),
	GroupCommander:new({name='carrier-supply-2', mission='supply', targetzone='Bassel Al-Assad', type='carrier_air'}),
	GroupCommander:new({name='carrier-hama-tanker', mission='patrol', targetzone='Hama', type='carrier_air'})
})

zones.alpha:addGroups({
	GroupCommander:new({name='alpha-supply-1', mission='supply', targetzone='Hatay'})
})

zones.raqqa:addGroups({
	GroupCommander:new({name='raqqa-supply-1', mission='supply', targetzone='Foxtrot', type='surface'}),
	GroupCommander:new({name='raqqa-supply-2', mission='supply', targetzone='Dam', type='surface'}),
	GroupCommander:new({name='raqqa-supply-3', mission='supply', targetzone='Tabqa', type='surface'})
})

zones.dam:addGroups({
	GroupCommander:new({name='dam-attack-1', mission='attack', targetzone='Jirah', type='surface'}),
	GroupCommander:new({name='dam-attack-2', mission='attack', targetzone='Foxtrot', type='surface'})
})

zones.powerplant:addCriticalObject('PowerPlant1')
zones.powerplant:addCriticalObject('PowerPlant2')

zones.substationnorth:addCriticalObject('substation3')
zones.substationnorth:addCriticalObject('substation4')

zones.substationwest:addCriticalObject('substationW1')
zones.substationwest:addCriticalObject('substationW2')

zones.dam:addCriticalObject('dam1')
zones.dam:addCriticalObject('dam2')

zones.refinery:addCriticalObject('ref1')
zones.refinery:addCriticalObject('ref2')
zones.refinery:addCriticalObject('ref3')
zones.refinery:addCriticalObject('ref4')

zones.factory:addCriticalObject('factory1')
zones.factory:addCriticalObject('factory2')
zones.factory:addCriticalObject('factory3')
zones.factory:addCriticalObject('factory4')

zones.tv:addCriticalObject('tv1')

zones.radio:addCriticalObject('radioTower1')

zones.milbase:addCriticalObject('com_center')
zones.milbase:addCriticalObject('ammo_depot')

for i,v in pairs(zones) do
	bc:addZone(v)
end

bc:addConnection("Incirlik","Hatay")
bc:addConnection("Incirlik","FOB Alpha")
bc:addConnection("Hatay","FOB Alpha")
bc:addConnection("Hatay","Taftanaz")
bc:addConnection("Hatay","Minakh")
bc:addConnection("Hatay","Bravo")
bc:addConnection("Hatay","Bassel Al-Assad")
bc:addConnection("Minakh","Aleppo")
bc:addConnection("Minakh","Charlie")
bc:addConnection("Aleppo","Delta")
bc:addConnection("Aleppo","Jirah")
bc:addConnection("Aleppo","Abu al-Duhur")
bc:addConnection("Taftanaz","Abu al-Duhur")
bc:addConnection("Taftanaz","Delta")
bc:addConnection("Taftanaz","Power Plant")
bc:addConnection("Jirah","Tabqa")
bc:addConnection("Jirah","Abu al-Duhur")
bc:addConnection("Bassel Al-Assad","Hama")
bc:addConnection("Bassel Al-Assad","Hotel")
bc:addConnection("Abu al-Duhur","Hama")
bc:addConnection("Abu al-Duhur","Bassel Al-Assad")
bc:addConnection("Hama","Palmyra")
bc:addConnection("Hama","India")
bc:addConnection("India","Abu al-Duhur")
bc:addConnection("SA-5","Palmyra")
bc:addConnection("Jirah","Durayhim")
bc:addConnection("Jirah","Foxtrot")
bc:addConnection("Tabqa","Foxtrot")
bc:addConnection("Tabqa","Raqqa")
bc:addConnection("Tabqa","Golf")
bc:addConnection("Tabqa","Dam")
bc:addConnection("Military Base","Palmyra")
bc:addConnection("Military Base","Tabqa")
bc:addConnection("Carrier Group","Bassel Al-Assad")
bc:addConnection("Carrier Group","Romeo")
bc:addConnection("Juliett","Tabqa")
bc:addConnection("Palmyra", "Refinery")
bc:addConnection("Juliett", "Refinery")
bc:addConnection("Hama", "Factory")
bc:addConnection("Abu al-Duhur", "Factory")
bc:addConnection("Abu al-Duhur", "November")
bc:addConnection("Hama", "November")
bc:addConnection("Oscar", "Tabqa")
bc:addConnection("Oscar", "Military Base")
bc:addConnection("Abu al-Duhur", "Papa")
bc:addConnection("Romeo", "Hama")
bc:addConnection("Romeo", "Bassel Al-Assad")
bc:addConnection("Foxtrot","Raqqa")
bc:addConnection("Dam","Raqqa")

local checkMissionComplete = function (event, sender)
	local done = true
	for i,v in ipairs(bc:getZones()) do
		if v.side == 1 then
			done = false
			break
		end
	end
	
	if done then
		trigger.action.outText("Enemy has been defeated. \n\nMission Complete.", 120)
	end
end

for i,v in ipairs(bc:getZones()) do
	v:registerTrigger('lost', checkMissionComplete, 'missioncompleted')
end

zones.charlie:registerTrigger('lost', function(event, sender) 
	sender:disableZone()
	bc:addFunds(2,500)
	trigger.action.outTextForCoalition(2,'Early warning radar destroyed.\nEnemy patrols in the area reduced.\n+500 credits',20)
end, 'disableCharlie')

zones.kilo:registerTrigger('lost', function(event, sender) 
	sender:disableZone()
	bc:addFunds(2,500)
	trigger.action.outTextForCoalition(2,'Early warning radar destroyed.\nEnemy patrols in the area reduced.\n+500 credits',20)
end, 'disableKilo')

zones.substationnorth:registerTrigger('lost', function(event, sender) 
	sender:disableZone()
end, 'disablesubn1')

zones.substationnorth:registerTrigger('destroyed', function(event, sender) 
	bc:addFunds(2,500)
	trigger.action.outTextForCoalition(2,'Substation disabled\n+500 credits',20)
end, 'disablesubn2')

zones.tv:registerTrigger('lost', function(event, sender) 
	sender:disableZone()
end, 'disabletv1')

zones.tv:registerTrigger('destroyed', function(event, sender) 
	bc:addFunds(2,500)
	trigger.action.outTextForCoalition(2,'TV Tower disabled\n+500 credits',20)
end, 'disabletv2')

zones.substationwest:registerTrigger('lost', function(event, sender) 
	sender:disableZone()
end, 'disablesubw1')

zones.substationwest:registerTrigger('destroyed', function(event, sender) 
	bc:addFunds(2,500)
	trigger.action.outTextForCoalition(2,'Substation disabled\n+500 credits',20)
end, 'disablesubw2')

zones.radio:registerTrigger('lost', function(event, sender) 
	sender:disableZone()
end, 'disableradio1')

zones.radio:registerTrigger('destroyed', function(event, sender) 
	bc:addFunds(2,500)
	trigger.action.outTextForCoalition(2,'Radio Tower disabled\n+500 credits',20)
end, 'disableradio2')

zones.sierra:registerTrigger('lost', function(event, sender) 
	sender:disableZone()
end, 'disableradar1')

zones.sierra:registerTrigger('destroyed', function(event, sender) 
	bc:addFunds(2,500)
	trigger.action.outTextForCoalition(2,'Radar disabled\n+500 credits',20)
end, 'disableradar2')

zones.tango:registerTrigger('lost', function(event, sender) 
	sender:disableZone()
end, 'disableins1')

zones.tango:registerTrigger('destroyed', function(event, sender) 
	bc:addFunds(2,1000)
	trigger.action.outTextForCoalition(2,'Insurgents cleared\n+1000 credits',20)
end, 'disableins2')

zones.uniform:registerTrigger('lost', function(event, sender) 
	sender:disableZone()
end, 'disableins3')

zones.uniform:registerTrigger('destroyed', function(event, sender) 
	bc:addFunds(2,1000)
	trigger.action.outTextForCoalition(2,'Insurgents cleared\n+1000 credits',20)
end, 'disableins4')

zones.victor:registerTrigger('lost', function(event, sender) 
	sender:disableZone()
end, 'disableins5')

zones.victor:registerTrigger('destroyed', function(event, sender) 
	bc:addFunds(2,500)
	trigger.action.outTextForCoalition(2,'Blackhawk crew rescued\n+500 credits',20)
end, 'disableins6')

bc:addMonitoredROE('cruise1')
local cruiseMissileTargetMenu = nil
bc:registerShopItem('cruisemsl', 'Cruise Missile Strike', 500, function(sender)
	if cruiseMissileTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if cruiseMissileTargetMenu then
			local err = bc:fireAtZone(target, 'cruise1', true, 8)
			if err then
				return err
			end
			
			cruiseMissileTargetMenu = nil
			trigger.action.outTextForCoalition(2, 'Launching cruise missiles at '..target, 15)
		end
	end
	
	cruiseMissileTargetMenu = bc:showTargetZoneMenu(2, 'Cruise Missile Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'Cruise missiles ready. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local err = bc:fireAtZone(params.zone.zone, 'cruise1', true, 8)
		if err then
			return err
		end
		
		trigger.action.outTextForCoalition(2, 'Launching cruise missiles at '..params.zone.zone, 15)
	else
		return 'Can only target enemy zone'
	end
end)

local upgradeMenu = nil
bc:registerShopItem('supplies', 'Resupply friendly Zone', 200, function(sender)
	if upgradeMenu then
		return 'Choose zone from F10 menu'
	end
	
	local upgradeZone = function(target)
		if upgradeMenu then
			local zn = bc:getZoneByName(target)
			if zn and zn.side==2 then
				zn:upgrade()
			else
				return 'Zone not friendly'
			end
			
			upgradeMenu = nil
		end
	end
	
	upgradeMenu = bc:showTargetZoneMenu(2, 'Select Zone to resupply', upgradeZone, 2)
	
	trigger.action.outTextForCoalition(2, 'Supplies prepared. Choose zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 2 then
		params.zone:upgrade()
	else
		return 'Can only target friendly zone'
	end
end)

Group.getByName('cap-north'):destroy()
Group.getByName('cap-north-alt'):destroy()
bc:registerShopItem('capnorth', 'CAP North (F-15C)', 150, function(sender) 
	local grname = 'cap-north'
	if zones.hatay.side == 2 and zones.taftanaz.side == 2 and zones.alduhur.side == 2 then
		grname = 'cap-north-alt'
	end
	
	local gr = Group.getByName(grname)
	if Utils.isGroupActive(gr) then 
		return 'CAP mission still in progress'
	end
	mist.respawnGroup(grname, true)
end,
function (sender, params)
	local grname = 'cap-north'
	if zones.hatay.side == 2 and zones.taftanaz.side == 2 and zones.alduhur.side == 2 then
		grname = 'cap-north-alt'
	end

	local gr = Group.getByName(grname)
	if Utils.isGroupActive(gr) then 
		return 'CAP mission still in progress'
	end
	mist.respawnGroup(grname, true)
end)

local spawnAwacs2 = function(sender) 
	local gr = Group.getByName('awacs2')
	if Utils.isGroupActive(gr) then 
		return 'Overlord still active on 253.00 MHz AM'
	end
	mist.respawnGroup('awacs2', true)
	trigger.action.outTextForCoalition(2,'Overlord active on 253.00 MHz AM',15)
end
Group.getByName('awacs2'):destroy()
bc:registerShopItem('awacsnorth', 'AWACS North (E-3A)', 100, spawnAwacs2, spawnAwacs2)

Group.getByName('cas1'):destroy()
local casTargetMenu = nil
bc:registerShopItem('casnorth', 'CAS North (F-16C)', 400, function(sender) 
	local gr = Group.getByName('cas1')
	if Utils.isGroupActive(gr) then 
		return 'Ground attack mission still in progress'
	end
	
	mist.respawnGroup('cas1', true)
	
	if casTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if casTargetMenu then
			if Group.getByName('cas1') then
				local err = bc:engageZone(target, 'cas1')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'F-16C Vipers engaging groups at '..target, 15)
			else
				trigger.action.outTextForCoalition(2, 'Group has left the area or has been destroyed', 15)
			end
			
			casTargetMenu = nil
		end
	end
	
	casTargetMenu = bc:showTargetZoneMenu(2, 'CAS North Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'F-16C Vipers on route. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('cas1')
		if Utils.isGroupActive(gr) then 
			return 'Ground attack mission still in progress'
		end
		
		mist.respawnGroup('cas1', true)
		mist.scheduleFunction(function(target)
			if Group.getByName('cas1') then
				local err = bc:engageZone(target, 'cas1')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'F-16C Vipers engaging groups at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
	else
		return 'Can only target enemy zone'
	end
end)

Group.getByName('bomber'):destroy()
local bomberTargetMenu = nil
bc:registerShopItem('bombsnorth', 'Bombing run North (F-15E)', 600, function(sender) 
	local gr = Group.getByName('bomber')
	if Utils.isGroupActive(gr) then 
		return 'Bombing run still in progress'
	end
	
	mist.respawnGroup('bomber', true)
	
	if bomberTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if bomberTargetMenu then
			local bomb = Group.getByName('bomber')
			if bomb then
				local err = bc:engageZone(target, 'bomber')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'F-15E Mudhens engaging groups at '..target, 15)
			else
				trigger.action.outTextForCoalition(2, 'Group has left the area or has been destroyed', 15)
			end
			
			bomberTargetMenu = nil
		end
	end
	
	bomberTargetMenu = bc:showTargetZoneMenu(2, 'Bombing run North Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'F-15E Mudhens on route. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('bomber')
		if Utils.isGroupActive(gr) then 
			return 'Bombing run still in progress'
		end
		
		mist.respawnGroup('bomber', true)
		
		mist.scheduleFunction(function(target)
			local bomb = Group.getByName('bomber')
			if bomb then
				local err = bc:engageZone(target, 'bomber')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'F-15E Mudhens engaging groups at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
	else
		return 'Can only target enemy zone'
	end
end)

Group.getByName('sead2'):destroy()
local seadTargetMenu = nil
bc:registerShopItem('seadnorth', 'SEAD North (F-16C)', 150, function(sender) 
	local gr = Group.getByName('sead2')
	if Utils.isGroupActive(gr) then 
		return 'SEAD mission still in progress'
	end
	mist.respawnGroup('sead2', true)
	
	if seadTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if Group.getByName('sead2') then
			local err = bc:engageZone(target, 'sead2', AI.Task.WeaponExpend.ALL)
			if err then
				return err
			end
			
			trigger.action.outTextForCoalition(2, 'F-16 Vipers engaging SAMs at '..target, 15)
		else
			trigger.action.outTextForCoalition(2, 'Group has left the area or has been destroyed', 15)
		end
		
		seadTargetMenu = nil
	end
	
	seadTargetMenu = bc:showTargetZoneMenu(2, 'SEAD North Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'F-16 Vipers on route. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('sead2')
		if Utils.isGroupActive(gr) then 
			return 'SEAD mission still in progress'
		end
		
		mist.respawnGroup('sead2', true)
		mist.scheduleFunction(function(target)
			if Group.getByName('sead2') then
				local err = bc:engageZone(target, 'sead2')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'F-16 Vipers engaging SAMs at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
	else
		return 'Can only target enemy zone'
	end
end)

Group.getByName('cap-south'):destroy()
Group.getByName('cap-south-alt'):destroy()
bc:registerShopItem('capsouth', 'CAP South (F-14B)', 150, function(sender) 
	local grname = 'cap-south'
	if zones.hama.side == 2 and zones.alassad.side == 2 and zones.alduhur.side == 2 then
		grname = 'cap-south-alt'
	end
	
	local gr = Group.getByName(grname)
	if Utils.isGroupActive(gr) then 
		return 'CAP mission still in progress'
	end
	mist.respawnGroup(grname, true)
end,
function (sender, params)
	local grname = 'cap-south'
	if zones.hama.side == 2 and zones.alassad.side == 2 and zones.alduhur.side == 2 then
		grname = 'cap-south-alt'
	end
	
	local gr = Group.getByName(grname)
	if Utils.isGroupActive(gr) then 
		return 'CAP mission still in progress'
	end
	mist.respawnGroup(grname, true)
end)

local spawnAwacs = function(sender) 
	local gr = Group.getByName('awacs1')
	if Utils.isGroupActive(gr) then 
		return 'Darkstar still active on 252.00 MHz AM'
	end
	mist.respawnGroup('awacs1', true)
	trigger.action.outTextForCoalition(2,'Darkstar active on 252.00 MHz AM',15)
end
Group.getByName('awacs1'):destroy()
bc:registerShopItem('awacssouth', 'AWACS South (E-2D)', 100, spawnAwacs, spawnAwacs)

Group.getByName('sead1'):destroy()
local seadTargetMenu = nil
bc:registerShopItem('seadsouth', 'SEAD South (F/A-18C)', 150, function(sender) 
	local gr = Group.getByName('sead1')
	if Utils.isGroupActive(gr) then 
		return 'SEAD mission still in progress'
	end
	mist.respawnGroup('sead1', true)
	
	if seadTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if Group.getByName('sead1') then
			local err = bc:engageZone(target, 'sead1', AI.Task.WeaponExpend.ALL)
			if err then
				return err
			end
			
			trigger.action.outTextForCoalition(2, 'F/A-18C Hornets engaging SAMs at '..target, 15)
		else
			trigger.action.outTextForCoalition(2, 'Group has left the area or has been destroyed', 15)
		end
		
		seadTargetMenu = nil
	end
	
	seadTargetMenu = bc:showTargetZoneMenu(2, 'SEAD South Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'F/A-18C Hornets on route. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('sead1')
		if Utils.isGroupActive(gr) then 
			return 'SEAD mission still in progress'
		end
		
		mist.respawnGroup('sead1', true)
		mist.scheduleFunction(function(target)
			if Group.getByName('sead1') then
				local err = bc:engageZone(target, 'sead1')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'F/A-18C Hornets engaging SAMs at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
	else
		return 'Can only target enemy zone'
	end
end)

Group.getByName('cas2'):destroy()
local casTargetMenu = nil
bc:registerShopItem('cassouth', 'CAS South (AV-8B)', 400, function(sender) 
	local gr = Group.getByName('cas2')
	if Utils.isGroupActive(gr) then 
		return 'Ground attack mission still in progress'
	end
	
	mist.respawnGroup('cas2', true)
	
	if casTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if casTargetMenu then
			if Group.getByName('cas2') then
				local err = bc:engageZone(target, 'cas2')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'AV-8B Harriers engaging groups at '..target, 15)
			else
				trigger.action.outTextForCoalition(2, 'Group has left the area or has been destroyed', 15)
			end
			
			casTargetMenu = nil
		end
	end
	
	casTargetMenu = bc:showTargetZoneMenu(2, 'CAS South Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'AV-8B Harriers on route. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('cas2')
		if Utils.isGroupActive(gr) then 
			return 'Ground attack mission still in progress'
		end
		
		mist.respawnGroup('cas2', true)
		mist.scheduleFunction(function(target)
			if Group.getByName('cas2') then
				local err = bc:engageZone(target, 'cas2')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'AV-8B Harriers engaging groups at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
	else
		return 'Can only target enemy zone'
	end
end)

Group.getByName('bomber2'):destroy()
local bomberTargetMenu = nil
bc:registerShopItem('bombssouth', 'Bombing run South (AV-8B)', 600, function(sender) 
	local gr = Group.getByName('bomber2')
	if Utils.isGroupActive(gr) then 
		return 'Bombing run still in progress'
	end
	
	mist.respawnGroup('bomber2', true)
	
	if bomberTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if bomberTargetMenu then
			local bomb = Group.getByName('bomber2')
			if bomb then
				local err = bc:engageZone(target, 'bomber2')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'AV-8B Harriers engaging groups at '..target, 15)
			else
				trigger.action.outTextForCoalition(2, 'Group has left the area or has been destroyed', 15)
			end
			
			bomberTargetMenu = nil
		end
	end
	
	bomberTargetMenu = bc:showTargetZoneMenu(2, 'Bombing run South Target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'AV-8B Harriers on route. Choose target zone from F10 menu', 15)
end,
function (sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('bomber2')
		if Utils.isGroupActive(gr) then 
			return 'Bombing run still in progress'
		end
		
		mist.respawnGroup('bomber2', true)
		
		mist.scheduleFunction(function(target)
			local bomb = Group.getByName('bomber2')
			if bomb then
				local err = bc:engageZone(target, 'bomber2')
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'AV-8B Harriers engaging groups at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
	else
		return 'Can only target enemy zone'
	end
end)

Group.getByName('jtacDrone'):destroy()
local jtacTargetMenu = nil
drone = JTAC:new({name = 'jtacDrone'})
bc:registerShopItem('jtac', 'MQ-9 Reaper JTAC mission', 100, function(sender)
	
	if jtacTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local spawnAndOrbit = function(target)
		if jtacTargetMenu then
			local zn = bc:getZoneByName(target)
			drone:deployAtZone(zn)
			drone:showMenu()
			trigger.action.outTextForCoalition(2, 'Reaper drone deployed over '..target, 15)
			jtacTargetMenu = nil
		end
	end
	
	jtacTargetMenu = bc:showTargetZoneMenu(2, 'Deploy JTAC', spawnAndOrbit, 1)
	
	trigger.action.outTextForCoalition(2, 'Choose which zone to deploy JTAC at from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 1 then
		drone:deployAtZone(params.zone)
		drone:showMenu()
		trigger.action.outTextForCoalition(2, 'Reaper drone deployed over '..params.zone.zone, 15)
	else
		return 'Can only target enemy zone'
	end
end)

local smoketargets = function(tz)
	local units = {}
	for i,v in pairs(tz.built) do
		local g = Group.getByName(v)
		for i2,v2 in ipairs(g:getUnits()) do
			table.insert(units, v2)
		end
	end
	
	local tgts = {}
	for i=1,3,1 do
		if #units > 0 then
			local selected = math.random(1,#units)
			table.insert(tgts, units[selected])
			table.remove(units, selected)
		end
	end
	
	for i,v in ipairs(tgts) do
		local pos = v:getPosition().p
		trigger.action.smoke(pos, 1)
	end
end

local smokeTargetMenu = nil
bc:registerShopItem('smoke', 'Smoke markers', 20, function(sender)
	if smokeTargetMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local launchAttack = function(target)
		if smokeTargetMenu then
			local tz = bc:getZoneByName(target)
			smoketargets(tz)
			smokeTargetMenu = nil
			trigger.action.outTextForCoalition(2, 'Targets marked with RED smoke at '..target, 15)
		end
	end
	
	smokeTargetMenu = bc:showTargetZoneMenu(2, 'Smoke marker target', launchAttack, 1)
	
	trigger.action.outTextForCoalition(2, 'Choose target zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 1 then
		smoketargets(params.zone)
		trigger.action.outTextForCoalition(2, 'Targets marked with RED smoke at '..params.zone.zone, 15)
	else
		return 'Can only target enemy zone'
	end
end)

Group.getByName('ewAircraft'):destroy()
local jamMenu = nil
bc:registerShopItem('jam', 'Jam radars at zone', 500, function(sender)
	local gr = Group.getByName('ewAircraft')
	if Utils.isGroupActive(gr) then 
		return 'Jamming mission still in progress'
	end
	
	mist.respawnGroup('ewAircraft', true)
	
	if jamMenu then
		return 'Choose target zone from F10 menu'
	end
	
	local startJam = function(target)
		if jamMenu then
			bc:jamRadarsAtZone('ewAircraft', target)
			jamMenu = nil
			trigger.action.outTextForCoalition(2, 'Growler jamming radars at '..target, 15)
		end
	end
	
	jamMenu = bc:showTargetZoneMenu(2, 'Jamming target', startJam, 1)
	trigger.action.outTextForCoalition(2, 'Choose target zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 1 then
		local gr = Group.getByName('ewAircraft')
		if Utils.isGroupActive(gr) then 
			return 'Jamming mission still in progress'
		end
		
		mist.respawnGroup('ewAircraft', true)
		
		mist.scheduleFunction(function(target)
			local ew = Group.getByName('ewAircraft')
			if ew then
				local err = bc:jamRadarsAtZone('ewAircraft', target)
				if err then
					return err
				end
				
				trigger.action.outTextForCoalition(2, 'Growler jamming radars at '..target, 15)
			end
		end,{params.zone.zone},timer.getTime()+2)
		
	else
		return 'Can only target enemy zone'
	end
end)

tanksMenu = nil
bc:registerShopItem('armor', 'Deploy armor (for combined arms)', 100, function(sender)
	
	if tanksMenu then
		return 'Choose deploy zone from F10 menu'
	end
	
	local deployTanks = function(target)
		if tanksMenu then
		
			local zn = CustomZone:getByName(target)
			zn:spawnGroup('ca-tanks')
			
			tanksMenu = nil
			trigger.action.outTextForCoalition(2, 'Friendly armor deployed at '..target, 15)
		end
	end
	
	tanksMenu = bc:showTargetZoneMenu(2, 'Deploy armor (Choose friendly zone)', deployTanks, 2)
	trigger.action.outTextForCoalition(2, 'Choose deploy zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 2 then
		
		local zn = CustomZone:getByName(params.zone.zone)
		zn:spawnGroup('ca-tanks')
		trigger.action.outTextForCoalition(2, 'Friendly armor deployed at '..params.zone.zone, 15)
	else
		return 'Can only deploy at friendly zone'
	end
end)

artyMenu = nil
bc:registerShopItem('artillery', 'Deploy artillery (for combined arms)', 100, function(sender)
	
	if artyMenu then
		return 'Choose deploy zone from F10 menu'
	end
	
	local deployArty = function(target)
		if artyMenu then
		
			local zn = CustomZone:getByName(target)
			zn:spawnGroup('ca-arty')
			
			artyMenu = nil
			trigger.action.outTextForCoalition(2, 'Friendly artillery deployed at '..target, 15)
		end
	end
	
	artyMenu = bc:showTargetZoneMenu(2, 'Deploy artillery (Choose friendly zone)', deployArty, 2)
	trigger.action.outTextForCoalition(2, 'Choose deploy zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 2 then
		
		local zn = CustomZone:getByName(params.zone.zone)
		zn:spawnGroup('ca-arty')
		trigger.action.outTextForCoalition(2, 'Friendly artillery deployed at '..params.zone.zone, 15)
	else
		return 'Can only deploy at friendly zone'
	end
end)

reconMenu = nil
bc:registerShopItem('recon', 'Deploy recon group (for combined arms)', 50, function(sender)
	
	if reconMenu then
		return 'Choose deploy zone from F10 menu'
	end
	
	local deployRecon = function(target)
		if reconMenu then
		
			local zn = CustomZone:getByName(target)
			zn:spawnGroup('ca-recon')
			
			reconMenu = nil
			trigger.action.outTextForCoalition(2, 'Friendly recon group deployed at '..target, 15)
		end
	end
	
	reconMenu = bc:showTargetZoneMenu(2, 'Deploy recon group (Choose friendly zone)', deployRecon, 2)
	trigger.action.outTextForCoalition(2, 'Choose deploy zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 2 then
		
		local zn = CustomZone:getByName(params.zone.zone)
		zn:spawnGroup('ca-recon')
		trigger.action.outTextForCoalition(2, 'Friendly recon group deployed at '..params.zone.zone, 15)
	else
		return 'Can only deploy at friendly zone'
	end
end)

airdefMenu = nil
bc:registerShopItem('airdef', 'Deploy air defence (for combined arms)', 150, function(sender)
	
	if airdefMenu then
		return 'Choose deploy zone from F10 menu'
	end
	
	local deployAirDef = function(target)
		if airdefMenu then
		
			local zn = CustomZone:getByName(target)
			zn:spawnGroup('ca-airdef')
			
			airdefMenu = nil
			trigger.action.outTextForCoalition(2, 'Friendly air defence deployed at '..target, 15)
		end
	end
	
	airdefMenu = bc:showTargetZoneMenu(2, 'Deploy air defence (Choose friendly zone)', deployAirDef, 2)
	trigger.action.outTextForCoalition(2, 'Choose deploy zone from F10 menu', 15)
end,
function(sender, params)
	if params.zone and params.zone.side == 2 then
		
		local zn = CustomZone:getByName(params.zone.zone)
		zn:spawnGroup('ca-airdef')
		trigger.action.outTextForCoalition(2, 'Friendly air defence deployed at '..params.zone.zone, 15)
	else
		return 'Can only deploy at friendly zone'
	end
end)

bc:addShopItem(2, 'cruisemsl', 12)
bc:addShopItem(2, 'supplies', -1)
bc:addShopItem(2, 'jtac', -1)
bc:addShopItem(2, 'smoke', -1)
bc:addShopItem(2, 'jam', -1)

bc:addShopItem(2, 'casnorth', -1)
bc:addShopItem(2, 'bombsnorth', -1)
bc:addShopItem(2, 'capnorth', -1)
bc:addShopItem(2, 'awacsnorth', -1)
bc:addShopItem(2, 'seadnorth', -1)

bc:addShopItem(2, 'cassouth', -1)
bc:addShopItem(2, 'bombssouth', -1)
bc:addShopItem(2, 'capsouth', -1)
bc:addShopItem(2, 'awacssouth', -1)
bc:addShopItem(2, 'seadsouth', -1)

bc:addShopItem(2, 'armor', -1)
bc:addShopItem(2, 'artillery', -1)
bc:addShopItem(2, 'recon', -1)
bc:addShopItem(2, 'airdef', -1)

supplyZones = {
	'FOB Alpha', 
	'Incirlik', 
	'Carrier Group', 
	'FOB Lima', 
	'FOB Mike', 
	'Taftanaz', 
	'Abu al-Duhur', 
	'Jirah',
	'Minakh',
	'Aleppo',
	'Tabqa',
	'Bassel Al-Assad',
	'Hama',
	'Palmyra',
	'Hatay'
}

lc = LogisticCommander:new({battleCommander = bc, supplyZones = supplyZones})
lc:init()

bc:loadFromDisk() --will load and overwrite default zone levels, sides, funds and available shop items
bc:init()
bc:startRewardPlayerContribution(15,{infantry = 10, ground = 20, sam = 40, airplane = 50, ship = 250, helicopter=50, crate=200, rescue = 100})
HercCargoDropSupply.init(bc)

GlobalSettings.defaultRespawns[1]['supply'] = { dead=60*60, hangar=30*60, preparing=5*60}
GlobalSettings.setDifficultyScaling(1.4,1)

evc = EventCommander:new({ decissionFrequency=30*60, decissionVariance=30*60, skipChance = 10})
evc:init()

Group.getByName('oscar-scud-1'):destroy()
evc:addEvent({
	id='scuds',
	action = function()
		mist.respawnGroup('oscar-scud-1')
		
		timer.scheduleFunction(function(param, time)
			if Group.getByName('oscar-scud-1') then
				local tgts = {
					'Hatay',
					'Abu al-Duhur',
					'Hama',
					'Jirah',
					'Aleppo',
					'Taftanaz',
					'Palmyra',
					'Bassel Al-Assad'
				}
				
				local validtgts = {}
				for _,v in ipairs(tgts) do
					if bc:getZoneByName(v).side == 2 then
						table.insert(validtgts, v)
					end
				end
				
				if #validtgts == 0 then return time+(10*60) end
				
				local die = math.random(1,#validtgts)
				local choice = validtgts[die]
				bc:fireAtZone(choice, 'oscar-scud-1', false, 8)
				trigger.action.outTextForCoalition(2, 'SCUDS near Oscar are launching at '..choice, 15)
			end
		end, {}, timer.getTime()+(20*60))
	end,
	canExecute = function()
		local gr = Group.getByName('oscar-scud-1')
		if gr then return false end
		
		if bc:getZoneByName('Oscar').side ~= 1 then return false end
		
		local triggers = {'Abu al-Duhur', 'Aleppo', 'Palmyra', 'Hama'}
		for _,v in ipairs(triggers) do
			if bc:getZoneByName(v).side == 2 then
				return true
			end
		end
		
		return false
	end
})

Group.getByName('escort-me'):destroy()
Group.getByName('interceptor-1'):destroy()
Group.getByName('interceptor-2'):destroy()
evc:addEvent({
	id='escort',
	action = function()
		mist.respawnGroup('escort-me', true)
		
		local spawnIntercept = function(groupname)
			if Group.getByName('escort-me') then
				local g = Group.getByName(groupname)
				if not g then
					if math.random(1,100) > 30 then
						if math.random(1,100) > 50 then
							trigger.action.outTextForCoalition(2,'Enemy interceptor spotted heading for our cargo transport.',15)
						else
							trigger.action.outTextForCoalition(2,'The enemy has launched an intercept mission against our cargo transport',15)
						end
						mist.respawnGroup(groupname, true)
					end
				end
			end
		end
		
		local timers = {math.random(10*60,20*60), math.random(15*60,25*60)}
		mist.scheduleFunction(spawnIntercept, {'interceptor-1'}, timer.getTime()+timers[1])
		mist.scheduleFunction(spawnIntercept, {'interceptor-2'}, timer.getTime()+timers[2])
	end,
	canExecute = function()
		local gr = Group.getByName('escort-me')
		if gr then return false end
		
		local triggers = {'Abu al-Duhur', 'Hatay', 'Incirlik', 'Taftanaz', 'Hama'}
		for _,v in ipairs(triggers) do
			if bc:getZoneByName(v).side == 2 then
				return true
			end
		end
		
		return false
	end
})

Group.getByName('evt-cas'):destroy()
evc:addEvent({
	id='cas',
	action = function()
		mist.respawnGroup('evt-cas', true)
		
		timer.scheduleFunction(function(param, time)
			local tgts = {
				'Hatay',
				'Abu al-Duhur',
				'Hama',
				'Jirah',
				'Aleppo',
				'Taftanaz',
				'Palmyra',
				'Bassel Al-Assad',
				'Hotel',
				'Juliett',
				'Factory',
				'India',
				'Military Base'
			}
			
			local validtgts = {}
			for _,v in ipairs(tgts) do
				if bc:getZoneByName(v).side == 2 then
					table.insert(validtgts, v)
				end
			end
			
			if #validtgts ~= 0 then
				local die = math.random(1,#validtgts)
				local choice = validtgts[die]
				
				if Group.getByName('evt-cas') then
					bc:engageZone(choice, 'evt-cas')
				end
			end
		end, {}, timer.getTime()+3)
	end,
	canExecute = function()
		local gr = Group.getByName('evt-cas')
		if gr then return false end
		
		if bc:getZoneByName('Palmyra').side ~= 1 then return false end
		
		local triggers = {'Abu al-Duhur', 'Aleppo', 'Hama', 'Tabqa'}
		for _,v in ipairs(triggers) do
			if bc:getZoneByName(v).side == 2 then
				return true
			end
		end
		
		return false
	end
})

Group.getByName('evt-bomber'):destroy()
evc:addEvent({
	id='bomb',
	action = function()
		mist.respawnGroup('evt-bomber', true)
	end,
	canExecute = function()
		local gr = Group.getByName('evt-bomber')
		if gr then return false end
		
		local triggers = {'Abu al-Duhur', 'Aleppo', 'Hama', 'Tabqa', 'Palmyra'}
		for _,v in ipairs(triggers) do
			if bc:getZoneByName(v).side == 2 then
				return true
			end
		end
		
		return false
	end
})

function startBomberAttack() -- called from bomber groups waypoint actions
	local tgts = {
		'Hatay',
		'Abu al-Duhur',
		'Hama',
		'Jirah',
		'Aleppo',
		'Taftanaz',
		'Palmyra',
		'Bassel Al-Assad',
		'Hotel',
		'Juliett',
		'Factory',
		'India',
		'Military Base'
	}
	
	local validtgts = {}
	for _,v in ipairs(tgts) do
		if bc:getZoneByName(v).side == 2 then
			table.insert(validtgts, v)
		end
	end
	
	if #validtgts ~= 0 then
		local die = math.random(1,#validtgts)
		local choice = validtgts[die]
		
		if Group.getByName('evt-bomber') then
			bc:engageZone(choice, 'evt-bomber',  AI.Task.WeaponExpend.HALF)
		end
	end
end

Group.getByName('evt-shiptercept1'):destroy()
Group.getByName('evt-shiptercept2'):destroy()
Group.getByName('evt-shiptercept3'):destroy()
local shipDieEvent = nil
evc:addEvent({
	id='shiptercept',
	action = function()
	
		local ships = {'evt-shiptercept1','evt-shiptercept2','evt-shiptercept3'}
		local choice = math.random(1,#ships)
		
		mist.respawnGroup(ships[choice], true)
		
		local shipDied = function(event)
			if event.id==30 then
				if event.initiator and event.initiator.getName then
					local name = event.initiator:getName()
					if type(name)=="string" and name:find('^evt%-shiptercept') then
						mist.removeEventHandler(shipDieEvent)
						shipDieEvent = nil
						trigger.action.outTextForCoalition(2,'Enemy supply ship destroyed.\n+500 credits',15)
						bc:addFunds(2,500)
					end
				end
			end
		end
		shipDieEvent = mist.addEventHandler(shipDied)
	end,
	canExecute = function()
		if math.random(1,100) < 70 then return false end
		
		if Group.getByName('evt-shiptercept1') then return false end
		if Group.getByName('evt-shiptercept2') then return false end
		if Group.getByName('evt-shiptercept3') then return false end
		
		return true
	end
})

duhurForce = {
	['Aleppo'] = { 'evt-aleppo-duhur-attack' , 'evt-aleppo-duhur-deploy-1', 'evt-aleppo-duhur-deploy-2', 'evt-aleppo-duhur-deploy-3'},
	['Tabqa'] = { 'evt-tabqa-duhur-sead' },
	['November'] = { 'evt-november-duhur-arty', 'evt-november-duhur-arty2' },
	['Hama'] = { 'evt-hama-duhur-cas' },
	['Bassel Al-Assad'] = { 'evt-bassel-duhur-sead' }
}
for i,v in pairs(duhurForce) do
	for _,v2 in ipairs(v) do
		Group.getByName(v2):destroy()
	end
end
evc:addEvent({
	id='duhurattack',
	action = function()
		for i,v in pairs(duhurForce) do
			if bc:getZoneByName(i).side == 1 then
				for _,v2 in ipairs(v) do
					mist.respawnGroup(v2, true)
				end
			end
		end
	end,
	canExecute = function()
		if math.random(1,100) < 60 then return false end
		
		if bc:getZoneByName('Abu al-Duhur').side ~= 2 then return false end
		
		local canAttack = false
		for i,v in pairs(duhurForce) do
			if bc:getZoneByName(i).side == 1 then canAttack = true end
			
			for _,v2 in ipairs(v) do
				if Group.getByName(v2) then return false end
			end
		end
		
		return canAttack
	end
})

Group.getByName('evt-cargointercept1'):destroy()
Group.getByName('evt-cargointercept2'):destroy()
Group.getByName('evt-cargointercept3'):destroy()
local cargoDieEvent = nil
evc:addEvent({
	id='cargointercept',
	action = function()
	
		local planes = {'evt-cargointercept1','evt-cargointercept2','evt-cargointercept3'}
		local choice = math.random(1,#planes)
		
		mist.respawnGroup(planes[choice], true)
		
		local cargoDie = function(event)
			if event.id==30 then
				if event.initiator and event.initiator.getName then
					local name = event.initiator:getName()
					if type(name)=="string" and name:find('^evt%-cargointercept') then
						mist.removeEventHandler(cargoDieEvent)
						cargoDieEvent = nil
						trigger.action.outTextForCoalition(2,'Enemy cargo plane destroyed.\n+500 credits',15)
						bc:addFunds(2,500)
					end
				end
			end
		end
		cargoDieEvent = mist.addEventHandler(cargoDie)
	end,
	canExecute = function()
		if math.random(1,100) < 70 then return false end
		
		if bc:getZoneByName('Echo').side ~= 1 then return false end
		if bc:getZoneByName('Bassel Al-Assad').side ~= 1 then return false end
		
		if Group.getByName('evt-cargointercept1') then return false end
		if Group.getByName('evt-cargointercept2') then return false end
		if Group.getByName('evt-cargointercept3') then return false end
		
		return true
	end
})

mc = MissionCommander:new({side = 2, battleCommander = bc, checkFrequency = 60})
mc:trackMission({
	title = "Intercept cargo plane",
	description = "Find and destroy the enemy cargo plane near Echo, heading for Bassel Al-Assad.",
	messageStart = "New mission: Intercept cargo plane",
	messageEnd = "Mission ended: Intercept cargo plane",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	isActive = function()
		if Group.getByName('evt-cargointercept1') then return true end
		if Group.getByName('evt-cargointercept2') then return true end
		if Group.getByName('evt-cargointercept3') then return true end
		
		return false
	end
})

mc:trackMission({
	title = "Escort cargo plane",
	description = "Friendly cargo plane is taking off from Incirlik. Protect it until it leaves the airspace.",
	messageStart = "New mission: Escort cargo plane",
	messageEnd = "Mission ended: Escort cargo plane",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	isActive = function()
		if Group.getByName('escort-me') then return true end
		return false
	end
})

mc:trackMission({
	title = "Defend Abu al-Duhur",
	description = "The enemy is preparing an all out attack on Abu al-Duhur.\nDefend the airfield at all cost.",
	messageStart = "New mission: Defend Abu al-Duhur",
	messageEnd = "Mission ended: Defend Abu al-Duhur",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	isActive = function()
		for i,v in pairs(duhurForce) do
			for _,v2 in ipairs(v) do
				if Group.getByName(v2) then return true end
			end
		end
		
		return false
	end
})

mc:trackMission({
	title = "Destroy cargo ship at Echo",
	description = "Find and destroy the enemy cargo ship at Echo, heading towards  Bassel Al-Assad",
	messageStart = "New mission: Destroy cargo ship",
	messageEnd = "Mission ended: Destroy cargo ship",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	isActive = function()
		if Group.getByName('evt-shiptercept1') then return true end
		if Group.getByName('evt-shiptercept2') then return true end
		if Group.getByName('evt-shiptercept3') then return true end
		
		return false
	end
})

mc:trackMission({
	title = "Destroy SCUDS",
	description = "SCUDS have been spotted at Oscar.\nDestroy them before they can launch their missiles",
	messageStart = "New mission: Destroy SCUDS",
	messageEnd = "Mission ended: Destroy SCUDS",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	isActive = function()
		local gr = Group.getByName('oscar-scud-1')
		if gr then return true else return false end
	end
})

mc:trackMission({
	title = "Destroy artillery",
	description = "Artillery has been spotted heading towards Aleppo from the direction of Jirah.\nDestroy them before they get in range.",
	messageStart = "New mission: Destroy artillery",
	messageEnd = "Mission ended: Destroy artillery\n+50 credits",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	reward = 50,
	isActive = function()
		local gr = Group.getByName('jirah-attack-7')
		if gr then return true else return false end
	end
})

mc:trackMission({
	title = "Destroy artillery",
	description = "Artillery has been spotted heading towards Durayhim from the direction of Jirah.\nDestroy them before they get in range.",
	messageStart = "New mission: Destroy artillery",
	messageEnd = "Mission ended: Destroy artillery\n+50 credits",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	reward = 50,
	isActive = function()
		local gr = Group.getByName('jirah-attack-8')
		if gr then return true else return false end
	end
})

mc:trackMission({
	title = "Destroy artillery",
	description = "Artillery has been spotted heading towards Abu al-Duhur from the direction of November.\nDestroy them before they get in range.",
	messageStart = "New mission: Destroy artillery",
	messageEnd = "Mission ended: Destroy artillery\n+50 credits",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	reward = 50,
	isActive = function()
		local gr = Group.getByName('november-attack-abu')
		if gr then return true else return false end
	end
})

mc:trackMission({
	title = "Destroy artillery",
	description = "Artillery has been spotted heading towards India from the direction of November.\nDestroy them before they get in range.",
	messageStart = "New mission: Destroy artillery",
	messageEnd = "Mission ended: Destroy artillery\n+50 credits",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	reward = 50,
	isActive = function()
		local gr = Group.getByName('november-attack-india')
		if gr then return true else return false end
	end
})

mc:trackMission({
	title = "Destroy artillery",
	description = "Artillery has been spotted heading towards Hama from the direction of November.\nDestroy them before they get in range.",
	messageStart = "New mission: Destroy artillery",
	messageEnd = "Mission ended: Destroy artillery\n+50 credits",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	reward = 50,
	isActive = function()
		local gr = Group.getByName('november-attack-hama')
		if gr then return true else return false end
	end
})

mc:trackMission({
	title = "Intercept Bombers",
	description = "Enemy bombers spotted to the north-east\nDestroy them before they get in range.",
	messageStart = "New mission: Intercept Bombers",
	messageEnd = "Mission ended: Intercept Bombers",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	isActive = function()
		local gr = Group.getByName('evt-bomber')
		if gr then return true else return false end
	end
})

mc:trackMission({
	title = "Intercept enemy airstrike",
	description = "Enemy aircraft conducting an airstrike from the south-east\nDestroy them before they get in range.",
	messageStart = "New mission: Intercept enemy airstrike",
	messageEnd = "Mission ended: Intercept enemy airstrike",
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() trigger.action.outSoundForCoalition(2,"cancel.ogg") end,
	isActive = function()
		local gr = Group.getByName('evt-cas')
		if gr then return true else return false end
	end
})

resupplyTarget = nil
mc:trackMission({
	title = function() return "Resupply "..resupplyTarget end,
	description = function() return "Deliver supplies to "..resupplyTarget end,
	messageStart = function() return "New mission: Resupply "..resupplyTarget end,
	messageEnd = function() return "Mission ended: Resupply "..resupplyTarget end,
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() 
		resupplyTarget = nil
		trigger.action.outSoundForCoalition(2,"cancel.ogg")
	end,
	isActive = function()
		if not resupplyTarget then return false end
		
		local targetzn = bc:getZoneByName(resupplyTarget)
		return targetzn:canRecieveSupply()
	end
})

attackTarget = nil
mc:trackMission({
	title = function() return "Attack "..attackTarget end,
	description = function() return "Destroy enemy forces at "..attackTarget end,
	messageStart = function() return "New mission: Attack "..attackTarget end,
	messageEnd = function() return "Mission ended: Attack "..attackTarget end,
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() 
		attackTarget = nil 
		trigger.action.outSoundForCoalition(2,"cancel.ogg")
	end,
	isActive = function()
		if not attackTarget then return false end
		
		local targetzn = bc:getZoneByName(attackTarget)
		return targetzn.side == 1
	end
})

captureTarget = nil
mc:trackMission({
	title = function() return "Capture "..captureTarget end,
	description = function() return captureTarget.." is neutral. Capture it by delivering supplies" end,
	messageStart = function() return "New mission: Capture "..captureTarget end,
	messageEnd = function() return "Mission ended: Capture "..captureTarget end,
	startAction = function() trigger.action.outSoundForCoalition(2,"ding.ogg") end,
	endAction = function() 
		captureTarget = nil 
		trigger.action.outSoundForCoalition(2,"cancel.ogg")
	end,
	isActive = function()
		if not captureTarget then return false end
		
		local targetzn = bc:getZoneByName(captureTarget)
		return targetzn.side == 0 and targetzn.active
	end
})

function generateCaptureMission()
	if captureTarget ~= nil then return end
		
	local validzones = {}
	for _,v in ipairs(bc.zones) do
		if v.side == 0 and v.active and v.zone ~= "FOB Lima" and v.zone ~= "FOB Mike" then
			table.insert(validzones, v.zone)
		end
	end
	
	if #validzones == 0 then return end
	
	local choice = math.random(1, #validzones)
	if validzones[choice] then
		captureTarget = validzones[choice]
		return true
	end
end

function generateAttackMission()
	if attackTarget ~= nil then return end
		
	local validzones = {}
	for _,v in ipairs(bc.connections) do
		local to = bc:getZoneByName(v.to)
		local from = bc:getZoneByName(v.from)
		
		if from.side ~= to.side and from.side ~= 0  and to.side ~= 0 and from.active and to.active then
			if from.side == 1 then
				table.insert(validzones, from.zone)
			elseif to.side == 1 then
				table.insert(validzones, to.zone)
			end
		end
	end
	
	if #validzones == 0 then return end
	
	local choice = math.random(1, #validzones)
	if validzones[choice] then
		attackTarget = validzones[choice]
		return true
	end
end

function generateSupplyMission()
	if resupplyTarget ~= nil then return end
		
	local validzones = {}
	for _,v in ipairs(bc.zones) do
		if v.side == 2 and v:canRecieveSupply() then
			table.insert(validzones, v.zone)
		end
	end
	
	if #validzones == 0 then return end
	
	local choice = math.random(1, #validzones)
	if validzones[choice] then
		resupplyTarget = validzones[choice]
		return true
	end
end

timer.scheduleFunction(function(_, time)
	if generateCaptureMission() then
		return time+300
	else
		return time+120
	end
end, {}, timer.getTime() + 20)

timer.scheduleFunction(function(_, time)
	if generateAttackMission() then
		return time+300
	else
		return time+120
	end
end, {}, timer.getTime() + 40)

timer.scheduleFunction(function(_, time)
	if generateSupplyMission() then
		return time+300
	else
		return time+120
	end
end, {}, timer.getTime() + 60)

mc:init()