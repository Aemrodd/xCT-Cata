--[[   ____    ______
      /\  _`\ /\__  _\   __
 __  _\ \ \/\_\/_/\ \/ /_\ \___
/\ \/'\\ \ \/_/_ \ \ \/\___  __\
\/>  </ \ \ \L\ \ \ \ \/__/\_\_/
 /\_/\_\ \ \____/  \ \_\  \/_/
 \//\/_/  \/___/    \/_/

 [=====================================]
 [  Author: Dandruff @ Whisperwind-US  ]
 [  xCT+ Version 3.x.x                 ]
 [  ©2012. All Rights Reserved.        ]
 [====================================]]

local ADDON_NAME, addon = ...

-- =====================================================
-- CreateMergeSpellEntry(
--    class,       [string] - class name that spell belongs to
--    interval,       [int] - How often to update merged data (in seconds)
--    prep,           [int] - The minimum time to wait to update merged data (NOT USED YET)
--    desc,        [string] - A short, helpful qualifier (1-2 words)
--  )
--    Creates a merge settings entry for a spell.
-- =====================================================
local function CreateMergeSpellEntry(class, interval, desc, prep)
  return {
         class = class      or "ITEM",
      interval = interval   or 3,
          prep = prep       or 0,
          desc = desc,
    }
end

-- Filter These Spells Remove
-- [1949] - Damage to Self

-- List of Spells that need to be merged
addon.merges = {

-- items
	[71904] = CreateMergeSpellEntry("ITEM", 3.5, "Chaos Bane (Shadowmourne)"),
	[56488] = CreateMergeSpellEntry("ITEM", 3.5, "Global Sapper Charge (Explosion)"),
	[56350] = CreateMergeSpellEntry("ITEM", 5,   "Saronite Bomb (Explosion)"),
	[69766] = CreateMergeSpellEntry("ITEM", 0.5, "Unchained Magic (Sindragosa)"),
	[71829] = CreateMergeSpellEntry("ITEM", 0.5, "Arctic Cold (Valithria trash Mind controlled mob)"),
	[72672] = CreateMergeSpellEntry("ITEM", 0.5, "Mutated Plague (Putricide)"),
	[89087] = CreateMergeSpellEntry("ITEM", 3, "Darkmoon Card: Hurricane"),
	[74555] = CreateMergeSpellEntry("ITEM", 3, "Dense Embersilk Bandage"),


-- death knight (damage)
	[55050]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Heart Strike
	[55095]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Frost Fever
	[55078]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Blood Plague
  [55536]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Unholy Blight
  [49941]  = CreateMergeSpellEntry("DEATHKNIGHT", .5),      -- Blood Boil
  [47468]  = CreateMergeSpellEntry("DEATHKNIGHT", 4),       -- Claw (Army of the Dead)
  [49184]  = CreateMergeSpellEntry("DEATHKNIGHT", .5),      -- Howling Blast
	[52212]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Death and Decay
  [50526]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Wandering Plague

-- death knight (healing)
  [81280]  = CreateMergeSpellEntry("DEATHKNIGHT", .5),          -- Blood Burst
  [53365]  = CreateMergeSpellEntry("DEATHKNIGHT", 4),		-- Unholy Strength

-- druid (damage)
	[81281]   = CreateMergeSpellEntry("DRUID"),			-- Fungal Growth
	[8921]   = CreateMergeSpellEntry("DRUID", 2),		-- Moonfire
	[5570]   = CreateMergeSpellEntry("DRUID", 2),		-- Insect Swarm
	[42231]  = CreateMergeSpellEntry("DRUID"),			-- Hurricane
	[97547]   = CreateMergeSpellEntry("DRUID"),			-- Solar Beam
	[50288]  = CreateMergeSpellEntry("DRUID"),			-- Starfall
	[53190]  = CreateMergeSpellEntry("DRUID", .8),		-- Starfall aoe 10 ticks
	[53227]  = CreateMergeSpellEntry("DRUID", .5),		-- Typhoon
	[78777]   = CreateMergeSpellEntry("DRUID"),			-- Wild Mushroom
	[6807]   = CreateMergeSpellEntry("DRUID"),			-- Maul
	[1822]   = CreateMergeSpellEntry("DRUID"),			-- Rake
	[62078]  = CreateMergeSpellEntry("DRUID", .5),		-- Swipe (Cat Form)
	[48562]  = CreateMergeSpellEntry("DRUID", .5),		-- Swipe (Bear Form)
	[33745]  = CreateMergeSpellEntry("DRUID", 2),		-- Lacerate
	[1079]   = CreateMergeSpellEntry("DRUID", 2),		-- Rip
	[77758]  = CreateMergeSpellEntry("DRUID", .5),		-- Thrash

-- druid (healing)
	[81269]  = CreateMergeSpellEntry("DRUID", 3),		-- Efflorescence
	[33763]  = CreateMergeSpellEntry("DRUID"),			-- Lifebloom
	[8936]   = CreateMergeSpellEntry("DRUID"),			-- Regrowth
	[774]    = CreateMergeSpellEntry("DRUID"),			-- Rejuvenation (Normal)
	[64801]  = CreateMergeSpellEntry("DRUID"),			-- Rejuvenation (First tick)
	[48445]  = CreateMergeSpellEntry("DRUID"),			-- Tranquility
	[48438]  = CreateMergeSpellEntry("DRUID", 1),		-- Wild Growth

-- hunter
	[2643]  = CreateMergeSpellEntry("HUNTER", .5),		-- Multi-Shot
	[1978]   = CreateMergeSpellEntry("HUNTER", .5),		-- Serpent Sting
	[88466]   = CreateMergeSpellEntry("HUNTER", .5),		-- Serpent Sting (Spread)
	[83077]   = CreateMergeSpellEntry("HUNTER"),		-- Improved Serpent Sting
	[13812]  = CreateMergeSpellEntry("HUNTER"),		-- Explosive Trap
	[53301]  = CreateMergeSpellEntry("WARRIOR"),		-- Explosive Shot
	
-- hunter (healing)

	[54131]  = CreateMergeSpellEntry("WARRIOR",5),		-- Bloodthirsty

-- mage
	[44461]  = CreateMergeSpellEntry("MAGE"),		-- Living Bomb (Explosion)
	[44457]  = CreateMergeSpellEntry("MAGE"),		-- Living Bomb (DoT)
	[2120]  = CreateMergeSpellEntry("MAGE", 2),		-- Flamestrike (DoT)
	[12654]  = CreateMergeSpellEntry("MAGE"),		-- Ignite (DoT)
	[11366]  = CreateMergeSpellEntry("MAGE"),		-- Pyroblast (DoT)
	[11129]  = CreateMergeSpellEntry("MAGE"),		-- Combustion
	[11129]  = CreateMergeSpellEntry("MAGE"),		-- Combustion
	[31661]  = CreateMergeSpellEntry("MAGE", .5),		-- Dragon's Breath
	[44614]  = CreateMergeSpellEntry("MAGE"),		-- Frostfire Bolt (DoT)
	[7268]  = CreateMergeSpellEntry("MAGE"),		-- Arcane Missiles
	[42208]  = CreateMergeSpellEntry("MAGE", .5),		-- Blizzard
	[122]  = CreateMergeSpellEntry("MAGE", .5),		-- Frost Nova
	[11113]  = CreateMergeSpellEntry("MAGE", .5),		-- Blast Wave
	[120]  = CreateMergeSpellEntry("MAGE", .5),		-- Cone of Cold
	[1449]   = CreateMergeSpellEntry("MAGE", .5),		-- Arcane Explosion

-- paladin (damage)
	[2812]   = CreateMergeSpellEntry("PALADIN", .1),	-- Holy Wrath
	[53385]  = CreateMergeSpellEntry("PALADIN", .1),	-- Divine Storm
	[96172]  = CreateMergeSpellEntry("PALADIN", .5),	-- Hand of Light
	[31803]  = CreateMergeSpellEntry("PALADIN", 6),		-- Censure
	[81297]  = CreateMergeSpellEntry("PALADIN", 4),		-- Consecration
	[20424]  = CreateMergeSpellEntry("PALADIN", 1),		-- Seals of Command
	[42463]  = CreateMergeSpellEntry("PALADIN"),		-- Seal of Truth
	[101423]  = CreateMergeSpellEntry("PALADIN"),		-- Seal of Righteousness
	[88263]  = CreateMergeSpellEntry("PALADIN"),		-- Hammer of the Righteous
	[31935]  = CreateMergeSpellEntry("PALADIN"),		-- Avenger's Shield
	[879]  = CreateMergeSpellEntry("PALADIN", .5),		-- Exorcism


-- paladin (healing)
	[54172]  = CreateMergeSpellEntry("PALADIN", .5),		-- Divine Storm
	[53652]  = CreateMergeSpellEntry("PALADIN"),		-- Beacon of Light
	[20167]  = CreateMergeSpellEntry("PALADIN"),		-- Seal of Insight (Heal Effect)
	[54968]  = CreateMergeSpellEntry("PALADIN", 1),		-- Holy Light Glyph AoE
	[20267]  = CreateMergeSpellEntry("PALADIN", 5),		-- Judgement of light AoE
	[82327]  = CreateMergeSpellEntry("PALADIN", 2),		-- Holy Radiance (HoT)
	[86452]  = CreateMergeSpellEntry("PALADIN", 2),		-- Holy Radiance	
	[86678]  = CreateMergeSpellEntry("PALADIN", 2),		-- Light of the Ancient Kings

-- priest (damage)
	[47666]  = CreateMergeSpellEntry("PRIEST"),			-- Penance (Damage Effect)
	[15237]  = CreateMergeSpellEntry("PRIEST", .5),		-- Holy Nova (Damage Effect)
	[589]    = CreateMergeSpellEntry("PRIEST", 6),		-- Shadow Word: Pain
	[34914]  = CreateMergeSpellEntry("PRIEST", 6),		-- Vampiric Touch
	[63675]  = CreateMergeSpellEntry("PRIEST"),			-- Improved Devouring Plague
  	[2944]  = CreateMergeSpellEntry("PRIEST"),          -- Devouring Plague
	[15407]  = CreateMergeSpellEntry("PRIEST", 2),		-- Mind Flay
	[49821]  = CreateMergeSpellEntry("PRIEST"),			-- Mind Seer
	[87532]  = CreateMergeSpellEntry("PRIEST"),			-- Shadowy Apparition

-- priest (healing)
	[47750]  = CreateMergeSpellEntry("PRIEST"),		-- Penance (Heal Effect)
	[139]    = CreateMergeSpellEntry("PRIEST"),		-- Renew
	[77489] = CreateMergeSpellEntry("PRIEST", 2),		-- Echo of Light
	[88686] = CreateMergeSpellEntry("PRIEST", .5),		-- Holy Word: Sanctuary
	[596]    = CreateMergeSpellEntry("PRIEST", .5),		-- Prayer of Healing
	[56161]  = CreateMergeSpellEntry("PRIEST"),		-- Glyph of Prayer of Healing
	[64844]  = CreateMergeSpellEntry("PRIEST"),		-- Divine Hymn
	[32546]  = CreateMergeSpellEntry("PRIEST"),		-- Binding Heal
	[34861]  = CreateMergeSpellEntry("PRIEST", .5),		-- Circle of Healing
	[23455]  = CreateMergeSpellEntry("PRIEST"),		-- Holy Nova (Healing Effect)
	[33110]  = CreateMergeSpellEntry("PRIEST"),		-- Prayer of Mending
	[63544]  = CreateMergeSpellEntry("PRIEST"),		-- Divine Touch
	[2944]   = CreateMergeSpellEntry("PRIEST", 6.5),		-- Devouring Plague (Healing)
	[75999]   = CreateMergeSpellEntry("PRIEST", 6.5),		-- Improved Devouring Plague (Healing)
	[15290]  = CreateMergeSpellEntry("PRIEST"),		-- Vampiric Embrace

-- rogue
	[51723]  = CreateMergeSpellEntry("ROGUE", .5),		-- Fan of Knives (H1)
	[57970]  = CreateMergeSpellEntry("ROGUE", 6),		-- Deadly Poison
	[8680]  = CreateMergeSpellEntry("ROGUE"),		-- Instant Poison  
	[13218]  = CreateMergeSpellEntry("ROGUE"),		-- Wound Poison
	[57841]  = CreateMergeSpellEntry("ROGUE"),		-- Killing Spree
	[22482]  = CreateMergeSpellEntry("ROGUE", 1),		-- Blade Flurry
	[86392]  = CreateMergeSpellEntry("ROGUE", 2),		-- Main Gauche

-- shaman (damage)
	[421]  = CreateMergeSpellEntry("SHAMAN", .5),		-- Chain Lightning
	[61654]  = CreateMergeSpellEntry("SHAMAN"),		-- Fire Nova
	[51490]  = CreateMergeSpellEntry("SHAMAN"),		-- Thunderstorm
	[8187]  = CreateMergeSpellEntry("SHAMAN", .5),		-- Magma Totem
	[8050]  = CreateMergeSpellEntry("SHAMAN", 1),		-- Flame Shock
	[25504]  = CreateMergeSpellEntry("SHAMAN", .5),		-- Windfury
	[13376] = CreateMergeSpellEntry("SHAMAN", .5),		-- Fire Shield (Fire Elemental)

-- shaman (healing)
	[1064]  = CreateMergeSpellEntry("SHAMAN", .1),		-- Chain Heal
	[52042]  = CreateMergeSpellEntry("SHAMAN"),		-- Healing Stream Totem
	[52000]  = CreateMergeSpellEntry("SHAMAN"),		-- Earthliving
	[61295]  = CreateMergeSpellEntry("SHAMAN"),		-- Riptide (Instant & HoT)
	[73921]  = CreateMergeSpellEntry("SHAMAN"),		-- Healing Rain

-- warlock (damage)
	[27285]  = CreateMergeSpellEntry("WARLOCK", .1),	-- Seed of Corruption (Explosion)
	[172]    = CreateMergeSpellEntry("WARLOCK", 2),	-- Corruption
	[30108]  = CreateMergeSpellEntry("WARLOCK", 2),	-- Unstable Affliction
	[348]    = CreateMergeSpellEntry("WARLOCK"),		-- Immolate
	[980]    = CreateMergeSpellEntry("WARLOCK", .5),	-- Bane of Agony
	[42223]  = CreateMergeSpellEntry("WARLOCK", 1),		-- Rain of Fire
	[5857]  = CreateMergeSpellEntry("WARLOCK"),		-- Hellfire Effect
	[47897]  = CreateMergeSpellEntry("WARLOCK", .1),	-- Shadowflame (shadow direct damage)
	[47960]  = CreateMergeSpellEntry("WARLOCK", .1),		-- Shadowflame (fire dot)
	[50590]  = CreateMergeSpellEntry("WARLOCK"),		-- Immolation Aura
	[30213]  = CreateMergeSpellEntry("WARLOCK"),		-- Legion Strike (Felguard)
	[89753]  = CreateMergeSpellEntry("WARLOCK"),		-- Felstorm (Felguard)
	[20153]  = CreateMergeSpellEntry("WARLOCK"),		-- Immolation (Infernal)
	[85421]  = CreateMergeSpellEntry("WARLOCK", 2),	-- Burning Embers (Imp)
	[30283]  = CreateMergeSpellEntry("WARLOCK"),		-- Shadowfury
	[85455]  = CreateMergeSpellEntry("WARLOCK"),	-- Bane of Havoc

-- warlock (healing)
	[96379]  = CreateMergeSpellEntry("WARLOCK", 10),		-- Fel Armor
	[63106]  = CreateMergeSpellEntry("WARLOCK"),		-- Siphon Life
	[755]  = CreateMergeSpellEntry("WARLOCK"),		-- Health Funnel
	[54181]  = CreateMergeSpellEntry("WARLOCK"),		-- Fel Synergy
	[689]  = CreateMergeSpellEntry("WARLOCK"),		-- Drain Life
	[30294]  = CreateMergeSpellEntry("WARLOCK"),		-- Soul Leech
	[79268]  = CreateMergeSpellEntry("WARLOCK"),		-- Soul Harvest

-- warrior
	[845]  = CreateMergeSpellEntry("WARRIOR", .5),      -- Cleave
  [46968]  = CreateMergeSpellEntry("WARRIOR", .5),      -- Shockwave
  [47502]  = CreateMergeSpellEntry("WARRIOR", .5),      -- Thunder Clap
	[50622]  = CreateMergeSpellEntry("WARRIOR"),          -- Bladestorm (Whirlwind)
  [1680]   = CreateMergeSpellEntry("WARRIOR"),          -- Whirlwind
	[94009]  = CreateMergeSpellEntry("WARRIOR"),          -- Rend
	[12723]  = CreateMergeSpellEntry("WARRIOR"),          -- Sweeping Strikes
	[12721]  = CreateMergeSpellEntry("WARRIOR"),          -- Deep Wounds

-- warrior (healing)
  [23880]  = CreateMergeSpellEntry("WARRIOR"),          -- Bloodthirst
  [55694]  = CreateMergeSpellEntry("WARRIOR"),          -- Enraged Regeneration
}


addon.merge2h = {
  -- other
  [72671] = 72672,    -- Mutated plague
  [72451] = 72672,    -- Mutated plague
  [72463] = 72672,    -- Mutated plague
  -- Mage (Damage)
  [55362] = 44457,    -- Living Bomb (DOT)

  -- Priest (Damage)
  [49821] = 53022,		-- Mind Sear

  -- Druid (Damage)
  [53195] = 53190,		-- Starfall aoe 2
  [81281] = 78777,		-- Fungal Growth

  -- Rogue (Damage)
	[57842] = 57841,		-- Killing Spree OH

  -- Shaman (damage)
	[45297]	= 421,			-- Chain Lightning (Lightning Overload)
	[32176]	= 32175,		-- Stormstrike
	[77451]	= 51505,		-- Lava Burst (Mastery)
	[45284] = 403,			-- Lightning Bolt (Mastery)

  -- Warlock (Damage)
  [27285] = 27243,    -- Seed of Corruption (Explosion)

  -- Warrior
  [44949] = 1680,     -- Whirlwind (Offhand)
  [46924] = 50622,    -- Bladestorm (Offhand)

  -- Deathknight
  [66198] = 49020,     --    Obliterate OH
  [66188] = 49998,     --  Death Strike OH
  [66216] = 45462,     -- Plague Strike OH
  [66196] = 49143,     --  Frost Strike OH
  [66217] = 56815,     --   Rune Strike OH
  [66215] = 45902,     --  Blood Strike OH
}
