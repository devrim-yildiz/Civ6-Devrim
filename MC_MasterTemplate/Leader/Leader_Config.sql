/*
	Core Leader Configuration
	Authors: Devrim
*/

-----------------------------------------------
-- Players (Standard Ruleset)

-- The below section instructs the game to make this leader available as a selection when running the Standard ruleset.
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:StandardPlayers', -- Domain
		'CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationType
		'LOC_CIVILIZATION_DEVRIM_MINISTERIUM_NAME', -- CivilizationName
		'ICON_CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_DEVRIM_SCHICHTLEITER', -- LeaderType
		'LOC_LEADER_DEVRIM_SCHICHTLEITER_NAME', -- LeaderName
		'ICON_LEADER_DEVRIM_SCHICHTLEITER', -- LeaderIcon (Portrait)
		'LOC_TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_DEVRIM_SCHICHTLEITER' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- Players (Rise and Fall)

-- The below section instructs the game to make this leader available as a selection when running the Rise and Fall ruleset.
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:Expansion1_Players', -- Domain
		'CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationType
		'LOC_CIVILIZATION_DEVRIM_MINISTERIUM_NAME', -- CivilizationName
		'ICON_CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_DEVRIM_SCHICHTLEITER', -- LeaderType
		'LOC_LEADER_DEVRIM_SCHICHTLEITER_NAME', -- LeaderName
		'ICON_LEADER_DEVRIM_SCHICHTLEITER', -- LeaderIcon (Portrait)
		'LOC_TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_DEVRIM_SCHICHTLEITER' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- Players (Gathering Storm)

-- The below section instructs the game to make this leader available as a selection when running the Gathering Storm ruleset.
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationType
		'LOC_CIVILIZATION_DEVRIM_MINISTERIUM_NAME', -- CivilizationName
		'ICON_CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_DEVRIM_SCHICHTLEITER', -- LeaderType
		'LOC_LEADER_DEVRIM_SCHICHTLEITER_NAME', -- LeaderName
		'ICON_LEADER_DEVRIM_SCHICHTLEITER', -- LeaderIcon (Portrait)
		'LOC_TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_DEVRIM_SCHICHTLEITER' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems (Standard Ruleset)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
VALUES	(
		'Players:StandardPlayers', -- Domain
		'CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationType
		'LEADER_DEVRIM_SCHICHTLEITER', -- LeaderType
		'UNIT_DEVRIM_STAHLPRAKTIKANTEN', -- Type
		'ICON_UNIT_DEVRIM_STAHLPRAKTIKANTEN', -- Icon
		'LOC_UNIT_DEVRIM_STAHLPRAKTIKANTEN_NAME', -- Name
		'LOC_UNIT_DEVRIM_STAHLPRAKTIKANTEN_DESCRIPTION', -- Description
		10	-- SortIndex
		),
		
		(
		'Players:StandardPlayers', -- Domain
		'CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationType
		'LEADER_DEVRIM_SCHICHTLEITER', -- LeaderType
		'BUILDING_DEVRIM_QUANTUM_FABRIK', -- Type
		'ICON_BUILDING_DEVRIM_QUANTUM_FABRIK', -- Icon
		'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_NAME', -- Name
		'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_DESCRIPTION', -- Description
		20 -- SortIndex
		);

-----------------------------------------------
-- PlayerItems (Rise and Fall)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
VALUES	(
		'Players:Expansion1_Players', -- Domain
		'CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationType
		'LEADER_DEVRIM_SCHICHTLEITER', -- LeaderType
		'UNIT_DEVRIM_STAHLPRAKTIKANTEN', -- Type
		'ICON_UNIT_DEVRIM_STAHLPRAKTIKANTEN', -- Icon
		'LOC_UNIT_DEVRIM_STAHLPRAKTIKANTEN_NAME', -- Name
		'LOC_UNIT_DEVRIM_STAHLPRAKTIKANTEN_DESCRIPTION', -- Description
		10	-- SortIndex
		),
		
		(
		'Players:Expansion1_Players', -- Domain
		'CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationType
		'LEADER_DEVRIM_SCHICHTLEITER', -- LeaderType
		'BUILDING_DEVRIM_QUANTUM_FABRIK', -- Type
		'ICON_BUILDING_DEVRIM_QUANTUM_FABRIK', -- Icon
		'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_NAME', -- Name
		'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_DESCRIPTION', -- Description
		20 -- SortIndex
		);

-----------------------------------------------
-- PlayerItems (Gathering Storm)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
VALUES	(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationType
		'LEADER_DEVRIM_SCHICHTLEITER', -- LeaderType
		'UNIT_DEVRIM_STAHLPRAKTIKANTEN', -- Type
		'ICON_UNIT_DEVRIM_STAHLPRAKTIKANTEN', -- Icon
		'LOC_UNIT_DEVRIM_STAHLPRAKTIKANTEN_NAME', -- Name
		'LOC_UNIT_DEVRIM_STAHLPRAKTIKANTEN_DESCRIPTION', -- Description
		10	-- SortIndex
		),
		
		(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_DEVRIM_MINISTERIUM', -- CivilizationType
		'LEADER_DEVRIM_SCHICHTLEITER', -- LeaderType
		'BUILDING_DEVRIM_QUANTUM_FABRIK', -- Type
		'ICON_BUILDING_DEVRIM_QUANTUM_FABRIK', -- Icon
		'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_NAME', -- Name
		'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_DESCRIPTION', -- Description
		20 -- SortIndex
		);