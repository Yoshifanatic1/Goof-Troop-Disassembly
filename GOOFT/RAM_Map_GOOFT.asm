
!RAM_GOOFT_Player1_HandsUpFlag = $830103				; $830103

!RAM_GOOFT_Player1_SubXPos = $830110					; $830110
!RAM_GOOFT_Player1_XPosLo = !RAM_GOOFT_Player1_SubXPos+$01		; $830111

!RAM_GOOFT_Player1_SubYPos = $830113					; $830113
!RAM_GOOFT_Player1_YPosLo = !RAM_GOOFT_Player1_SubYPos+$01		; $830114

!RAM_GOOFT_Player1_HeartCount = $83011D					; $83011D

!RAM_GOOFT_Player1_HeldItem = $830142					; $830142

!RAM_GOOFT_Player1_LifeCount = $830157					; $830157

!RAM_GOOFT_Player2_HandsUpFlag = $830103				; $830183

!RAM_GOOFT_Player2_SubXPos = !RAM_GOOFT_Player1_SubXPos+$80		; $830190
!RAM_GOOFT_Player2_XPosLo = !RAM_GOOFT_Player2_SubXPos+$01		; $830191

!RAM_GOOFT_Player2_SubYPos = !RAM_GOOFT_Player1_SubYPos+$80		; $830193
!RAM_GOOFT_Player2_YPosLo = !RAM_GOOFT_Player2_SubYPos+$01		; $830194

!RAM_GOOFT_Player2_HeartCount = $83019D					; $83019D

!RAM_GOOFT_Player2_HeldItem = $8301C2					; $8301C2

!RAM_GOOFT_Player2_LifeCount = $8301D7					; $8301D7

!RAM_GOOFT_Global_OAMBuffer = $831AA0

!RAM_GOOFT_Global_UncompressedSpriteGraphics = $7E2000

struct GOOFT_Global_OAMBuffer !RAM_GOOFT_Global_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct GOOFT_Global_UpperOAMBuffer !RAM_GOOFT_Global_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01