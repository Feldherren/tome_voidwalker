newBirthDescriptor{
	type = "subclass",
	name = "Voidwalker",
	locked = function() return profile.mod.allow_build.chronomancer_temporal_warden end,
	--locked = function() return profile.mod.allow_build.chronomancer_temporal_warden and profile.mod.allow_build.rogue_marauder end,
	locked_desc = "Cryptic clue about unlocking it, or very short description.",
	desc = {
		"Description goes here.",
		"More description goes here.",
		"They use: Strength, Magic and Willpower.",
		"#GOLD#Stat modifiers:",
		"#LIGHT_BLUE# * +2 Strength, +0 Dexterity, +0 Constitution",
		"#LIGHT_BLUE# * +2 Magic, +5 Willpower, +0 Cunning",
		"#GOLD#Life per level:#LIGHT_BLUE# -1",
	},
	power_source = {arcane=true,},
	random_rarity = 2,
	--work out what stats it should get and rely on
	stats = { str=2, wil=5, mag=2 },
	talents_types = {
		--class		
		["chronomancy/timetwister"]={true, 0.3},
		["chronomancy/displaced-spells"]={true, 0.3},
		["chronomancy/spells-in-waiting"]={true, 0.3},
		["chronomancy/ticking-manipulations"]={true, 0.3},
		
		--class locked
		["chronomancy/cracking-stopwatch"]={false, 0.3},
		["chronomancy/flux"]={false, 0.3},
		
		--generic
		["technique/combat-training"]={true, 0.3},
		["chronomancy/spacetime-weaving"]={true, 0.3},
		["chronomancy/energy"]={true, 0.3},
		
		--generic locked
		["cunning/survival"]={false, 0},
	},
	-- classes usually start with four
	talents = {
		[ActorTalents.T_TTS_TIMETWISTED] = 1,
		[ActorTalents.T_SIW_TIME_TWISTING] = 1,
	},
	--starting with a greatsword, but do we want to give it a warhammer instead?
	--armour?
	copy = {
		equipment = resolvers.equip{ id=true,
			{type="weapon", subtype="greatsword", name="iron greatsword", autoreq=true, ego_chance=-1000, ego_chance=-1000},
			{type="armor", subtype="light", name="rough leather armour", autoreq=true, ignore_material_restriction=true, ego_chance=-1000},
		},
	},
	--need to consider if there should be the negative adjustment to health
	copy_add = {
	  life_rating = -1,
	},
}

-- Add to chronomancer
getBirthDescriptor("class", "Chronomancer").descriptor_choices.subclass.Voidwalker = "allow"
      
