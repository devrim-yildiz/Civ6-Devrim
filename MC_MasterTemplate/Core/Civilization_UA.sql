/*
	Civilization Unique Abilities
	Authors: Devrim
	
	This file implements:
	1. Civ-Bonus "Maschinengeist"
	2. Civ Trait "Produktionsfluss"
	3. Sekundär-Bonus "Finanzintegration"
*/

-----------------------------------------------
-- Types

-- Define all traits for Devrim's civilization
-----------------------------------------------

INSERT INTO	Types
		(Type,													Kind			)
VALUES	('TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST',			'KIND_TRAIT'	),
		('TRAIT_CIVILIZATION_DEVRIM_PRODUKTIONSFLUSS',			'KIND_TRAIT'	),
		('TRAIT_CIVILIZATION_DEVRIM_FINANZINTEGRATION',			'KIND_TRAIT'	);

-----------------------------------------------
-- Traits

-- Define the traits with their names and descriptions
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,												Name,															Description															)
VALUES	('TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST',			'LOC_TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST_NAME',			'LOC_TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST_DESCRIPTION'			),
		('TRAIT_CIVILIZATION_DEVRIM_PRODUKTIONSFLUSS',			'LOC_TRAIT_CIVILIZATION_DEVRIM_PRODUKTIONSFLUSS_NAME',			'LOC_TRAIT_CIVILIZATION_DEVRIM_PRODUKTIONSFLUSS_DESCRIPTION'		),
		('TRAIT_CIVILIZATION_DEVRIM_FINANZINTEGRATION',			'LOC_TRAIT_CIVILIZATION_DEVRIM_FINANZINTEGRATION_NAME',			'LOC_TRAIT_CIVILIZATION_DEVRIM_FINANZINTEGRATION_DESCRIPTION'		);
		
-----------------------------------------------
-- CivilizationTraits

-- Assign all traits to our civilization
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,						TraitType											)
VALUES	('CIVILIZATION_DEVRIM_MINISTERIUM',		'TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST'			),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'TRAIT_CIVILIZATION_DEVRIM_PRODUKTIONSFLUSS'		),
		('CIVILIZATION_DEVRIM_MINISTERIUM',		'TRAIT_CIVILIZATION_DEVRIM_FINANZINTEGRATION'		);

-----------------------------------------------
-- TraitModifiers

-- MASCHINENGEIST:
-- - Cities with Quantum-Fabrik + Campus get +10% Production (implemented via building)
-- - Mines in cities with Campus give +1 Science
-- - Domestic Trade Routes to cities with Campus/Factory give +2 Production & +1 Science

-- PRODUKTIONSFLUSS:
-- - Cities with Quantum-Fabrik keep 20% production (implemented via building modifier)
-- - Cities with Quantum-Fabrik + Campus get +10% Production (combined with Maschinengeist)

-- FINANZINTEGRATION:
-- - Markets & Banks in cities with Industrial Zone give +1 Production
-- - Trade routes to cities with Market give +1 Gold
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,												ModifierId														)
VALUES	
		-- MASCHINENGEIST: Mines in cities with Campus give +1 Science
		('TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST',				'MODIFIER_DEVRIM_MINE_SCIENCE_WITH_CAMPUS'						),
		-- MASCHINENGEIST: Domestic Trade Routes to cities with Campus give +2 Production & +1 Science
		('TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST',				'MODIFIER_DEVRIM_TRADE_CAMPUS_PRODUCTION'						),
		('TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST',				'MODIFIER_DEVRIM_TRADE_CAMPUS_SCIENCE'							),
		-- MASCHINENGEIST: Domestic Trade Routes to cities with Factory give +2 Production & +1 Science
		('TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST',				'MODIFIER_DEVRIM_TRADE_FACTORY_PRODUCTION'						),
		('TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST',				'MODIFIER_DEVRIM_TRADE_FACTORY_SCIENCE'							),
		-- FINANZINTEGRATION: Markets in cities with Industrial Zone give +1 Production
		('TRAIT_CIVILIZATION_DEVRIM_FINANZINTEGRATION',			'MODIFIER_DEVRIM_MARKET_PRODUCTION_WITH_IND'					),
		-- FINANZINTEGRATION: Banks in cities with Industrial Zone give +1 Production
		('TRAIT_CIVILIZATION_DEVRIM_FINANZINTEGRATION',			'MODIFIER_DEVRIM_BANK_PRODUCTION_WITH_IND'						),
		-- FINANZINTEGRATION: Trade routes to cities with Market give +1 Gold
		('TRAIT_CIVILIZATION_DEVRIM_FINANZINTEGRATION',			'MODIFIER_DEVRIM_TRADE_TO_MARKET_GOLD'							);

-----------------------------------------------
-- Modifiers

-- Define all modifiers for the traits
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,													ModifierType,													SubjectRequirementSetId					)
VALUES	
		-- Mines give +1 Science if city has Campus
		('MODIFIER_DEVRIM_MINE_SCIENCE_WITH_CAMPUS',					'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_YIELD_CHANGE',		'REQSET_DEVRIM_CITY_HAS_CAMPUS'			),
		-- Trade routes to Campus cities give +2 Production
		('MODIFIER_DEVRIM_TRADE_CAMPUS_PRODUCTION',						'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		'REQSET_DEVRIM_DESTINATION_HAS_CAMPUS'	),
		-- Trade routes to Campus cities give +1 Science
		('MODIFIER_DEVRIM_TRADE_CAMPUS_SCIENCE',						'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		'REQSET_DEVRIM_DESTINATION_HAS_CAMPUS'	),
		-- Trade routes to Factory cities give +2 Production
		('MODIFIER_DEVRIM_TRADE_FACTORY_PRODUCTION',					'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		'REQSET_DEVRIM_DESTINATION_HAS_FACTORY'	),
		-- Trade routes to Factory cities give +1 Science
		('MODIFIER_DEVRIM_TRADE_FACTORY_SCIENCE',						'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		'REQSET_DEVRIM_DESTINATION_HAS_FACTORY'	),
		-- Markets give +1 Production if city has Industrial Zone
		('MODIFIER_DEVRIM_MARKET_PRODUCTION_WITH_IND',					'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			'REQSET_DEVRIM_CITY_HAS_IND_ZONE'		),
		-- Banks give +1 Production if city has Industrial Zone
		('MODIFIER_DEVRIM_BANK_PRODUCTION_WITH_IND',					'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			'REQSET_DEVRIM_CITY_HAS_IND_ZONE'		),
		-- Trade routes to cities with Market give +1 Gold
		('MODIFIER_DEVRIM_TRADE_TO_MARKET_GOLD',						'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD',						'REQSET_DEVRIM_DESTINATION_HAS_MARKET'	);

-----------------------------------------------
-- ModifierArguments

-- Define the actual values for each modifier
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,													Name,							Value									)
VALUES	
		-- Mines give +1 Science
		('MODIFIER_DEVRIM_MINE_SCIENCE_WITH_CAMPUS',					'ImprovementType',				'IMPROVEMENT_MINE'						),
		('MODIFIER_DEVRIM_MINE_SCIENCE_WITH_CAMPUS',					'YieldType',					'YIELD_SCIENCE'							),
		('MODIFIER_DEVRIM_MINE_SCIENCE_WITH_CAMPUS',					'Amount',						1										),
		-- Trade to Campus: +2 Production
		('MODIFIER_DEVRIM_TRADE_CAMPUS_PRODUCTION',						'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_DEVRIM_TRADE_CAMPUS_PRODUCTION',						'Amount',						2										),
		-- Trade to Campus: +1 Science
		('MODIFIER_DEVRIM_TRADE_CAMPUS_SCIENCE',						'YieldType',					'YIELD_SCIENCE'							),
		('MODIFIER_DEVRIM_TRADE_CAMPUS_SCIENCE',						'Amount',						1										),
		-- Trade to Factory: +2 Production
		('MODIFIER_DEVRIM_TRADE_FACTORY_PRODUCTION',					'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_DEVRIM_TRADE_FACTORY_PRODUCTION',					'Amount',						2										),
		-- Trade to Factory: +1 Science
		('MODIFIER_DEVRIM_TRADE_FACTORY_SCIENCE',						'YieldType',					'YIELD_SCIENCE'							),
		('MODIFIER_DEVRIM_TRADE_FACTORY_SCIENCE',						'Amount',						1										),
		-- Market gives +1 Production with Industrial Zone
		('MODIFIER_DEVRIM_MARKET_PRODUCTION_WITH_IND',					'BuildingType',					'BUILDING_MARKET'						),
		('MODIFIER_DEVRIM_MARKET_PRODUCTION_WITH_IND',					'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_DEVRIM_MARKET_PRODUCTION_WITH_IND',					'Amount',						1										),
		-- Bank gives +1 Production with Industrial Zone
		('MODIFIER_DEVRIM_BANK_PRODUCTION_WITH_IND',					'BuildingType',					'BUILDING_BANK'							),
		('MODIFIER_DEVRIM_BANK_PRODUCTION_WITH_IND',					'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_DEVRIM_BANK_PRODUCTION_WITH_IND',					'Amount',						1										),
		-- Trade to Market city: +1 Gold
		('MODIFIER_DEVRIM_TRADE_TO_MARKET_GOLD',						'YieldType',					'YIELD_GOLD'							),
		('MODIFIER_DEVRIM_TRADE_TO_MARKET_GOLD',						'Amount',						1										);

-----------------------------------------------
-- RequirementSets

-- Define requirement sets for conditional modifiers
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType				)
VALUES	('REQSET_DEVRIM_CITY_HAS_CAMPUS',			'REQUIREMENTSET_TEST_ALL'		),
		('REQSET_DEVRIM_CITY_HAS_IND_ZONE',			'REQUIREMENTSET_TEST_ALL'		),
		('REQSET_DEVRIM_DESTINATION_HAS_CAMPUS',	'REQUIREMENTSET_TEST_ALL'		),
		('REQSET_DEVRIM_DESTINATION_HAS_FACTORY',	'REQUIREMENTSET_TEST_ALL'		),
		('REQSET_DEVRIM_DESTINATION_HAS_MARKET',	'REQUIREMENTSET_TEST_ALL'		);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId										)
VALUES	('REQSET_DEVRIM_CITY_HAS_CAMPUS',			'REQ_DEVRIM_CITY_HAS_CAMPUS'						),
		('REQSET_DEVRIM_CITY_HAS_IND_ZONE',			'REQ_DEVRIM_CITY_HAS_IND_ZONE'						),
		('REQSET_DEVRIM_DESTINATION_HAS_CAMPUS',	'REQ_DEVRIM_DESTINATION_HAS_CAMPUS'					),
		('REQSET_DEVRIM_DESTINATION_HAS_FACTORY',	'REQ_DEVRIM_DESTINATION_HAS_FACTORY'				),
		('REQSET_DEVRIM_DESTINATION_HAS_MARKET',	'REQ_DEVRIM_DESTINATION_HAS_MARKET'					);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId, 								RequirementType									)
VALUES	('REQ_DEVRIM_CITY_HAS_CAMPUS',					'REQUIREMENT_CITY_HAS_DISTRICT'					),
		('REQ_DEVRIM_CITY_HAS_IND_ZONE',				'REQUIREMENT_CITY_HAS_DISTRICT'					),
		('REQ_DEVRIM_DESTINATION_HAS_CAMPUS',			'REQUIREMENT_DESTINATION_CITY_HAS_DISTRICT'		),
		('REQ_DEVRIM_DESTINATION_HAS_FACTORY',			'REQUIREMENT_DESTINATION_CITY_HAS_BUILDING'		),
		('REQ_DEVRIM_DESTINATION_HAS_MARKET',			'REQUIREMENT_DESTINATION_CITY_HAS_BUILDING'		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId, 								Name,						Value							)
VALUES	('REQ_DEVRIM_CITY_HAS_CAMPUS', 					'DistrictType',				'DISTRICT_CAMPUS'				),
		('REQ_DEVRIM_CITY_HAS_IND_ZONE', 				'DistrictType',				'DISTRICT_INDUSTRIAL_ZONE'		),
		('REQ_DEVRIM_DESTINATION_HAS_CAMPUS', 			'DistrictType',				'DISTRICT_CAMPUS'				),
		('REQ_DEVRIM_DESTINATION_HAS_FACTORY', 			'BuildingType',				'BUILDING_FACTORY'				),
		('REQ_DEVRIM_DESTINATION_HAS_MARKET', 			'BuildingType',				'BUILDING_MARKET'				);
