/*
	Civilization Configuration - Gathering Storm Specific
	Authors: Devrim
	
	This file contains features only available in Gathering Storm (Expansion2).
*/

-----------------------------------------------
-- NamedMountains

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named mountain range has been linked to your custom civilization.
-- Compatibility: NamedMountains were introduced in the Gathering Storm expansion (Expansion2).
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,							Name											)
VALUES	('NAMED_MOUNTAIN_HARZ',						'LOC_NAMED_MOUNTAIN_HARZ'						),
		('NAMED_MOUNTAIN_ERZGEBIRGE',				'LOC_NAMED_MOUNTAIN_ERZGEBIRGE'					),
		('NAMED_MOUNTAIN_SCHWARZWALD',				'LOC_NAMED_MOUNTAIN_SCHWARZWALD'				);

-----------------------------------------------
-- NamedMountainCivilizations

-- This ties named mountain ranges to your custom civilization.
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,					NamedMountainType							)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_MOUNTAIN_HARZ'						),
		('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_MOUNTAIN_ERZGEBIRGE'					),
		('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_MOUNTAIN_SCHWARZWALD'				);

-----------------------------------------------
-- NamedRivers

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named river has been linked to your custom civilization.
-- Compatibility: NamedRivers were introduced in the Gathering Storm expansion (Expansion2).
-----------------------------------------------

REPLACE INTO NamedRivers
		(NamedRiverType,					Name									)
VALUES	('NAMED_RIVER_RHEIN',				'LOC_NAMED_RIVER_RHEIN'					),
		('NAMED_RIVER_ELBE',				'LOC_NAMED_RIVER_ELBE'					),
		('NAMED_RIVER_DONAU',				'LOC_NAMED_RIVER_DONAU'					);

-----------------------------------------------
-- NamedRiverCivilizations

-- This ties named rivers to your custom civilization.
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,					NamedRiverType					)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_RIVER_RHEIN'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_RIVER_ELBE'				),
		('CIVILIZATION_DEVRIM_MINISTERIUM',	'NAMED_RIVER_DONAU'				);
