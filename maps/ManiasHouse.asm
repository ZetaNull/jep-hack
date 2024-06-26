	object_const_def
	const MANIASHOUSE_ROCKER

ManiasHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ManiaScript:
	faceplayer
	opentext
	checkevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	iftrue .default_postevent
	checkevent EVENT_GOT_SHUCKIE
	iftrue .alreadyhaveshuckie
	writetext ManiaText_AskLookAfterShuckle
	yesorno
	iffalse .refusetotakeshuckie
	special GiveShuckle
	iffalse .partyfull
	writetext ManiaText_TakeCareOfShuckle
	promptbutton
	waitsfx
	writetext ManiaText_GotShuckle
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	setevent EVENT_GOT_SHUCKIE
	end

.alreadyhaveshuckie
	checkflag ENGINE_GOT_SHUCKIE_TODAY
	iffalse .returnshuckie
	writetext ManiaText_TakeCareOfShuckle
	waitbutton
	closetext
	end

.partyfull
	writetext ManiaText_PartyFull
	waitbutton
	closetext
	end

.refusetotakeshuckie
	writetext ManiaText_IfHeComesBack
	waitbutton
	closetext
	end

.returnshuckie
	writetext ManiaText_CanIHaveMyMonBack
	yesorno
	iffalse .refused
	special ReturnShuckie
	ifequal SHUCKIE_WRONG_MON, .wrong
	ifequal SHUCKIE_REFUSED, .refused
	ifequal SHUCKIE_FAINTED, .default_postevent
	ifequal SHUCKIE_EVOLVED, .evolved
	ifequal SHUCKIE_HAPPY, .superhappy
	writetext ManiaText_ThankYou
	promptbutton
	verbosegiveitem ANTIQUE_POT
	iffalse .NoRoom0
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
.NoRoom0:
	closetext
	end

.wrong
	writetext ManiaText_ShuckleNotThere
	waitbutton
	closetext
	end

.superhappy
	writetext ManiaText_ShuckleLikesYou
	promptbutton
	verbosegiveitem ANTIQUE_POT
	iffalse .NoRoom1
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
.NoRoom1:
	closetext
	end

.refused
	writetext ManiaText_SameAsBeingRobbed
	waitbutton
	closetext
	end
	
.nothingleft ; unreferenced
	writetext ManiaText_ShuckleIsYourLastMon
	waitbutton

.evolved
	writetext ManiaText_Pockle
	promptbutton
	verbosegiveitem ANTIQUE_POT
	iffalse .NoRoom2
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
.NoRoom2:
	closetext
	end

.default_postevent
	writetext ManiaText_HappinessSpeech
	waitbutton
	closetext
	end

ManiasHouseUnusedBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

ManiaText_AskLookAfterShuckle:
	text "I-I'm in shock!"

	para "A guy about your"
	line "age with piercing"
	cont "eyes and long hair"
	cont "came in."

	para "He scared me into"
	line "giving him my"
	cont "prized #MON!"

	para "I still have one"
	line "left, but what if"
	cont "he comes back?"

	para "You look strong."
	line "Could you look"
	cont "after my #MON"
	cont "for a while?"
	done

ManiaText_TakeCareOfShuckle:
	text "Oh, thank you!"

	para "Take good care of"
	line "it, please!"
	done

ManiaText_GotShuckle:
	text "<PLAYER> received a"
	line "SHUCKLE."
	done

ManiaText_PartyFull:
	text "Your #MON party"
	line "is full."
	done

ManiaText_IfHeComesBack:
	text "Oh, no… What'll"
	line "I do if he comes"
	cont "back?"
	done

ManiaText_CanIHaveMyMonBack:
	text "Hi! How's my"
	line "SHUCKIE?"

	para "I think I'm safe"
	line "now, so may I have"
	cont "them back?"
	done

ManiaText_ThankYou:
	text "Thank you for"
	line "keeping SHUCKIE"
	cont "safe!"
	
	para "Here, you can"
	line "have this as a"
	cont "reward!"
	done

ManiaText_ShuckleNotThere:
	text "Hey, you don't"
	line "have SHUCKIE with"
	cont "you."
	done

ManiaText_ShuckleLikesYou:
	text "Looks like SHUCKIE"
	line "really likes you!"
	
	para "I think that they"
	line "would rather stay"
	cont "with you."

	para "If you're going"
	line "to keep SHUCKIE,"
	cont "you can have this"
	cont "too!"
	done

ManiaText_SameAsBeingRobbed:
	text "Oh, no, no… That's"
	line "the same as being"
	cont "robbed."
	done

ManiaText_HappinessSpeech:
	text "For #MON, hap-"
	line "piness is being"
	cont "with a person who"
	cont "treats them well."
	done

ManiaText_Pockle:
	text "Wow, you made"
	line "SHUCKIE evolve?"

	para "That's excellent!"
	line "They look really"
	cont "pleased now, too."

	para "There's not much"
	line "point in taking"
	cont "this now that you"
	cont "evolved SHUCKIE,"
	cont "but have this!"
	done
	
ManiaText_ShuckleIsYourLastMon:
	text "If I take SHUCKIE"
	line "back, what are"
	cont "you going to use"
	cont "in battle?"

ManiasHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 1
	warp_event  3,  7, CIANWOOD_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ManiaScript, -1
