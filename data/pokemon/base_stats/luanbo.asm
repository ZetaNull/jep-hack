	db 0 ; species ID placeholder

	db  95,  45,  75,  45,  75,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, FAIRY ; type
	db 45 ; catch rate								; PLACEHOLDER
	db 64 ; base exp								; PLACEHOLDER
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/luanbo/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate				; PLACEHOLDER
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, PSYCH_UP, HIDDEN_POWER, SNORE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, PSYCHIC_M, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, SURF, FLASH, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
