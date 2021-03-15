    object_const_def
	const CERULEANCAVE_MEWTWO

CeruleanCave_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Mewtwo

.Mewtwo
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .NoAppear
	checkevent EVENT_BEAT_RED
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear CERULEANCAVE_MEWTWO
	endcallback

.NoAppear:
	disappear CERULEANCAVE_MEWTWO
	endcallback

Mewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 70
	startbattle
	disappear CERULEANCAVE_MEWTWO
	reloadmapafterbattle
	end

MewtwoText:
	text "Mew!"
	done

CeruleanCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 5, CERULEAN_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event 4, 3, SPRITE_JYNX, SPRITEMOVEDATA_POKEMON, 0, 0 , -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Mewtwo, EVENT_CERULEAN_CAVE_MEWTWO