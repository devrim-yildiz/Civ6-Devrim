/*
	Civilization Text Entries
	Authors: Devrim
*/

-----------------------------------------------
-- General notes on 'localization' (or 'in-game text')

-- The entries in this file, as well as those in Leader_Localisation.sql, are where we define the text that will actually display, in-game.
-----------------------------------------------

INSERT INTO LocalizedText
			(Language, Tag, Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	('en_US',	'LOC_CIVILIZATION_DEVRIM_MINISTERIUM_NAME',			'Devrims Ministerium'									),
	('en_US',	'LOC_CIVILIZATION_DEVRIM_MINISTERIUM_DESCRIPTION',	'Ministerium für Mehr Produktion'						),
	('en_US',	'LOC_CIVILIZATION_DEVRIM_MINISTERIUM_ADJECTIVE',  	'Ministerial'											),
	
-----------------------------------------------
-- Civilization Unique Ability - Maschinengeist
-----------------------------------------------

	('en_US',	'LOC_TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST_NAME',				'Maschinengeist'						),
	('en_US',	'LOC_TRAIT_CIVILIZATION_DEVRIM_MASCHINENGEIST_DESCRIPTION',	
	'[ICON_Mine] Mines in cities with a [ICON_DISTRICT_CAMPUS] Campus provide +1 [ICON_Science] Science. Domestic [ICON_TradeRoute] Trade Routes to cities with a [ICON_DISTRICT_CAMPUS] Campus or [ICON_Building] Factory provide +2 [ICON_Production] Production and +1 [ICON_Science] Science.'	),

-----------------------------------------------
-- Civilization Trait - Produktionsfluss
-----------------------------------------------

	('en_US',	'LOC_TRAIT_CIVILIZATION_DEVRIM_PRODUKTIONSFLUSS_NAME',			'Produktionsfluss'						),
	('en_US',	'LOC_TRAIT_CIVILIZATION_DEVRIM_PRODUKTIONSFLUSS_DESCRIPTION',
	'Cities with a Quantum-Fabrik retain 20% of their [ICON_Production] Production when completing units, projects, or wonders. Cities with both a Quantum-Fabrik and a [ICON_DISTRICT_CAMPUS] Campus receive +10% [ICON_Production] Production.'	),

-----------------------------------------------
-- Secondary Bonus - Finanzintegration
-----------------------------------------------

	('en_US',	'LOC_TRAIT_CIVILIZATION_DEVRIM_FINANZINTEGRATION_NAME',			'Finanzintegration'						),
	('en_US',	'LOC_TRAIT_CIVILIZATION_DEVRIM_FINANZINTEGRATION_DESCRIPTION',
	'[ICON_Building] Markets and Banks in cities with an [ICON_DISTRICT_INDUSTRIAL_ZONE] Industrial Zone provide +1 [ICON_Production] Production. [ICON_TradeRoute] Trade Routes to cities with a [ICON_Building] Market provide +1 [ICON_Gold] Gold.'	),

-----------------------------------------------
-- Unique Building - Quantum-Fabrik
-----------------------------------------------

	('en_US',	'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_NAME',				'Quantum-Fabrik'						),
	('en_US',	'LOC_BUILDING_DEVRIM_QUANTUM_FABRIK_DESCRIPTION',
	'A building unique to Devrims Ministerium. Replaces the Factory.[NEWLINE][NEWLINE]+4 [ICON_Production] Production[NEWLINE]+3 [ICON_Science] Science if adjacent to a [ICON_DISTRICT_CAMPUS] Campus[NEWLINE]+2 [ICON_Gold] Gold per [ICON_Mine] Mine in this city[NEWLINE][ICON_TradeRoute] Trade Routes from this city provide +1 [ICON_Production] Production[NEWLINE]This city retains 20% [ICON_Production] Production overflow[NEWLINE]+10% [ICON_Production] Production if city has a [ICON_DISTRICT_CAMPUS] Campus'	),

-----------------------------------------------
-- Unique Unit - Mechanisierte Elite
-----------------------------------------------

	('en_US',	'LOC_UNIT_DEVRIM_MECHANISIERTE_ELITE_NAME',	'Mechanisierte Elite'	),
	('en_US',	'LOC_UNIT_DEVRIM_MECHANISIERTE_ELITE_DESCRIPTION',	 
	'An elite industrial warfare unit unique to Devrims Ministerium. Replaces Pike and Shot.[NEWLINE][NEWLINE]Built 25% faster in cities with a Quantum-Fabrik. When completed, grants +20 [ICON_Production] Production to the city. Gains +3 [ICON_Strength] Combat Strength bonus representing industrial synergy. Defeating an enemy unit grants +5 [ICON_Science] Science to the city.'	),

	('en_US',	'LOC_ABILITY_DEVRIM_MECHANISIERTE_ELITE',  '+3 [ICON_Strength] Combat Strength from industrial synergy.'	),
	('en_US',	'LOC_ABILITY_DEVRIM_MECH_ELITE_SCIENCE_KILL',  '+5 [ICON_Science] Science when defeating an enemy unit.'	),

-----------------------------------------------
-- Mountains
-----------------------------------------------

	('en_US',	'LOC_NAMED_MOUNTAIN_HARZ',					'Harz'								),
	('en_US',	'LOC_NAMED_MOUNTAIN_ERZGEBIRGE',			'Erzgebirge'						),
	('en_US',	'LOC_NAMED_MOUNTAIN_SCHWARZWALD',			'Schwarzwald'						),

-----------------------------------------------
-- Rivers
-----------------------------------------------

	('en_US',	'LOC_NAMED_RIVER_RHEIN',					'Rhein'								),
	('en_US',	'LOC_NAMED_RIVER_ELBE',						'Elbe'								),
	('en_US',	'LOC_NAMED_RIVER_DONAU',					'Donau'								),

-----------------------------------------------
-- Cities
-----------------------------------------------

	('en_US',	'LOC_CITY_NAME_DEVRIM_1',  'Produktionshausen'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_2',  'Maschinenstadt'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_3',  'Zahnradburg'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_4',  'Industrieheim'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_5',  'Wissenschaftstal'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_6',  'Forschungsberg'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_7',  'Handelszentrum'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_8',  'Quantenfeld'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_9',  'Fabrikdorf'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_10',  'Minenburg'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_11',  'Campusstadt'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_12',  'Effizienzhafen'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_13',  'Synergietal'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_14',  'Produktionsfluss'),
	('en_US',	'LOC_CITY_NAME_DEVRIM_15',  'Visionärshöhe'),
	
-----------------------------------------------
-- Citizens
-----------------------------------------------
	
	('en_US',	'LOC_CITIZEN_DEVRIM_MALE_1',		'Helmut'		),
	('en_US',	'LOC_CITIZEN_DEVRIM_MALE_2',		'Wolfgang'		),
	('en_US',	'LOC_CITIZEN_DEVRIM_MALE_3',		'Friedrich'		),
	('en_US',	'LOC_CITIZEN_DEVRIM_MALE_4',		'Heinrich'		),
	('en_US',	'LOC_CITIZEN_DEVRIM_MALE_5',		'Karl'			),
	('en_US',	'LOC_CITIZEN_DEVRIM_FEMALE_1',		'Ingrid'		),
	('en_US',	'LOC_CITIZEN_DEVRIM_FEMALE_2',		'Helga'			),
	('en_US',	'LOC_CITIZEN_DEVRIM_FEMALE_3',		'Greta'			),
	('en_US',	'LOC_CITIZEN_DEVRIM_FEMALE_4',		'Ursula'		),
	('en_US',	'LOC_CITIZEN_DEVRIM_FEMALE_5',		'Brigitte'		),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	('en_US',	'LOC_CIVINFO_DEVRIM_LOCATION',		'Central Europe'				),
	('en_US',	'LOC_CIVINFO_DEVRIM_SIZE',			'Industrial Heartland'			),
	('en_US',	'LOC_CIVINFO_DEVRIM_POPULATION',	'The Industrious'				),
	('en_US',	'LOC_CIVINFO_DEVRIM_CAPITAL',		'Produktionshausen'				),

-----------------------------------------------
-- Civilopedia
-----------------------------------------------

	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DEVRIM_MINISTERIUM_CHAPTER_HISTORY_PARA_1',		
	'In Devrims Ministerium für Mehr Produktion fließt Wissen wie Strom durch Zahnräder und Fabriken. Wer klug plant, beherrscht Produktion, Forschung und Handel.'),	
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DEVRIM_MINISTERIUM_CHAPTER_HISTORY_PARA_2',		
	'The Ministry of More Production represents an industrial utopia where knowledge flows like electricity through gears and factories. Those who plan wisely master production, research, and trade.'),	
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DEVRIM_MINISTERIUM_CHAPTER_HISTORY_PARA_3',	
	'The civilization emphasizes synergies between industry, science, and trade routes. The Quantum-Fabrik serves as the cornerstone of this philosophy, connecting industrial output with scientific advancement and commercial prosperity.'),

-----------------------------------------------
-- Unique Building Civilopedia Entry
-----------------------------------------------

	('en_US',	'LOC_PEDIA_BUILDINGS_PAGE_BUILDING_DEVRIM_QUANTUM_FABRIK_CHAPTER_HISTORY_PARA_1',  	
	'The Quantum-Fabrik represents the pinnacle of industrial-scientific integration. This revolutionary building combines advanced manufacturing with quantum research principles, creating synergies that boost both production and scientific output.'	),

-----------------------------------------------
-- Unique Unit Civilopedia Entry
-----------------------------------------------

	('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_DEVRIM_MECHANISIERTE_ELITE_CHAPTER_HISTORY_PARA_1',  	
	'The Mechanisierte Elite represents the ultimate fusion of industrial might and military prowess. These elite soldiers are trained in cities with advanced Quantum-Fabrik facilities, where they learn to harness the power of mechanized warfare. Each victory contributes to the scientific advancement of their home city.'	);

