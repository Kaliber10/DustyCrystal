	object_const_def
	const RED_HOUSE_MEW

RedsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Mew

.Mew:
	checkevent EVENT_FOUGHT_MEW
	iftrue .NoAppear
	checkevent EVENT_BEAT_RED
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear RED_HOUSE_MEW
	endcallback

.NoAppear:
	disappear RED_HOUSE_MEW
	endcallback

Mew:
	faceplayer
	opentext
	writetext MEWText
	cry MEW
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEW
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEW, 70
	startbattle
	disappear RED_HOUSE_MEW
	reloadmapafterbattle
	end

MewText:
	text "Mewww"
	done

RedsHouse2FN64Script:
	jumptext RedsHouse2FN64Text

RedsHouse2FPCScript:
	jumptext RedsHouse2FPCText

RedsHouse2FN64Text:
	text "<PLAYER> played the"
	line "N64."

	para "Better get going--"
	line "no time to lose!"
	done

RedsHouse2FPCText:
	text "It looks like it"
	line "hasn't been used"
	cont "in a long time…"
	done

RedsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, REDS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  3,  5, BGEVENT_READ, RedsHouse2FN64Script
	bg_event  0,  1, BGEVENT_READ, RedsHouse2FPCScript

	def_object_events
	object_event  2,  4, SPRITE_JYNX, SPRITEMOVEDATA_POKEMON, 0, 0 , -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Mew, EVENT_RED_HOUSE_MEW