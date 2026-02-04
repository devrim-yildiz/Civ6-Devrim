/*
	Leader Screen Configuration
	Authors: Devrim
*/

-----------------------------------------------
-- LoadingInfo

-- A simple section of code that ties together the elements that appear on the Loading Screen.
-- Note: Using template fallback images. Replace with custom images when available.
-----------------------------------------------

INSERT INTO LoadingInfo
			(LeaderType,					ForegroundImage,					BackgroundImage,						PlayDawnOfManAudio	)
VALUES		('LEADER_DEVRIM_DER_VISIONAER',	'LEADER_MC_PO_NGBE_NEUTRAL',		'LEADER_MC_PO_NGBE_BACKGROUND',			0					);

--------------------------------------------------------------------------------------------------------------------------		
-- Background Art

-- The below section specifies the image to be used on the Diplomacy Screen, as a background.
-- Note: Using template fallback images. Replace with custom images when available.
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO DiplomacyInfo			
			(Type,							BackgroundImage					)
VALUES		('LEADER_DEVRIM_DER_VISIONAER',	'LEADER_PO_NGBE_DIPLO_BG'		);