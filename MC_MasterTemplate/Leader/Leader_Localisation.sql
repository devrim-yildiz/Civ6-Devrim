/*
	Localisation
	Authors: Devrim
*/

-----------------------------------------------
-- General notes on 'localization' (or 'in-game text')

-- The entries in this file, as well as those in Civilization_Localisation.sql, are where we define the text that will actually display, in-game.
-----------------------------------------------

INSERT INTO LocalizedText
			(Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader Name
-----------------------------------------------	
	
	('en_US',	'LOC_LEADER_DEVRIM_SCHICHTLEITER_NAME',  'Devrim Schichtleiter'	),
	
-----------------------------------------------
-- Leader Unique Ability
-----------------------------------------------	

	('en_US',	'LOC_TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION_NAME',	'Industrial Vision'	),
	('en_US',	'LOC_TRAIT_LEADER_DEVRIM_INDUSTRIAL_VISION_DESCRIPTION',		'[ICON_DISTRICT_INDUSTRIAL_ZONE] Industrial Zone districts complete 15% faster.'	),

-----------------------------------------------
-- Leader Agenda
-----------------------------------------------	

	('en_US',	'LOC_AGENDA_DEVRIM_SCHICHTLEITER_NAME',	'Master Industrialist'	),
	('en_US',	'LOC_AGENDA_DEVRIM_SCHICHTLEITER_DESCRIPTION',	'Values high production output and scientific advancement. Respects civilizations with strong industry and technology, but dislikes those who neglect production.'	),
	
	('en_US',	'LOC_DIPLO_KUDO_LEADER_DEVRIM_SCHICHTLEITER_REASON_ANY',	'(You have high production and science output.)'	),
	('en_US',	'LOC_DIPLO_MODIFIER_DEVRIM_SCHICHTLEITER_HAPPY',	'Devrim Schichtleiter admires your industrial prowess and scientific achievements. Together we can build a better world!'	),
	
	('en_US',	'LOC_DIPLO_WARNING_LEADER_DEVRIM_SCHICHTLEITER_REASON_ANY',	'(Your production output is low.)'	),
	('en_US',	'LOC_DIPLO_MODIFIER_DEVRIM_SCHICHTLEITER_UNHAPPY',	'Devrim Schichtleiter is disappointed by your lack of industrial focus. Efficiency is the key to progress!'	),

		
-----------------------------------------------
-- Dawn of Man (Loading Screen) Text
-----------------------------------------------	

	('en_US',	'LOC_LOADING_INFO_LEADER_DEVRIM_SCHICHTLEITER',
	'Willkommen, Devrim Schichtleiter! Lead your Ministry of More Production to industrial greatness. Build Das Ding, wo alles rauskommt to synergize science with production. Deploy Die Stahlpraktikanten to dominate the battlefield while advancing your technological superiority. Remember: In your empire, knowledge flows like electricity through gears and factories. Those who plan wisely master production, research, and trade!'  	),

-----------------------------------------------
-- Diplomacy Text: First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Greetings, stranger. I am Devrim Schichtleiter, leader of the Ministry of More Production. Our factories never rest, and our research never stops.' ),
	
	-- AI invitation to visit nearby City (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Would you like to witness the marvels of Das Ding, wo alles rauskommt? The synergy between science and industry is truly a sight to behold.'	),
	
	-- AI accepts human invitation (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Excellent. Efficiency in all things, including diplomacy.'	),
	
	-- AI invitation to exchange Capital Information (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Knowledge shared is knowledge doubled. Shall we exchange information about our capitals?'	),

-----------------------------------------------
-- Diplomacy Text: Greetings
-----------------------------------------------	

	-- (HAPPY)
	('en_US',	'LOC_DIPLO_GREETING_LEADER_DEVRIM_SCHICHTLEITER_HAPPY',
	'Ah, a fellow industrialist! What progress can we discuss today?'	),

	-- (UNHAPPY)
	('en_US',	'LOC_DIPLO_GREETING_LEADER_DEVRIM_SCHICHTLEITER_UNHAPPY',
	'State your business. Time is production, and production waits for no one.'	),
	
-----------------------------------------------
-- Diplomacy Text: Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	('en_US',	'LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Your delegation is welcome. They may observe our factories and research facilities.'	),
	
	-- AI Rejects (ANY)
	('en_US',	'LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Our industrial secrets must remain protected. Perhaps another time.'	),
	
	-- AI Requests (ANY)
	('en_US',	'LOC_DIPLO_DELEGATION_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'I send you a delegation of our finest engineers, bearing blueprints of efficient machinery as gifts.'	),
	
-----------------------------------------------
-- Diplomacy Text: Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	('en_US',	'LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Free movement facilitates trade and knowledge exchange. Agreed.'	),
	
	-- AI rejects from human (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Our production lines must remain secure. Access denied.'	),
	
	-- AI requests from human (ANY)	
	('en_US',	'LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Open borders would improve our trade efficiency. What do you say?'	),
	
-----------------------------------------------
-- Diplomacy Text: Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Excellent! A partnership built on mutual industrial respect and scientific cooperation.'	),
	
	-- AI rejects from human (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Your production metrics do not yet meet our standards for friendship.'	),
	
	-- AI Requests friendship from human (ANY)	
	('en_US',	'LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Our civilizations share a vision of progress. Shall we formalize our partnership?'	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Together, our production will be unstoppable!'	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'A missed opportunity for synergy. Most inefficient.'	),

-----------------------------------------------
-- Diplomacy Text: Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	('en_US',	'LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Our combined industrial might would be formidable. Let us forge an alliance!'	),

-----------------------------------------------
-- Diplomacy Text: Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	('en_US',	'LOC_DIPLO_KUDO_EXIT_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Your production output is impressive. The Ministry approves of your efficiency.'	),
	
	-- AI Warnings (ANY)
	('en_US',	'LOC_DIPLO_WARNING_EXIT_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Your factories sit idle while potential goes unrealized. This is most concerning.'	),

-----------------------------------------------
-- Diplomacy Text: Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_DEVRIM_SCHICHTLEITER_HAPPY',
	'Your military presence near our borders is... concerning. Please explain their purpose.'	),

	-- AI warns player for border troops (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_DEVRIM_SCHICHTLEITER_UNHAPPY',
	'Remove your troops from our industrial heartland immediately, or face Die Stahlpraktikanten!'	),
	
	-- AI accepts player warning for border troops warning (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_DEVRIM_SCHICHTLEITER_HAPPY',
	'Our units are merely protecting our trade routes. They will relocate.'	),
	
	-- AI accepts player warning for border troops warning (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_DEVRIM_SCHICHTLEITER_UNHAPPY',
	'Very well. But know that our production can replace them faster than you imagine.'	),
	
	-- AI rejects player warning for border troops warning (ANY) ~ DECLARES WAR
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Your inefficiency has sealed your fate. Prepare for mechanized warfare!'	),

-----------------------------------------------
-- Diplomacy Text: Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_DEVRIM_SCHICHTLEITER_HAPPY',
	'Your settlement interferes with our planned industrial zones. Please reconsider future locations.'	),
	
	-- AI warns player for settling too close (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_DEVRIM_SCHICHTLEITER_UNHAPPY',
	'You encroach on territory earmarked for our expansion. This will not be tolerated.'	),
	
	-- Positive AI response to human request (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_DEVRIM_SCHICHTLEITER_HAPPY',
	'We will find more efficient locations for our cities elsewhere.'	),
	
	-- Positive AI response to human request (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_DEVRIM_SCHICHTLEITER_UNHAPPY',
	'Fine. But only because conflict would be inefficient at this time.'	),
	
	-- Negative AI response to human request (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_DEVRIM_SCHICHTLEITER_HAPPY',
	'We settle where production potential is highest. This location is optimal.'	),
	
	-- Negative AI response to human request (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_DEVRIM_SCHICHTLEITER_UNHAPPY',
	'The Ministry does not answer to you. Our expansion will continue.'	),
	
-----------------------------------------------
-- Diplomacy Text: Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_HAPPY',
	'A mutually beneficial exchange. Most efficient!'	),
	
	-- AI Accepts Deal (Unhappy)
	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_UNHAPPY',
	'Acceptable, though the margins could be better.'	),

	-- AI Rejects Deal (HAPPY)
	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_HAPPY',
	'The return on investment is insufficient. Please revise your offer.'	),
	
	-- AI Rejects Deal (Unhappy)
	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_UNHAPPY',
	'This deal is as inefficient as your civilization. Rejected.'	),

-----------------------------------------------
-- Diplomacy Text: Denounce
-----------------------------------------------	

	-- Human denounce, AI responds
	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Your words are as unproductive as your factories. The Ministry takes note.'	),
	
	-- From AI
	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Your inefficiency is an insult to progress itself. The world must know of your wastefulness! (Denounces You)'	),
	
-----------------------------------------------
-- Diplomacy Text: Declarations of War
-----------------------------------------------	

	-- Human Declares War, AI responds
	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'You dare attack the Ministry? Die Stahlpraktikanten will show you the true meaning of industrialized warfare!'	),
	
	-- AI Declares War
	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'Your resources would be better utilized under our management. Prepare for assimilation!'	), 

-----------------------------------------------
-- Diplomacy Text: Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'War is inefficient. Let us return to productive pursuits.'	),
	
	-- AI refuses human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'The production cost of this war has not yet been justified. We continue.'	),
	
	-- AI requests from human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'This conflict drains resources that could be better spent on progress. Peace?'	),

-----------------------------------------------
-- Diplomacy Text: Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	('en_US',	'LOC_DIPLO_DEFEAT_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'The Ministry... has fallen. But remember: our blueprints will outlive us all.'	),

	-- Human is Defeated (will see this in hotseat)
	('en_US',	'LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_DEVRIM_SCHICHTLEITER_ANY',
	'{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_DEVRIM_SCHICHTLEITER_ANY}'	),

--------------------------------------------------------------------
-- Leader Quote and Civilopedia Text
--------------------------------------------------------------------

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_DEVRIM_SCHICHTLEITER_QUOTE',
	'In our Ministry, knowledge flows like electricity through gears and factories. Those who plan wisely master production, research, and trade.'  ),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_DEVRIM_SCHICHTLEITER_TITLE',
	'Devrim Schichtleiter'),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_DEVRIM_SCHICHTLEITER_SUBTITLE',
	'Leader of the Ministry of More Production'	),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_DEVRIM_SCHICHTLEITER_CHAPTER_CAPSULE_BODY',
	'Devrim Schichtleiter leads a civilization focused on the synergy between industry, science, and trade. Build Das Ding, wo alles rauskommt next to Campuses and develop your trade network to maximize production bonuses.'),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_DEVRIM_SCHICHTLEITER_CHAPTER_DETAILED_BODY',
	'Devrim`s Ministry excels at combining industrial output with scientific advancement. Focus on building Industrial Zones adjacent to Campuses, and use Das Ding, wo alles rauskommt unique building to create powerful production centers. Mines provide additional science in cities with Campuses, and domestic trade routes to industrial cities provide significant bonuses. Deploy Die Stahlpraktikanten for powerful late-game military options that also boost your economy.'),

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_DEVRIM_SCHICHTLEITER_CHAPTER_HISTORY_PARA_1',
	'Devrim Schichtleiter rose to prominence as the founder of the Ministry of More Production, an industrial utopia where efficiency and innovation reign supreme.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_DEVRIM_SCHICHTLEITER_CHAPTER_HISTORY_PARA_2',
	'Under his visionary leadership, the Ministry developed Das Ding, wo alles rauskommt, a revolutionary building that combines advanced manufacturing with scientific research to create unprecedented production capabilities.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_DEVRIM_SCHICHTLEITER_CHAPTER_HISTORY_PARA_3',
	'His philosophy of "knowledge flowing like electricity through gears and factories" became the foundation of a new approach to civilization-building, where those who plan wisely master production, research, and trade.');

