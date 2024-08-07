	object_const_def

LavenderCryptSet2_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerChannelerHimiko: ; Left
	trainer CHANNELER, HIMIKO, EVENT_BEAT_CHANNELER_HIMIKO, ChannelerHimikoSeenText, ChannelerHimikoBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerHimikoAfterBattleText
	waitbutton
	closetext
	end

ChannelerHimikoSeenText:
	text "Gagagak! This"
	line "power is like"
	cont "no other!"
	done

ChannelerHimikoBeatenText:
	text "Bwoooah!"
	done

ChannelerHimikoAfterBattleText:
	text "My sincerest apo-"
	line "logies. I don't"
	cont "know what came"
	cont "over me."
	
	para "That GHOST didn't"
	line "go too far. You"
	cont "can catch it."
	done

TrainerChannelerShanna:; right
	trainer CHANNELER, SHANNA, EVENT_BEAT_CHANNELER_SHANNA, ChannelerShannaSeenText, ChannelerShannaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerShannaAfterBattleText
	waitbutton
	closetext
	end

ChannelerShannaSeenText:
	text "Too much! Ack!"
	line "Get awayyyy!"
	done

ChannelerShannaBeatenText:
	text "Gasp… pant…"
	done

ChannelerShannaAfterBattleText:
	text "Where did that"
	line "thing come from?"
	
	para "I don't know!"
	line "It's all too"
	cont "much!" ; They don't all need to give hints either.
	done

TrainerChannelerKarina: ; bottom
	trainer CHANNELER, KARINA, EVENT_BEAT_CHANNELER_KARINA, ChannelerKarinaSeenText, ChannelerKarinaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerKarinaAfterBattleText
	waitbutton
	closetext
	end

ChannelerKarinaSeenText:
	text "Light, light,"
	line "light, light…"
	done

ChannelerKarinaBeatenText:
	text "Bright! Toooo"
	line "bright!"
	done

ChannelerKarinaAfterBattleText:
	text "Right! I mean"
	line "right! It went"
	cont "right!"
	done

LavenderCryptSet2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  2, LAVENDER_CRYPT, 3 ; Entrance
	; Correct Path
	warp_event 22,  5, LAVENDER_CRYPT_SET_1, 2 ; Right Route
	warp_event 21,  1, LAVENDER_CRYPT_SET_3, 3 ; Right Route
	warp_event 18, 18, LAVENDER_CRYPT_SET_3, 4 ; Right Route
	warp_event 22, 18, LAVENDER_CRYPT_SET_3, 5 ; END
	warp_event  2,  9, LAVENDER_CRYPT_SET_1, 3 ; Middle Route
	warp_event 14, 16, LAVENDER_CRYPT_SET_1, 6 ; Middle Route
	warp_event 14, 17, LAVENDER_CRYPT_SET_1, 7 ; Middle Route
	warp_event 10, 18, LAVENDER_CRYPT_SET_3, 6 ; Left Route
	warp_event  4, 17, LAVENDER_CRYPT_SET_1, 8 ; Left Route
	warp_event 20, 18, LAVENDER_CRYPT_SET_1, 9 ; Left Route
	
	; Incorrect Path
	warp_event 20, 16, LAVENDER_CRYPT, 5 ; Takes you back to the start. Tee hee.
	warp_event  6,  5, LAVENDER_CRYPT_SET_3, 8
	warp_event  8, 10, LAVENDER_CRYPT_SET_1, 11
	warp_event 22,  3, LAVENDER_CRYPT_SET_1, 12
	warp_event 17,  9, LAVENDER_CRYPT_SET_2, 18
	warp_event 17, 10, LAVENDER_CRYPT_SET_2, 19
	warp_event  1,  5, LAVENDER_CRYPT_SET_2, 16
	warp_event  1,  6, LAVENDER_CRYPT_SET_2, 17
	warp_event 18,  3, LAVENDER_CRYPT_SET_2, 21
	warp_event  1, 16, LAVENDER_CRYPT_SET_2, 20
	warp_event 16,  4, LAVENDER_CRYPT_SET_1, 14
	warp_event 19,  5, LAVENDER_CRYPT_SET_2, 16
	warp_event 17,  2, LAVENDER_CRYPT_SET_3, 11
	warp_event  8, 16, LAVENDER_CRYPT_SET_2, 26
	warp_event 22, 10, LAVENDER_CRYPT_SET_2, 25
	warp_event  2, 18, LAVENDER_CRYPT_SET_3, 15
	warp_event 17, 17, LAVENDER_CRYPT_SET_3, 21
	warp_event 17, 18, LAVENDER_CRYPT_SET_3, 22

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  1, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 1, TrainerChannelerHimiko, -1
	object_event 12, 17, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 2, TrainerChannelerShanna, -1
	object_event 20,  6, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 2, TrainerChannelerKarina, -1
