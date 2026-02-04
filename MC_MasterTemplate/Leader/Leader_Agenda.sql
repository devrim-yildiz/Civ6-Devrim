/*
	Leader Agendas
	Authors: Devrim
*/

-----------------------------------------------
-- Types

-- This inserts the agenda's trait reference into the primary Data Types table as a usable trait.
-----------------------------------------------

INSERT INTO Types
			(Type,									Kind			)
VALUES		('TRAIT_AGENDA_DEVRIM_DER_VISIONAER',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas

-- This defines the AgendaType itself, such that the agenda exists as an entity alongside the other agendas.
-----------------------------------------------

INSERT INTO Agendas
			(AgendaType,						Name,										Description											)
VALUES 		('AGENDA_DEVRIM_DER_VISIONAER',		'LOC_AGENDA_DEVRIM_DER_VISIONAER_NAME',		'LOC_AGENDA_DEVRIM_DER_VISIONAER_DESCRIPTION'		);

-----------------------------------------------
-- Traits

-- With the TraitType defined (above), the below then inserts it into the overall Traits table.
-----------------------------------------------

INSERT INTO Traits				
			(TraitType,								Name,										Description											)
VALUES		('TRAIT_AGENDA_DEVRIM_DER_VISIONAER',	'LOC_AGENDA_DEVRIM_DER_VISIONAER_NAME',		'LOC_AGENDA_DEVRIM_DER_VISIONAER_DESCRIPTION'		);

-----------------------------------------------
-- AgendaTraits

-- This defines the agenda to which the TraitType is applied.
-----------------------------------------------

INSERT INTO AgendaTraits
			(AgendaType,						TraitType							)
VALUES 		('AGENDA_DEVRIM_DER_VISIONAER',		'TRAIT_AGENDA_DEVRIM_DER_VISIONAER'	);

-----------------------------------------------
-- HistoricalAgendas

-- In this section, we assign our custom leader the AgendaType we've defined.
-----------------------------------------------

INSERT INTO HistoricalAgendas
			(LeaderType,					AgendaType						)
VALUES 		('LEADER_DEVRIM_DER_VISIONAER',	'AGENDA_DEVRIM_DER_VISIONAER'	);

-----------------------------------------------
-- ExclusiveAgendas

-- A pair of values in AgendaOne and AgendaTwo will never be assigned to the same leader.
-----------------------------------------------

INSERT INTO ExclusiveAgendas
			(AgendaOne,						AgendaTwo					)
VALUES 		('AGENDA_DEVRIM_DER_VISIONAER',	'AGENDA_CULTURED'			);

-----------------------------------------------
-- TraitModifiers

-- The below entries tie some specific modifiers to the TraitType.
-----------------------------------------------

INSERT INTO TraitModifiers
			(TraitType,								ModifierId										)
VALUES		('TRAIT_AGENDA_DEVRIM_DER_VISIONAER',	'AGENDA_MODIFIER_DEVRIM_UNHAPPY'				),
			('TRAIT_AGENDA_DEVRIM_DER_VISIONAER',	'AGENDA_MODIFIER_DEVRIM_HAPPY'					);
		
-----------------------------------------------
-- Modifiers

-- This section defines, for each of your modifiers, the type of modifier it is and the conditions under which it is applied.
-----------------------------------------------

INSERT INTO Modifiers	
			(ModifierId,							ModifierType,									SubjectRequirementSetId				)
VALUES		('AGENDA_MODIFIER_DEVRIM_UNHAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_DEVRIM_AGENDA_UNHAPPY'		),
			('AGENDA_MODIFIER_DEVRIM_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_DEVRIM_AGENDA_HAPPY'		);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
			(ModifierId,							Context,	Text								)
VALUES		('AGENDA_MODIFIER_DEVRIM_UNHAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
			('AGENDA_MODIFIER_DEVRIM_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments

-- Devrim respects high production and science, dislikes low production
-----------------------------------------------

INSERT INTO ModifierArguments
			(ModifierId,							Name,							Value															)
VALUES		('AGENDA_MODIFIER_DEVRIM_UNHAPPY',		'InitialValue',					-5																),
			('AGENDA_MODIFIER_DEVRIM_UNHAPPY',		'IncrementValue',				-1																),
			('AGENDA_MODIFIER_DEVRIM_UNHAPPY',		'IncrementTurns',				-10																),
			('AGENDA_MODIFIER_DEVRIM_UNHAPPY',		'MaxValue',						-25																),
			('AGENDA_MODIFIER_DEVRIM_UNHAPPY',		'StatementKey',					'LOC_DIPLO_WARNING_LEADER_DEVRIM_DER_VISIONAER_REASON_ANY'		),
			('AGENDA_MODIFIER_DEVRIM_UNHAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_DEVRIM_DER_VISIONAER_UNHAPPY'				),
	
			('AGENDA_MODIFIER_DEVRIM_HAPPY',		'InitialValue',					5																),
			('AGENDA_MODIFIER_DEVRIM_HAPPY',		'IncrementValue',				1																),
			('AGENDA_MODIFIER_DEVRIM_HAPPY',		'IncrementTurns',				10																),
			('AGENDA_MODIFIER_DEVRIM_HAPPY',		'MaxValue',						12																),
			('AGENDA_MODIFIER_DEVRIM_HAPPY',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_DEVRIM_DER_VISIONAER_REASON_ANY'			),
			('AGENDA_MODIFIER_DEVRIM_HAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_DEVRIM_DER_VISIONAER_HAPPY'					);
			
-----------------------------------------------
-- RequirementSets

-- Devrim likes high production and science, dislikes low production
-----------------------------------------------

INSERT INTO RequirementSets
			(RequirementSetId,					RequirementSetType			)
VALUES		('REQSET_DEVRIM_AGENDA_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
			('REQSET_DEVRIM_AGENDA_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements

-- UNHAPPY: Low economy (approximated using low gold metrics since production tracking is not available)
-- HAPPY: High production AND high science (approximated using high gold and high science metrics)
-----------------------------------------------

INSERT INTO RequirementSetRequirements
			(RequirementSetId,					RequirementId						)
VALUES		('REQSET_DEVRIM_AGENDA_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
			('REQSET_DEVRIM_AGENDA_UNHAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
			('REQSET_DEVRIM_AGENDA_UNHAPPY',	'REQUIRES_HAS_LOW_GOLD'				),
			('REQSET_DEVRIM_AGENDA_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
			('REQSET_DEVRIM_AGENDA_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
			('REQSET_DEVRIM_AGENDA_HAPPY',		'REQUIRES_HAS_HIGH_GOLD'			),
			('REQSET_DEVRIM_AGENDA_HAPPY',		'REQUIRES_HAS_HIGH_SCIENCE'			);
