/*
	Leader Screen Configuration
	Authors: Devrim
*/

-----------------------------------------------
-- LoadingInfo

-- A simple section of code that ties together the elements that appear on the Loading Screen.
-----------------------------------------------

INSERT INTO LoadingInfo
			(LeaderType,					ForegroundImage,							BackgroundImage,							PlayDawnOfManAudio	)
VALUES		('LEADER_DEVRIM_DER_VISIONAER',	'LEADER_DEVRIM_DER_VISIONAER_NEUTRAL',		'LEADER_DEVRIM_DER_VISIONAER_BACKGROUND',	0					);

--------------------------------------------------------------------------------------------------------------------------		
-- Background Art

-- The below section specifies the image to be used on the Diplomacy Screen, as a background.
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO DiplomacyInfo			
			(Type,							BackgroundImage							)
VALUES		('LEADER_DEVRIM_DER_VISIONAER',	'LEADER_DEVRIM_DER_VISIONAER_DIPLO_BG'	);