/*
	Civilization Historic Moments
	Authors: Devrim
*/

-----------------------------------------------
-- Moment Illustrations

-- This adds new Historic Moments to the custom civilization's timeline, triggered by the training of the Unique Unit and building of the Unique Building respectively.
-----------------------------------------------
INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,					GameDataType,								Texture									)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',			'MOMENT_DATA_UNIT',				'UNIT_DEVRIM_STAHLPRAKTIKANTEN',			'StahlpraktikantenHistoricMoment.dds'	),
		('MOMENT_ILLUSTRATION_UNIQUE_BUILDING',		'MOMENT_DATA_BUILDING',			'BUILDING_DEVRIM_QUANTUM_FABRIK',			'QuantumFabrikHistoricMoment.dds'		);
