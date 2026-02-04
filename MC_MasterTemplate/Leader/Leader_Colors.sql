/*
	Leader Colours
	Authors: Devrim
*/

-----------------------------------------------
-- PlayerColors

-- This assigns the civilization's colours to the leader - when selecting the leader, this will control the order in which the colour-combinations appear.
-----------------------------------------------

INSERT INTO	PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor )
VALUES	(
		'LEADER_DEVRIM_DER_VISIONAER', -- Type
		'Unique', -- Usage
		'COLOR_DEVRIM_MINISTERIUM_A_PRIMARY', -- PrimaryColor
		'COLOR_DEVRIM_MINISTERIUM_A_SECONDARY', -- SecondaryColor
		'COLOR_DEVRIM_MINISTERIUM_B_PRIMARY', -- Alt1PrimaryColor
		'COLOR_DEVRIM_MINISTERIUM_B_SECONDARY', -- Alt1SecondaryColor
		'COLOR_DEVRIM_MINISTERIUM_C_PRIMARY', -- Alt2PrimaryColor
		'COLOR_DEVRIM_MINISTERIUM_C_SECONDARY', -- Alt2SecondaryColor
		'COLOR_DEVRIM_MINISTERIUM_D_PRIMARY', -- Alt3PrimaryColor
		'COLOR_DEVRIM_MINISTERIUM_D_SECONDARY' -- Alt3SecondaryColor
		);