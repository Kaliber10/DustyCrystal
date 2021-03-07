	object_const_def
	const CERULEANGYMBADGESPEECHHOUSE_POKEFAN_M
	const CERULEANGYMBADGESPEECHHOUSE_POKEFAN_F

CeruleanGymBadgeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanGymBadgeSpeechHousePokefanMScript:
	jumptextfaceplayer CeruleanGymBadgeSpeechHousePokefanMText

CeruleanGymBadgeSpeechHousePokefanMText:
	text "Are you collecting"
	line "KANTO GYM BADGES?"
	done

CeruleanGymBadgeSpeechHousePokefanFScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BULBASAUR
	iftrue .GotBulbasaur
	writetext PokeFanFTakeThisText
	yesorno
	iffalse .Refused
	writetext PokeFanFHopeTheyLikeYouText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext RecievedBulbasaurText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke BULBASAUR, 10
	setevent EVENT_GOT_BULBASAUR
.GotBulbasaur
	writetext PokeFanFTakeCareText
	waitbutton
	closetext
	end

.NoRoom:
	writetext PokeFanFPartyFullText
	waitbutton
	closetext
	end

.Refused:
	writetext PokeFanFRefusedText
	waitbutton
	closetext
	end

PokeFanFTakeThisText:
	text "This BULBASAUR is"
	line "looking for an"
	cont "owner."

	para "Can you please"
	line "look after it?"
	done

PokeFanFHopeTheyLikeYouText:
	text "This BULBASAUR"
	line "thanks you!"

	para "I hope they grow"
	line "a lot."
	done

RecievedBulbasaurText:
	text "<PLAYER> received"
	line "BULBASAUR!"
	done

PokeFanFTakeCareText:
	text "Please take care"
	line "of BULBASAUR."
	done

PokeFanFPartyFullText:
	text "You can't take"
	line "care of BULBASAUR"
	cont "with a full party."
	done

PokeFanFRefusedText:
	text "Oh, I'm sorry."
	done

CeruleanGymBadgeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 1
	warp_event  3,  7, CERULEAN_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGymBadgeSpeechHousePokefanMScript, -1
	object_event  5, 3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGymBadgeSpeechHousePokefanFScript, -1 