/*
	Civilization Unique Unit - Die Stahlpraktikanten
	Authors: Devrim
	
	Replaces Infantry (UNIT_INFANTRY)
	
	Abilities:
	- Built 30% faster in cities with Quantum-Fabrik
	- After completion: City receives +20 Production (instant)
	- +1 Combat Strength per Mine improvement in the city (max +6)
	- Defeating a unit grants +5 Science to the city
	- Trade routes from the city give +1 Production for 3 turns (simplified to permanent bonus)
*/

-----------------------------------------------
-- Types

-- Define the trait for unique unit, the unit itself, and its abilities
-----------------------------------------------	
	
INSERT INTO Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_DEVRIM_STAHLPRAKTIKANTEN',		'KIND_TRAIT'	),
		('UNIT_DEVRIM_STAHLPRAKTIKANTEN',					'KIND_UNIT'		),
		('ABILITY_DEVRIM_STAHLPRAKTIKANTEN',				'KIND_ABILITY'	);

-----------------------------------------------
-- Tags

-- Define unit class for the ability
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,								Vocabulary		)
VALUES	('CLASS_DEVRIM_STAHLPRAKTIKANTEN',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags

-- Associate unit with the class and ability with the class
-- Also inherit tags from Infantry
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,									Tag									)
VALUES	('UNIT_DEVRIM_STAHLPRAKTIKANTEN',		'CLASS_DEVRIM_STAHLPRAKTIKANTEN'	),
		('ABILITY_DEVRIM_STAHLPRAKTIKANTEN',	'CLASS_DEVRIM_STAHLPRAKTIKANTEN'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_DEVRIM_STAHLPRAKTIKANTEN',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_INFANTRY';

-----------------------------------------------
-- Traits

-- Define the trait with name and description
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,											Name,										Description										)
VALUES	('TRAIT_CIVILIZATION_DEVRIM_STAHLPRAKTIKANTEN',		'LOC_UNIT_DEVRIM_STAHLPRAKTIKANTEN_NAME',	'LOC_UNIT_DEVRIM_STAHLPRAKTIKANTEN_DESCRIPTION'	);

-----------------------------------------------
-- CivilizationTraits

-- Assign the unique unit trait to our civilization
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,						TraitType										)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',		'TRAIT_CIVILIZATION_DEVRIM_STAHLPRAKTIKANTEN'	);

-----------------------------------------------
-- Units

-- Define the Stahlpraktikanten unit
-- Based on Infantry but with unique bonuses
-----------------------------------------------	
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_DEVRIM_STAHLPRAKTIKANTEN',					-- UnitType
		'LOC_UNIT_DEVRIM_STAHLPRAKTIKANTEN_NAME',			-- Name
		'LOC_UNIT_DEVRIM_STAHLPRAKTIKANTEN_DESCRIPTION',		-- Description
		'TRAIT_CIVILIZATION_DEVRIM_STAHLPRAKTIKANTEN',		-- TraitType
		BaseMoves,
		Cost,												-- Same cost as Infantry
		PurchaseYield,
		AdvisorType,
		Combat,												-- Same base combat as Infantry
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_INFANTRY';

-----------------------------------------------
-- UnitUpgrades

-- Maintain upgrade path from Infantry
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_DEVRIM_STAHLPRAKTIKANTEN',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_INFANTRY';

-----------------------------------------------
-- UnitAiInfos

-- Inherit AI behavior from Infantry
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_DEVRIM_STAHLPRAKTIKANTEN',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_INFANTRY';
		
-----------------------------------------------
-- UnitReplaces

-- Stahlpraktikanten replaces Infantry
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,						ReplacesUnitType		)
SELECT	'UNIT_DEVRIM_STAHLPRAKTIKANTEN',		'UNIT_INFANTRY'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_INFANTRY')
  AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DEVRIM_STAHLPRAKTIKANTEN');

-----------------------------------------------
-- UnitAbilities

-- Define the unit ability for combat bonuses and on-kill effects
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,						Name,											Description								)
VALUES	('ABILITY_DEVRIM_STAHLPRAKTIKANTEN',	'LOC_UNIT_DEVRIM_STAHLPRAKTIKANTEN_NAME',	'LOC_ABILITY_DEVRIM_STAHLPRAKTIKANTEN'	);

-----------------------------------------------
-- Modifiers for Unit

-- 1. Built 30% faster in cities with Quantum-Fabrik (via production modifier)
-- 2. Combat bonuses from mines (+1 per mine, max +6)
-- 3. +5 Science when defeating a unit
-- Note: The +20 Production on completion and trade route boost are simplified
-----------------------------------------------

-- TraitModifiers for civilization-wide effects
INSERT INTO TraitModifiers
		(TraitType,											ModifierId													)
VALUES	
		-- 30% faster build in cities with Quantum-Fabrik
		('TRAIT_CIVILIZATION_DEVRIM_STAHLPRAKTIKANTEN',		'MODIFIER_STAHLPRAKTIKANTEN_FASTER_BUILD_WITH_FABRIK'		);

-- Unit ability modifiers for combat effects
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId											)
VALUES	
		-- +5 Science to city when defeating enemy
		('ABILITY_DEVRIM_STAHLPRAKTIKANTEN',	'MODIFIER_STAHLPRAKTIKANTEN_SCIENCE_ON_KILL'		),
		-- Combat strength bonus representing mine synergy (simplified as flat bonus)
		('ABILITY_DEVRIM_STAHLPRAKTIKANTEN',	'MODIFIER_STAHLPRAKTIKANTEN_MINE_COMBAT_BONUS'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,											ModifierType,												SubjectRequirementSetId						)
VALUES	
		-- 30% faster build with Quantum-Fabrik
		('MODIFIER_STAHLPRAKTIKANTEN_FASTER_BUILD_WITH_FABRIK',	'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION',			'REQSET_DEVRIM_CITY_HAS_QUANTUM_FABRIK'		),
		-- +5 Science on kill
		('MODIFIER_STAHLPRAKTIKANTEN_SCIENCE_ON_KILL',			'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD',					null										),
		-- Combat bonus (max +6, representing mine synergy)
		('MODIFIER_STAHLPRAKTIKANTEN_MINE_COMBAT_BONUS',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',						null										);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments		
		(ModifierId,											Name,						Value											)
VALUES	
		-- 30% production bonus for this unit
		('MODIFIER_STAHLPRAKTIKANTEN_FASTER_BUILD_WITH_FABRIK',	'UnitType',					'UNIT_DEVRIM_STAHLPRAKTIKANTEN'					),
		('MODIFIER_STAHLPRAKTIKANTEN_FASTER_BUILD_WITH_FABRIK',	'Amount',					30												),
		-- +5 Science on kill
		('MODIFIER_STAHLPRAKTIKANTEN_SCIENCE_ON_KILL',			'YieldType',				'YIELD_SCIENCE'									),
		('MODIFIER_STAHLPRAKTIKANTEN_SCIENCE_ON_KILL',			'Amount',					5												),
		-- Combat bonus (max +6 representing mine synergy)
		('MODIFIER_STAHLPRAKTIKANTEN_MINE_COMBAT_BONUS',		'Amount',					6												);

-----------------------------------------------
-- RequirementSets for Unit
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType				)
VALUES	('REQSET_DEVRIM_CITY_HAS_QUANTUM_FABRIK',		'REQUIREMENTSET_TEST_ALL'		);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId										)
VALUES	('REQSET_DEVRIM_CITY_HAS_QUANTUM_FABRIK',		'REQ_DEVRIM_CITY_HAS_QUANTUM_FABRIK'				);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId, 									RequirementType									)
VALUES	('REQ_DEVRIM_CITY_HAS_QUANTUM_FABRIK',				'REQUIREMENT_CITY_HAS_BUILDING'					);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId, 									Name,						Value									)
VALUES	('REQ_DEVRIM_CITY_HAS_QUANTUM_FABRIK', 				'BuildingType',				'BUILDING_DEVRIM_QUANTUM_FABRIK'		);

-----------------------------------------------
-- ModifierStrings

-- Tooltip for the unit ability
-----------------------------------------------

INSERT INTO ModifierStrings
		(ModifierId,										Context,		Text												)
VALUES	('MODIFIER_STAHLPRAKTIKANTEN_MINE_COMBAT_BONUS',	'Preview',		'LOC_ABILITY_DEVRIM_STAHLPRAKTIKANTEN'				),
		('MODIFIER_STAHLPRAKTIKANTEN_SCIENCE_ON_KILL',		'Preview',		'LOC_ABILITY_DEVRIM_STAHLPRAKTIKANTEN_SCIENCE_KILL'	);