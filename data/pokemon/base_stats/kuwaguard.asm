	db 0 ; species ID placeholder

	db  60,  95,  90,  75,  60,  65
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING; type
	db 45 ; catch rate								; PLACEHOLDER
	db 64 ; base exp								; PLACEHOLDER
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kuwaguard/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate				; PLACEHOLDER
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, HIDDEN_POWER, SNORE, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SWIFT, DEFENSE_CURL, DETECT, REST, ATTRACT, THIEF, STEEL_WING, FURY_CUTTER, CUT, STRENGTH
	; end
