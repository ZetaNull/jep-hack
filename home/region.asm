IsInJohto::
; Return 0 if the player is in Johto, and 1 in Kanto.

	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation

	cp LANDMARK_FAST_SHIP
	jr z, .Johto

	cp LANDMARK_SPECIAL
	jr nz, .CheckRegion

	ld a, [wBackupMapGroup]
	ld b, a
	ld a, [wBackupMapNumber]
	ld c, a
	call GetWorldMapLocation

.CheckRegion:
	cp NIHON_LANDMARK
	jr c, .Nihon
	cp SEVII_LANDMARK_1
	jr c, .sevii1
	cp SEVII_LANDMARK_2
	jr c, .sevii2
	cp KANTO_LANDMARK
	jr nc, .Kanto

.Johto:
	xor a ; JOHTO_REGION
	ret

.Kanto:
	ld a, KANTO_REGION
	ret

.sevii1:
	ld a, SEVII_REGION_1
	ret

.sevii2:
	ld a, SEVII_REGION_2
	ret

.Nihon:
	ld a, NIHON_REGION
	ret
