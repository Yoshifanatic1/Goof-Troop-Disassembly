
!RAM_GOOFT_Global_CurrentLevel = $8300B6
!RAM_GOOFT_Global_CurrentRoom = $8300B7

!RAM_GOOFT_Global_ContinueCount = $8300CC

!RAM_GOOFT_Player1_HandsUpFlag = $830103

!RAM_GOOFT_Player1_SubXPos = $830110
!RAM_GOOFT_Player1_XPosLo = !RAM_GOOFT_Player1_SubXPos+$01

!RAM_GOOFT_Player1_SubYPos = $830113
!RAM_GOOFT_Player1_YPosLo = !RAM_GOOFT_Player1_SubYPos+$01

!RAM_GOOFT_Player1_HeartCount = $83011D

!RAM_GOOFT_Player1_HeldItem = $830142

!RAM_GOOFT_Player1_LifeCount = $830157

!RAM_GOOFT_Player2_HandsUpFlag = $830103				; $830183

!RAM_GOOFT_Player2_SubXPos = !RAM_GOOFT_Player1_SubXPos+$80		; $830190
!RAM_GOOFT_Player2_XPosLo = !RAM_GOOFT_Player2_SubXPos+$01		; $830191

!RAM_GOOFT_Player2_SubYPos = !RAM_GOOFT_Player1_SubYPos+$80		; $830193
!RAM_GOOFT_Player2_YPosLo = !RAM_GOOFT_Player2_SubYPos+$01		; $830194

!RAM_GOOFT_Player2_HeartCount = $83019D					; $83019D

!RAM_GOOFT_Player2_HeldItem = $8301C2					; $8301C2

!RAM_GOOFT_Player2_LifeCount = $8301D7					; $8301D7

!RAM_GOOFT_NorSpr_SpriteDataRAM = $830200

!RAM_GOOFT_PowerupSpr_SpriteDataRAM = $830E00

!RAM_GOOFT_ItemSpr_SpriteDataRAM = $831040

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

struct GOOFT_NorSpr_SpriteDataRAM $00 ;!RAM_GOOFT_NorSpr_SpriteDataRAM
	.SpriteExistsFlag: skip $01		; $00
	.Index01: skip $01					; $01
	.CurrentState: skip $01			; $02
	.CurrentSubState: skip $01		; $03
	.Index04: skip $01					; $04
	.Index05: skip $01					; $05
	.AnimationPtrLo: skip $01			; $06
	.AnimationPtrHi: skip $01			; $07
	.Index08: skip $01					; $08
	.Index09: skip $01					; $09
	.SpriteID: skip $01				; $0A
	.Index0B: skip $01					; $0B
	.Index0C: skip $01					; $0C
	.Index0D: skip $01					; $0D
	.FacingDirection: skip $01		; $0E
	.Index0F: skip $01					; $0F
	.SubXPos: skip $01					; $10
	.XPosLo: skip $01					; $11
	.XPosHi: skip $01					; $12
	.SubYPos: skip $01					; $13
	.YPosLo: skip $01					; $14
	.YPosHi: skip $01					; $15
	.SubZPos: skip $01					; $16
	.ZPosLo: skip $01					; $17
	.Index18: skip $01					; $18
	.Index19: skip $01					; $19
	.Index1A: skip $01					; $1A
	.Index1B: skip $01					; $1B
	.Index1C: skip $01					; $1C
	.Index1D: skip $01					; $1D
	.Index1E: skip $01					; $1E
	.Index1F: skip $01					; $1F
	.Index20: skip $01					; $20
	.Index21: skip $01					; $21
	.Index22: skip $01					; $22
	.Index23: skip $01					; $23
	.Index24: skip $01					; $24
	.Index25: skip $01					; $25
	.Index26: skip $01					; $26
	.Index27: skip $01					; $27
	.XSpeedLo: skip $01				; $28
	.XSpeedHi: skip $01				; $29
	.YSpeedLo: skip $01				; $2A
	.YSpeedHi: skip $01				; $2B
	.Index2C: skip $01					; $2C
	.Index2D: skip $01					; $2D
	.Index2E: skip $01					; $2E
	.Index2F: skip $01					; $2F
	.Index30: skip $01					; $30
	.Index31: skip $01					; $31
	.Index32: skip $01					; $32
	.Index33: skip $01					; $33
	.Index34: skip $01					; $34
	.Index35: skip $01					; $35
	.Index36: skip $01					; $36
	.Index37: skip $01					; $37
	.Index38: skip $01					; $38
	.Index39: skip $01					; $39
	.Index3A: skip $01					; $3A
	.Index3B: skip $01					; $3B
	.Index3C: skip $01					; $3C
	.Index3D: skip $01					; $3D
	.ZSpeedLo: skip $01				; $3E
	.ZSpeedHi: skip $01				; $3F
	.Index40: skip $01					; $40
	.Index41: skip $01					; $41
	.Index42: skip $01					; $42
	.Index43: skip $01					; $43
	.Index44: skip $01					; $44
	.Index45: skip $01					; $45
	.Index46: skip $01					; $46
	.Index47: skip $01					; $47
	.Index48: skip $01					; $48
	.Index49: skip $01					; $49
	.Index4A: skip $01					; $4A
	.Index4B: skip $01					; $4B
	.Index4C: skip $01					; $4C
	.Index4D: skip $01					; $4D
	.Index4E: skip $01					; $4E
	.Index4F: skip $01					; $4F
endstruct align $50

struct GOOFT_PowerupSpr_SpriteDataRAM $00 ;!RAM_GOOFT_PowerupSpr_SpriteDataRAM
	.SpriteExistsFlag: skip $01		; $00
	.Index01: skip $01					; $01
	.CurrentState: skip $01			; $02
	.HoppingFlag: skip $01			; $03
	.Index04: skip $01					; $04
	.Index05: skip $01					; $05
	.AnimationPtrLo: skip $01			; $06
	.AnimationPtrHi: skip $01			; $07
	.Index08: skip $01					; $08
	.Index09: skip $01					; $09
	.Index0A: skip $01					; $0A
	.SpriteID: skip $01				; $0B
	.Index0C: skip $01					; $0C
	.Index0D: skip $01					; $0D
	.FacingDirection: skip $01		; $0E
	.HopsRemaining: skip $01			; $0F
	.SubXPos: skip $01					; $10
	.XPosLo: skip $01					; $11
	.XPosHi: skip $01					; $12
	.SubYPos: skip $01					; $13
	.YPosLo: skip $01					; $14
	.YPosHi: skip $01					; $15
	.SubZPos: skip $01					; $16
	.ZPosLo: skip $01					; $17
	.Index18: skip $01					; $18
	.Index19: skip $01					; $19
	.Index1A: skip $01					; $1A
	.Index1B: skip $01					; $1B
	.Index1C: skip $01					; $1C
	.Index1D: skip $01					; $1D
	.ZSpeedLo: skip $01				; $1E
	.ZSpeedHi: skip $01				; $1F
endstruct align $20

struct GOOFT_ItemSpr_SpriteDataRAM $00 ;!RAM_GOOFT_ItemSpr_SpriteDataRAM
	.SpriteExistsFlag: skip $01		; $00
	.Index01: skip $01					; $01
	.CurrentState: skip $01			; $02
	.Index03: skip $01					; $03
	.Index04: skip $01					; $04
	.Index05: skip $01					; $05
	.AnimationPtrLo: skip $01			; $06
	.AnimationPtrHi: skip $01			; $07
	.Index08: skip $01					; $08
	.Index09: skip $01					; $09
	.Index0A: skip $01					; $0A
	.SpriteID: skip $01				; $0B
	.Index0C: skip $01					; $0C
	.Index0D: skip $01					; $0D
	.FacingDirection: skip $01		; $0E
	.Index0F: skip $01					; $0F
	.SubXPos: skip $01					; $10
	.XPosLo: skip $01					; $11
	.XPosHi: skip $01					; $12
	.SubYPos: skip $01					; $13
	.YPosLo: skip $01					; $14
	.YPosHi: skip $01					; $15
	.SubZPos: skip $01					; $16
	.ZPosLo: skip $01					; $17
	.Index18: skip $01					; $18
	.Index19: skip $01					; $19
	.Index1A: skip $01					; $1A
	.Index1B: skip $01					; $1B
	.Index1C: skip $01					; $1C
	.Index1D: skip $01					; $1D
	.Index1E: skip $01					; $1E
	.Index1F: skip $01					; $1F
endstruct align $20

;---------------------------------------------------------------------------

!RAM_GOOFT_NorSpr0C_WanderingPirate_PirateType = $0B

;---------------------------------------------------------------------------

!RAM_GOOFT_NorSpr0E_Islander_WaitBeforeNextDanceFlip = $0F

!RAM_GOOFT_NorSpr0E_Islander_DanceFlipCount = $3B

!RAM_GOOFT_NorSpr0E_Islander_WaitBeforeDancingLo = $3C
!RAM_GOOFT_NorSpr0E_Islander_WaitBeforeDancingHi = !RAM_GOOFT_NorSpr0E_Islander_WaitBeforeDancingLo+$01

;---------------------------------------------------------------------------
