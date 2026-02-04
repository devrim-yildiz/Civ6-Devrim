/*
	Main Civilization Configuration
	Authors: Devrim
*/

-----------------------------------------------
-- Types

-- This inserts the civilization reference into the primary Data Types table as a playable Civilization. This is mandatory. The string listed under 'Type' must be used throughout the mod when referring to the CivilizationType.

-- It is customary for this to take the following format: CIVILIZATION_PREFIX_CIVNAME

-- PREFIX: A 'unique', brief string of characters - often derived from the modder's initials, name or other alias (e.g. MC, MATT or MYALIAS). This is used to differentiate from other mods, primarily.
-- CIVNAME: The name of the civilization itself (e.g. FRANCE, GERMANY or RUSSIA).
-----------------------------------------------

INSERT INTO	Types
			(Type,									Kind					)
VALUES		('CIVILIZATION_DEVRIM_MINISTERIUM',		'KIND_CIVILIZATION'		);
		
-----------------------------------------------
-- Civilizations

-- This inserts some basic configuration into the list of Civilizations that the game recognises. The below entry contains all seven columns required for this table to be fully populated - no fields are ommitted in the below example.

-- Locally-referenced values (i.e. those defined in this mod): CivilizationType, Name, Description, Adjective
-- Game-referenced values (i.e. those drawn from the base game):

-- StartingCivilizationLevelType: For a playable civilization, this must always be: CIVILIZATION_LEVEL_FULL_CIV. The game utilises this string to differentiate between playable civilizations and city-states (and any other lesser entities).
-- RandomCityNameDepth: An integer value, this is the size of the pool of city names from which the game chooses the next built city's name. The capital will always be built first; after which, the game will pick randomly from the next X cities listed (where X = value).
-- Ethnicity: Picked from an explicit list of defined ethnicities, this must be one of ETHNICITY_AFRICAN, ETHNICITY_ASIAN, ETHNICITY_EURO, ETHNICITY_MEDIT or ETHNICITY_SOUTHAM
-----------------------------------------------

INSERT INTO	Civilizations
			(
			CivilizationType,
			Name,
			Description,
			Adjective,
			StartingCivilizationLevelType,
			RandomCityNameDepth,
			Ethnicity
			)

VALUES		(
			'CIVILIZATION_DEVRIM_MINISTERIUM', --CivilizationType
			'LOC_CIVILIZATION_DEVRIM_MINISTERIUM_NAME', -- Name
			'LOC_CIVILIZATION_DEVRIM_MINISTERIUM_DESCRIPTION', -- Description
			'LOC_CIVILIZATION_DEVRIM_MINISTERIUM_ADJECTIVE', -- Adjective
			'CIVILIZATION_LEVEL_FULL_CIV', -- StartingCivilizationLevelType
			5, -- RandomCityNameDepth
			'ETHNICITY_EURO' -- Ethnicity
			);

-----------------------------------------------
-- NamedMountains

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named mountain range has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom mountain range names defined in the NamedMountainCivilizations, below.

-- Compatibility: NamedMountains were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,							Name											)
VALUES	('NAMED_MOUNTAIN_HARZ',						'LOC_NAMED_MOUNTAIN_HARZ'						),
		('NAMED_MOUNTAIN_ERZGEBIRGE',				'LOC_NAMED_MOUNTAIN_ERZGEBIRGE'					),
		('NAMED_MOUNTAIN_SCHWARZWALD',				'LOC_NAMED_MOUNTAIN_SCHWARZWALD'				);

-----------------------------------------------
-- NamedMountainCivilizations

-- This ties named mountain ranges to your custom civilization. This is optional. The entries for NamedMountainType can either be new, custom mountain ranges or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: NamedMountainCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,					NamedMountainType							)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_MOUNTAIN_HARZ'						),
		('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_MOUNTAIN_ERZGEBIRGE'					),
		('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_MOUNTAIN_SCHWARZWALD'				);

-----------------------------------------------
-- NamedRivers

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named river has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom river names defined in the NamedRiverCivilizations, below.

-- Compatibility: NamedRivers were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

REPLACE INTO NamedRivers
		(NamedRiverType,					Name									)
VALUES	('NAMED_RIVER_RHEIN',				'LOC_NAMED_RIVER_RHEIN'					),
		('NAMED_RIVER_ELBE',				'LOC_NAMED_RIVER_ELBE'					),
		('NAMED_RIVER_DONAU',				'LOC_NAMED_RIVER_DONAU'					);

-----------------------------------------------
-- NamedRiverCivilizations

-- This ties named rivers to your custom civilization. This is optional. The entries for NamedRiverType can either be new, custom rivers or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: NamedRiverCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,					NamedRiverType					)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_RIVER_RHEIN'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_RIVER_ELBE'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_RIVER_DONAU'				);

-----------------------------------------------
-- CityNames

-- This list of locally-referenced values ensures provides the list of city names used by the custom civilization. It is extendable, but is recommended to be at least 15 entries long.
-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,						CityName								)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_1'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_2'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_3'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_4'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_5'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_6'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_7'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_8'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_9'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_10'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_11'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_12'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_13'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_14'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITY_NAME_DEVRIM_15'				);
		
-----------------------------------------------
-- CivilizationCitizenNames

-- The below locally-referenced values provide yet further flavour to the game. These names are used to populate the 'Gossip' items that appear from time-to-time within the game.
-----------------------------------------------

INSERT INTO	CivilizationCitizenNames
		(CivilizationType,						CitizenName,								Female	)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITIZEN_DEVRIM_MALE_1',				0 		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITIZEN_DEVRIM_MALE_2',				0 		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITIZEN_DEVRIM_MALE_3',				0 		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITIZEN_DEVRIM_MALE_4',				0 		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITIZEN_DEVRIM_MALE_5',				0 		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITIZEN_DEVRIM_FEMALE_1',				1 		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITIZEN_DEVRIM_FEMALE_2',				1 		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITIZEN_DEVRIM_FEMALE_3',				1 		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITIZEN_DEVRIM_FEMALE_4',				1 		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CITIZEN_DEVRIM_FEMALE_5',				1 		);

-----------------------------------------------
-- CivilizationInfo

-- The below entries are primarily used in the Civilopedia - specifically in the side-bar that describes some further flavour information about your custom civilization.
-----------------------------------------------

INSERT INTO	CivilizationInfo
		(CivilizationType,						Header,						Caption,									SortIndex	)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_DEVRIM_LOCATION',				10			),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_DEVRIM_SIZE',					20			),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_DEVRIM_POPULATION',			30			),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_DEVRIM_CAPITAL',				40			);
		
-----------------------------------------------
-- Start Bias

-- The below game-referenced values dictate the influence on your custom civilization's starting location by the terrain, features, resources and rivers that are generated on the map.
-----------------------------------------------

INSERT INTO	StartBiasTerrains
		(CivilizationType,						TerrainType,			Tier	)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',		'TERRAIN_PLAINS',		2		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'TERRAIN_PLAINS_HILLS',	3		);

INSERT INTO	StartBiasResources
		(CivilizationType,						ResourceType,			Tier	)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',		'RESOURCE_IRON',		3		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'RESOURCE_COAL',		2		);

INSERT INTO	StartBiasRivers
		(CivilizationType,							Tier	)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',			3		);
