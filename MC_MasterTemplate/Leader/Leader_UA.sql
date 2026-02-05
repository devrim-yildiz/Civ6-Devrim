/*
	Leader Unique Ability - Industrial Vision
	Authors: Devrim
	
	Leader ability for Devrim Schichtleiter
	Note: Most of the civilization abilities are already defined in Civilization_UA.sql
	This file adds any leader-specific bonuses
*/

-----------------------------------------------
-- Types

-- This inserts the Unique Ability reference into the primary Data Types table as a recognised trait.
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION',			'KIND_TRAIT'	);

-----------------------------------------------
-- Traits

-- With the TraitType defined (above), the below then inserts it into the overall Traits table.
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,									Name,												Description												)
VALUES	('TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION',	'LOC_TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION_NAME',	'LOC_TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits

-- This defines the leader to which the TraitType is applied.
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,					TraitType									)
VALUES	('LEADER_DEVRIM_SCHICHTLEITER',	'TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION'		);

-----------------------------------------------
-- TraitModifiers

-- Leader ability: Industrial districts complete 15% faster
-----------------------------------------------

INSERT INTO TraitModifiers 
		(TraitType,									ModifierId												)
VALUES	('TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION',	'MODIFIER_DEVRIM_INDUSTRIAL_DISTRICT_FASTER'			);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType												)
VALUES	('MODIFIER_DEVRIM_INDUSTRIAL_DISTRICT_FASTER',			'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION'			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments 
		(ModifierId,											Name,						Value								)
VALUES	('MODIFIER_DEVRIM_INDUSTRIAL_DISTRICT_FASTER',			'DistrictType',				'DISTRICT_INDUSTRIAL_ZONE'			),
		('MODIFIER_DEVRIM_INDUSTRIAL_DISTRICT_FASTER',			'Amount',					15									);
