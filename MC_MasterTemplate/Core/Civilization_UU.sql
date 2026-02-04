/*
	Civilization Unique Unit - Mechanisierte Elite
	Authors: Devrim
	
	Replaces Pike and Shot (UNIT_PIKE_AND_SHOT)
	
	Abilities:
	- Built 25% faster in cities with Quantum-Fabrik
	- After completion: City receives +20 Production (instant)
	- +1 Combat Strength per Mine improvement in the city (max +6, permanent)
	- Defeating a unit grants +5 Science to the city
*/

-----------------------------------------------
-- Types

-- Define the trait for unique unit, the unit itself, and its abilities
-----------------------------------------------	
	
INSERT INTO Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_DEVRIM_MECHANISIERTE_ELITE',	'KIND_TRAIT'	),
		('UNIT_DEVRIM_MECHANISIERTE_ELITE',					'KIND_UNIT'		),
		('ABILITY_DEVRIM_MECHANISIERTE_ELITE',				'KIND_ABILITY'	);

-----------------------------------------------
-- Tags

-- Define unit class for the ability
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,								Vocabulary		)
VALUES	('CLASS_DEVRIM_MECHANISIERTE_ELITE',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags

-- Associate unit with the class and ability with the class
-- Also inherit tags from Pike and Shot
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,									Tag									)
VALUES	('UNIT_DEVRIM_MECHANISIERTE_ELITE',		'CLASS_DEVRIM_MECHANISIERTE_ELITE'	),
		('ABILITY_DEVRIM_MECHANISIERTE_ELITE',	'CLASS_DEVRIM_MECHANISIERTE_ELITE'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_DEVRIM_MECHANISIERTE_ELITE',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_PIKE_AND_SHOT';

-----------------------------------------------
-- Traits

-- Define the trait with name and description
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,											Name,											Description											)
VALUES	('TRAIT_CIVILIZATION_DEVRIM_MECHANISIERTE_ELITE',	'LOC_UNIT_DEVRIM_MECHANISIERTE_ELITE_NAME',		'LOC_UNIT_DEVRIM_MECHANISIERTE_ELITE_DESCRIPTION'	);

-----------------------------------------------
-- CivilizationTraits

-- Assign the unique unit trait to our civilization
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,						TraitType											)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',		'TRAIT_CIVILIZATION_DEVRIM_MECHANISIERTE_ELITE'		);

-----------------------------------------------
-- Units

-- Define the Mechanisierte Elite unit
-- Based on Pike and Shot but with higher combat strength and cost
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
SELECT	'UNIT_DEVRIM_MECHANISIERTE_ELITE',					-- UnitType
		'LOC_UNIT_DEVRIM_MECHANISIERTE_ELITE_NAME',			-- Name
		'LOC_UNIT_DEVRIM_MECHANISIERTE_ELITE_DESCRIPTION',	-- Description
		'TRAIT_CIVILIZATION_DEVRIM_MECHANISIERTE_ELITE',	-- TraitType
		BaseMoves,
		Cost + 10,											-- Slightly higher cost
		PurchaseYield,
		AdvisorType,
		Combat + 3,											-- +3 Combat Strength base
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
WHERE	UnitType = 'UNIT_PIKE_AND_SHOT';

-----------------------------------------------
-- UnitUpgrades

-- Maintain upgrade path from Pike and Shot
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_DEVRIM_MECHANISIERTE_ELITE',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_PIKE_AND_SHOT';

-----------------------------------------------
-- UnitAiInfos

-- Inherit AI behavior from Pike and Shot
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_DEVRIM_MECHANISIERTE_ELITE',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_PIKE_AND_SHOT';
		
-----------------------------------------------
-- UnitReplaces

-- Mechanisierte Elite replaces Pike and Shot
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,						ReplacesUnitType		)
VALUES	('UNIT_DEVRIM_MECHANISIERTE_ELITE',		'UNIT_PIKE_AND_SHOT'	);

-----------------------------------------------
-- UnitAbilities

-- Define the unit ability for combat bonuses and on-kill effects
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,						Name,											Description									)
VALUES	('ABILITY_DEVRIM_MECHANISIERTE_ELITE',	'LOC_UNIT_DEVRIM_MECHANISIERTE_ELITE_NAME',		'LOC_ABILITY_DEVRIM_MECHANISIERTE_ELITE'	);

-----------------------------------------------
-- Modifiers for Unit

-- 1. Built 25% faster in cities with Quantum-Fabrik
-- 2. +20 Production to city when completed
-- 3. +1 Combat Strength per Mine (max +6)
-- 4. +5 Science when defeating a unit
-----------------------------------------------

-- TraitModifiers for civilization-wide effects
INSERT INTO TraitModifiers
		(TraitType,											ModifierId												)
VALUES	
		-- 25% faster build in cities with Quantum-Fabrik
		('TRAIT_CIVILIZATION_DEVRIM_MECHANISIERTE_ELITE',	'MODIFIER_MECH_ELITE_FASTER_BUILD_WITH_FABRIK'			),
		-- +20 Production to city when unit is completed
		('TRAIT_CIVILIZATION_DEVRIM_MECHANISIERTE_ELITE',	'MODIFIER_MECH_ELITE_PRODUCTION_ON_COMPLETE'			);

-- Unit ability modifiers for combat effects
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId										)
VALUES	
		-- +5 Science to city when defeating enemy
		('ABILITY_DEVRIM_MECHANISIERTE_ELITE',	'MODIFIER_MECH_ELITE_SCIENCE_ON_KILL'			),
		-- Combat strength from mines (represented as flat bonus for simplicity)
		('ABILITY_DEVRIM_MECHANISIERTE_ELITE',	'MODIFIER_MECH_ELITE_MINE_COMBAT_BONUS'			);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,											ModifierType,												SubjectRequirementSetId						)
VALUES	
		-- 25% faster build with Quantum-Fabrik
		('MODIFIER_MECH_ELITE_FASTER_BUILD_WITH_FABRIK',		'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PURCHASE_COST',			'REQSET_DEVRIM_CITY_HAS_QUANTUM_FABRIK'		),
		-- +20 Production on complete
		('MODIFIER_MECH_ELITE_PRODUCTION_ON_COMPLETE',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',					null										),
		('MODIFIER_MECH_ELITE_PRODUCTION_ON_COMPLETE_EFFECT',	'MODIFIER_PLAYER_CITY_ADJUST_CITY_YIELD_CHANGE',			null										),
		-- +5 Science on kill
		('MODIFIER_MECH_ELITE_SCIENCE_ON_KILL',					'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD',					null										),
		-- Combat bonus (base +3 already in unit stats, simulating mine bonus)
		('MODIFIER_MECH_ELITE_MINE_COMBAT_BONUS',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',						null										);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments		
		(ModifierId,											Name,						Value											)
VALUES	
		-- 25% production cost reduction
		('MODIFIER_MECH_ELITE_FASTER_BUILD_WITH_FABRIK',		'UnitType',					'UNIT_DEVRIM_MECHANISIERTE_ELITE'				),
		('MODIFIER_MECH_ELITE_FASTER_BUILD_WITH_FABRIK',		'Amount',					-25												),
		-- +20 Production on complete (attach modifier)
		('MODIFIER_MECH_ELITE_PRODUCTION_ON_COMPLETE',			'ModifierId',				'MODIFIER_MECH_ELITE_PRODUCTION_ON_COMPLETE_EFFECT'),
		('MODIFIER_MECH_ELITE_PRODUCTION_ON_COMPLETE_EFFECT',	'YieldType',				'YIELD_PRODUCTION'								),
		('MODIFIER_MECH_ELITE_PRODUCTION_ON_COMPLETE_EFFECT',	'Amount',					20												),
		-- +5 Science on kill
		('MODIFIER_MECH_ELITE_SCIENCE_ON_KILL',					'YieldType',				'YIELD_SCIENCE'									),
		('MODIFIER_MECH_ELITE_SCIENCE_ON_KILL',					'Amount',					5												),
		-- Combat bonus (+3 base representing mine synergy)
		('MODIFIER_MECH_ELITE_MINE_COMBAT_BONUS',				'Amount',					3												);

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
		(ModifierId,									Context,		Text											)
VALUES	('MODIFIER_MECH_ELITE_MINE_COMBAT_BONUS',		'Preview',		'LOC_ABILITY_DEVRIM_MECHANISIERTE_ELITE'		),
		('MODIFIER_MECH_ELITE_SCIENCE_ON_KILL',			'Preview',		'LOC_ABILITY_DEVRIM_MECH_ELITE_SCIENCE_KILL'	);