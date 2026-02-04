/*
	Core Leader Definition
	Author: Devrim
*/

-----------------------------------------------
-- Types

-- This inserts the leader reference into the primary Data Types table as a playable Leader.
-----------------------------------------------

INSERT INTO	Types
			(Type,							Kind			)
VALUES		('LEADER_DEVRIM_DER_VISIONAER',	'KIND_LEADER'	);
		
-----------------------------------------------
-- Leaders

-- This defines the LeaderType itself, such that the leader exists as an entity alongside the other leaders.
-----------------------------------------------

INSERT INTO	Leaders
			(LeaderType,					Name,									InheritFrom,		SceneLayers		)
VALUES		('LEADER_DEVRIM_DER_VISIONAER',	'LOC_LEADER_DEVRIM_DER_VISIONAER_NAME',	'LEADER_DEFAULT', 	4				);

-----------------------------------------------
-- CivilizationLeaders

-- This ties the LeaderType to the CivilizationType
-----------------------------------------------

INSERT INTO	CivilizationLeaders
			(CivilizationType,					LeaderType,						CapitalName					)
VALUES		('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	'LOC_CITY_NAME_DEVRIM_1'	);
		
-----------------------------------------------
-- LeaderQuotes

-- This 'flavour' item ties the Quote - which appears in the Civilopedia on the Leader page - to the custom leader.
-----------------------------------------------

INSERT INTO	LeaderQuotes
			(LeaderType,					Quote												)
VALUES		('LEADER_DEVRIM_DER_VISIONAER',	'LOC_PEDIA_LEADERS_PAGE_DEVRIM_DER_VISIONAER_QUOTE'	);

-----------------------------------------------
-- CityNames

-- The below section associates our locally-defined custom civilization's CityNames to the specific leader we are configuring.
-----------------------------------------------

INSERT INTO	CityNames
			(CivilizationType,					LeaderType,						SortIndex,	CityName						)
VALUES		('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_1'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_2'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_3'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_4'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_5'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_6'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_7'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_8'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_9'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_10'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_11'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_12'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_13'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_14'		),
			('CIVILIZATION_DEVRIM_MINISTERIUM',	'LEADER_DEVRIM_DER_VISIONAER',	-1,			'LOC_CITY_NAME_DEVRIM_15'		);
