/*
	Civilization Unique Building - Das Ding, wo alles rauskommt
	Authors: Devrim
	
	Replaces Factory (BUILDING_FACTORY)
	
	Abilities:
	- +4 Production (base)
	- +3 Science when adjacent to Campus
	- +2 Gold per Mine in the city
	- Trade routes from this city give +1 Production
	- Cities with this building keep 20% production after completing units/projects/wonders
	- Cities with this building + Campus get +10% Production
*/

-----------------------------------------------
-- Types

-- Define the trait for the unique building and the building itself
-----------------------------------------------

INSERT INTO Types	
		(Type,															Kind						)
VALUES	('TRAIT_CIVILIZATION_BUILDING_DEVRIM_QUANTUM_FABRIK',			'KIND_TRAIT'				),
		('BUILDING_DEVRIM_QUANTUM_FABRIK',								'KIND_BUILDING'				);

-----------------------------------------------
-- CivilizationTraits

-- Assign the unique building trait to our civilization
-----------------------------------------------

INSERT INTO CivilizationTraits
		(TraitType,														CivilizationType					)
VALUES	('TRAIT_CIVILIZATION_BUILDING_DEVRIM_QUANTUM_FABRIK',			'CIVILIZATION_DEVRIM_MINISTERIUM'	);

-----------------------------------------------
-- Traits

-- Define the trait with name and description
-----------------------------------------------

INSERT INTO Traits
		(TraitType,														Name,												Description													)
VALUES	('TRAIT_CIVILIZATION_BUILDING_DEVRIM_QUANTUM_FABRIK',			'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_NAME',			'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_DESCRIPTION'			);

-----------------------------------------------
-- Buildings

-- Define the Quantum-Fabrik building
-- Replaces Factory, provides +4 Production (2 more than standard Factory)
-----------------------------------------------

INSERT INTO Buildings	
		(
			BuildingType,
			Name,
			Description,
			PrereqTech,
			Cost,
			MaxPlayerInstances,
			MaxWorldInstances,
			Capital,
			PrereqDistrict,
			AdjacentDistrict,
			RequiresPlacement,
			RequiresRiver,
			OuterDefenseHitPoints,
			Housing,
			Entertainment,
			AdjacentResource,
			Coast,
			EnabledByReligion,
			AllowsHolyCity,
			PurchaseYield,
			MustPurchase,
			Maintenance,
			IsWonder,
			TraitType,
			CitizenSlots,
			RegionalRange
		)
SELECT	'BUILDING_DEVRIM_QUANTUM_FABRIK',						-- BuildingType
		'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_NAME',				-- Name
		'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_DESCRIPTION',		-- Description
		PrereqTech,
		Cost,
		MaxPlayerInstances,
		MaxWorldInstances,
		Capital,
		PrereqDistrict,
		AdjacentDistrict,
		RequiresPlacement,
		RequiresRiver,
		OuterDefenseHitPoints,
		Housing,
		Entertainment,
		AdjacentResource,
		Coast,
		EnabledByReligion,
		AllowsHolyCity,
		PurchaseYield,
		MustPurchase,
		Maintenance,
		IsWonder,
		'TRAIT_CIVILIZATION_BUILDING_DEVRIM_QUANTUM_FABRIK',		-- TraitType
		CitizenSlots,
		RegionalRange
FROM	Buildings
WHERE	BuildingType = 'BUILDING_FACTORY';

-----------------------------------------------
-- BuildingReplaces

-- Quantum-Fabrik replaces Factory
-----------------------------------------------

INSERT INTO BuildingReplaces
		(CivUniqueBuildingType,					ReplacesBuildingType	)
VALUES	('BUILDING_DEVRIM_QUANTUM_FABRIK',		'BUILDING_FACTORY'		);

-----------------------------------------------
-- BuildingPrereqs

-- Copy any building prerequisites from Factory
-----------------------------------------------

INSERT INTO BuildingPrereqs (Building, PrereqBuilding)
SELECT 	'BUILDING_DEVRIM_QUANTUM_FABRIK',	PrereqBuilding
FROM 	BuildingPrereqs
WHERE	Building = 'BUILDING_FACTORY';

-----------------------------------------------
-- Building_YieldChanges

-- Base production: +4 (compared to Factory's +3)
-----------------------------------------------

INSERT INTO Building_YieldChanges
		(BuildingType,							YieldType,					YieldChange		)
VALUES	('BUILDING_DEVRIM_QUANTUM_FABRIK',		'YIELD_PRODUCTION',			4				);

-----------------------------------------------
-- Building_GreatPersonPoints

-- Copy great person points from Factory (Great Engineer)
-----------------------------------------------

INSERT INTO Building_GreatPersonPoints (BuildingType, GreatPersonClassType, PointsPerTurn)
SELECT 	'BUILDING_DEVRIM_QUANTUM_FABRIK',	GreatPersonClassType,	PointsPerTurn
FROM 	Building_GreatPersonPoints
WHERE	BuildingType = 'BUILDING_FACTORY';

-----------------------------------------------
-- Building_CitizenYieldChanges

-- Copy citizen yields from Factory
-----------------------------------------------

INSERT INTO Building_CitizenYieldChanges (BuildingType, YieldType, YieldChange)
SELECT 	'BUILDING_DEVRIM_QUANTUM_FABRIK',	YieldType,	YieldChange
FROM 	Building_CitizenYieldChanges
WHERE	BuildingType = 'BUILDING_FACTORY';

-----------------------------------------------
-- BuildingModifiers

-- Add special modifiers for Quantum-Fabrik
-- 1. +3 Science when adjacent to Campus
-- 2. +2 Gold per Mine in the city
-- 3. Trade routes from this city give +1 Production
-- 4. 20% production retention after completing items
-- 5. +10% Production if city also has Campus
-----------------------------------------------

INSERT INTO BuildingModifiers
		(BuildingType,							ModifierId											)
VALUES	
		-- +3 Science when adjacent to Campus
		('BUILDING_DEVRIM_QUANTUM_FABRIK',		'MODIFIER_QUANTUM_FABRIK_CAMPUS_ADJACENCY_SCIENCE'	),
		-- +2 Gold per Mine in the city
		('BUILDING_DEVRIM_QUANTUM_FABRIK',		'MODIFIER_QUANTUM_FABRIK_MINE_GOLD'					),
		-- Trade routes from this city give +1 Production
		('BUILDING_DEVRIM_QUANTUM_FABRIK',		'MODIFIER_QUANTUM_FABRIK_TRADE_PRODUCTION'			),
		-- 20% production retention (Produktionsfluss)
		('BUILDING_DEVRIM_QUANTUM_FABRIK',		'MODIFIER_QUANTUM_FABRIK_PRODUCTION_RETENTION'		),
		-- +10% Production if city has Campus (Maschinengeist + Produktionsfluss)
		('BUILDING_DEVRIM_QUANTUM_FABRIK',		'MODIFIER_QUANTUM_FABRIK_CAMPUS_PRODUCTION_BONUS'	);

-----------------------------------------------
-- Modifiers

-- Define the modifiers for Quantum-Fabrik
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,													ModifierType,												SubjectRequirementSetId						)
VALUES	
		('MODIFIER_QUANTUM_FABRIK_CAMPUS_ADJACENCY_SCIENCE',			'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_CHANGE',			'REQSET_DEVRIM_ADJACENT_TO_CAMPUS'			),
		('MODIFIER_QUANTUM_FABRIK_MINE_GOLD',							'MODIFIER_SINGLE_CITY_ADJUST_IMPROVEMENT_YIELD_CHANGE',		null										),
		('MODIFIER_QUANTUM_FABRIK_TRADE_PRODUCTION',					'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_ORIGIN',	null										),
		('MODIFIER_QUANTUM_FABRIK_PRODUCTION_RETENTION',				'MODIFIER_SINGLE_CITY_ADJUST_YIELD_OVERFLOW_MODIFIER',		null										),
		('MODIFIER_QUANTUM_FABRIK_CAMPUS_PRODUCTION_BONUS',				'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',			'REQSET_DEVRIM_CITY_HAS_CAMPUS_BUILDING'	);

-----------------------------------------------
-- ModifierArguments

-- Define arguments for Quantum-Fabrik modifiers
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,													Name,							Value									)
VALUES	
		-- +3 Science when adjacent to Campus
		('MODIFIER_QUANTUM_FABRIK_CAMPUS_ADJACENCY_SCIENCE',			'YieldType',					'YIELD_SCIENCE'							),
		('MODIFIER_QUANTUM_FABRIK_CAMPUS_ADJACENCY_SCIENCE',			'Amount',						3										),
		-- +2 Gold per Mine in city
		('MODIFIER_QUANTUM_FABRIK_MINE_GOLD',							'ImprovementType',				'IMPROVEMENT_MINE'						),
		('MODIFIER_QUANTUM_FABRIK_MINE_GOLD',							'YieldType',					'YIELD_GOLD'							),
		('MODIFIER_QUANTUM_FABRIK_MINE_GOLD',							'Amount',						2										),
		-- Trade routes give +1 Production
		('MODIFIER_QUANTUM_FABRIK_TRADE_PRODUCTION',					'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_QUANTUM_FABRIK_TRADE_PRODUCTION',					'Amount',						1										),
		-- 20% production retention
		('MODIFIER_QUANTUM_FABRIK_PRODUCTION_RETENTION',				'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_QUANTUM_FABRIK_PRODUCTION_RETENTION',				'Amount',						20										),
		-- +10% Production if city has Campus
		('MODIFIER_QUANTUM_FABRIK_CAMPUS_PRODUCTION_BONUS',				'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_QUANTUM_FABRIK_CAMPUS_PRODUCTION_BONUS',				'Amount',						10										);

-----------------------------------------------
-- RequirementSets for Quantum-Fabrik

-- Define requirement sets for building-specific modifiers
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType				)
VALUES	('REQSET_DEVRIM_ADJACENT_TO_CAMPUS',			'REQUIREMENTSET_TEST_ALL'		),
		('REQSET_DEVRIM_CITY_HAS_CAMPUS_BUILDING',		'REQUIREMENTSET_TEST_ALL'		);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId										)
VALUES	('REQSET_DEVRIM_ADJACENT_TO_CAMPUS',			'REQ_DEVRIM_PLOT_ADJACENT_TO_CAMPUS'				),
		('REQSET_DEVRIM_CITY_HAS_CAMPUS_BUILDING',		'REQ_DEVRIM_CITY_HAS_CAMPUS_DISTRICT'				);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId, 									RequirementType									)
VALUES	('REQ_DEVRIM_PLOT_ADJACENT_TO_CAMPUS',				'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('REQ_DEVRIM_CITY_HAS_CAMPUS_DISTRICT',				'REQUIREMENT_CITY_HAS_DISTRICT'					);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId, 									Name,						Value							)
VALUES	('REQ_DEVRIM_PLOT_ADJACENT_TO_CAMPUS', 				'DistrictType',				'DISTRICT_CAMPUS'				),
		('REQ_DEVRIM_CITY_HAS_CAMPUS_DISTRICT', 				'DistrictType',				'DISTRICT_CAMPUS'				);
