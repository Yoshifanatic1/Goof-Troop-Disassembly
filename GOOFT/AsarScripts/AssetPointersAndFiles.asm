; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

lorom
;!ROMVer = $0000						; Note: This is set within the batch script
!GOOFT_U = $0001
!GOOFT_E = $0002
!GOOFT_J = $0004
!GOOFT_F = $0008
!GOOFT_G = $0010

check bankcross off

org $008000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl CompressedTilemapsPointersStart,(CompressedTilemapsPointersEnd-CompressedTilemapsPointersStart)/$0C
	dl Map16PointersStart,(Map16PointersEnd-Map16PointersStart)/$0C
	dl LevelDataPointersStart,(LevelDataPointersEnd-LevelDataPointersStart)/$0C
	dl PalettePointersStart,(PalettePointersEnd-PalettePointersStart)/$0C
	dl GarbageDataStart,(GarbageDataEnd-GarbageDataStart)/$0C
	dl MusicDataPointersStart,(MusicDataPointersEnd-MusicDataPointersStart)/$0C
	dl SoundEffectPointersStart,(SoundEffectPointersEnd-SoundEffectPointersStart)/$0C
	dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $8FD400,$8FD640,GFX_Sprite_BarrelThrowingNative,GFX_Sprite_BarrelThrowingNativeEnd
	dl $8FD640,$8FFB20,GFX_Sprite_KeelhaulPete4,GFX_Sprite_KeelhaulPete4End
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $85C000,$85C3A1,GFX_Layer1_CapcomLogo,GFX_Layer1_CapcomLogoEnd
	dl $85C3A1,$85D7D8,GFX_Layer3_Fonts,GFX_Layer3_FontsEnd
	dl $85D7D8,$85FBE7,GFX_FGBG_Level1,GFX_FGBG_Level1End
	dl $85FBE7,$86A217,GFX_FGBG_Level2,GFX_FGBG_Level2End
	dl $86A217,$86CD46,GFX_FGBG_Level3,GFX_FGBG_Level3End
	dl $86CD46,$879277,GFX_FGBG_Level4,GFX_FGBG_Level4End
	dl $879277,$87C521,GFX_FGBG_Level5,GFX_FGBG_Level5End
	dl $87C521,$87E54B,GFX_FGBG_TitleScreen,GFX_FGBG_TitleScreenEnd
	dl $87E54B,$87F124,GFX_FGBG_PlayerSelectScreen,GFX_FGBG_PlayerSelectScreenEnd
	dl $87F124,$888B68,GFX_FGBG_MapScreen,GFX_FGBG_MapScreenEnd
	dl $888B68,$888EA2,GFX_Layer2_PlacedPlankHolesAndGenericFloorSwitches,GFX_Layer2_PlacedPlankHolesAndGenericFloorSwitchesEnd
	dl $888EA2,$889588,GFX_Layer1_CutsceneImageBorder,GFX_Layer1_CutsceneImageBorderEnd
	dl $889588,$88CBC1,GFX_Layer1_CutsceneImages,GFX_Layer1_CutsceneImagesEnd
	dl $88CBC1,$88F138,GFX_Layer1_EndingCutsceneImages,GFX_Layer1_EndingCutsceneImagesEnd
	dl $88F138,$88FDFE,GFX_Layer1_PasswordScreen,GFX_Layer1_PasswordScreenEnd
	dl $8C8000,$8C9574,GFX_Sprite_Global1,GFX_Sprite_Global1End
	dl $8C9574,$8DC55C,GFX_Sprite_Global2,GFX_Sprite_Global2End
	dl $8DC55C,$8DD18F,GFX_Sprite_Global3,GFX_Sprite_Global3End
	dl $8DD18F,$8E96CC,GFX_Sprite_Global4,GFX_Sprite_Global4End
	dl $8E96CC,$8E9AFB,GFX_Sprite_Edgehog,GFX_Sprite_EdgehogEnd
	dl $8E9AFB,$8E9E54,GFX_Sprite_Bee,GFX_Sprite_BeeEnd
	dl $8E9E54,$8EA2C0,GFX_Sprite_Ghost,GFX_Sprite_GhostEnd
	dl $8EA2C0,$8EA6E1,GFX_Sprite_Snake,GFX_Sprite_SnakeEnd
	dl $8EA6E1,$8EAAE0,GFX_Sprite_BatAndPirateFlag,GFX_Sprite_BatAndPirateFlagEnd
	dl $8EAAE0,$8EADB9,GFX_Sprite_IslanderAndFish,GFX_Sprite_IslanderAndFishEnd
	dl $8EADB9,$8EB47A,GFX_Sprite_Armor1,GFX_Sprite_Armor1End
	dl $8EB47A,$8EBA95,GFX_Sprite_Armor2,GFX_Sprite_Armor2End
	dl $8EBA95,$8EBDBB,GFX_Sprite_SpikedLog,GFX_Sprite_SpikedLogEnd
	dl $8EBDBB,$8EC310,GFX_Sprite_SpikedRockAndBoulder,GFX_Sprite_SpikedRockAndBoulderEnd
	dl $8EC310,$8EC77F,GFX_Sprite_Rumbler1,GFX_Sprite_Rumbler1End
	dl $8EC77F,$8ECBE2,GFX_Sprite_Rumbler2,GFX_Sprite_Rumbler2End
	dl $8ECBE2,$8ED0C0,GFX_Sprite_Cannon1,GFX_Sprite_Cannon1End
	dl $8ED0C0,$8ED568,GFX_Sprite_Cannon2,GFX_Sprite_Cannon2End
	dl $8ED568,$8EDA29,GFX_Sprite_MetalBallsAndSpikeTrap,GFX_Sprite_MetalBallsAndSpikeTrapEnd
	dl $8EDA29,$8EDD0F,GFX_Sprite_ThrownSword,GFX_Sprite_ThrownSwordEnd
	dl $8EDD0F,$8EE0A9,GFX_Sprite_Frog,GFX_Sprite_FrogEnd
	dl $8EE0A9,$8EE54D,GFX_Sprite_PlatformsAndDebris,GFX_Sprite_PlatformsAndDebrisEnd
	dl $8EE54D,$8EE8C9,GFX_Sprite_ArrowPlatform,GFX_Sprite_ArrowPlatformEnd
	dl $8EE8C9,$8EEB3F,GFX_Sprite_Stalactite,GFX_Sprite_StalactiteEnd
	dl $8EEB3F,$8EF10A,GFX_Sprite_SkeletonBoss1,GFX_Sprite_SkeletonBoss1End
	dl $8EF10A,$8EF719,GFX_Sprite_SkeletonBoss2,GFX_Sprite_SkeletonBoss2End
	dl $8EF719,$8EFD6B,GFX_Sprite_SkeletonBoss3,GFX_Sprite_SkeletonBoss3End
	dl $8EFD6B,$8F8346,GFX_Sprite_EndingCutsceneSprites1,GFX_Sprite_EndingCutsceneSprites1End
	dl $8F8346,$8F88BB,GFX_Sprite_FireBug1,GFX_Sprite_FireBug1End
	dl $8F88BB,$8F8E5E,GFX_Sprite_FireBug2,GFX_Sprite_FireBug2End
	dl $8F8E5E,$8F93A6,GFX_Sprite_FireBug3,GFX_Sprite_FireBug3End
	dl $8F93A6,$8F99B2,GFX_Sprite_KeelhaulPete1,GFX_Sprite_KeelhaulPete1End
	dl $8F99B2,$8F9FF8,GFX_Sprite_KeelhaulPete2,GFX_Sprite_KeelhaulPete2End
	dl $8F9FF8,$8FA508,GFX_Sprite_KeelhaulPete3,GFX_Sprite_KeelhaulPete3End
	dl $8FA508,$8FA731,GFX_Sprite_Minecart,GFX_Sprite_MinecartEnd
	dl $8FA731,$8FA837,GFX_Sprite_EndingCutsceneSprites2,GFX_Sprite_EndingCutsceneSprites2End
	dl $8FA837,$8FAE4B,GFX_Sprite_EndingCutsceneSprites3,GFX_Sprite_EndingCutsceneSprites3End
	dl $8FAE4B,$8FB2DC,GFX_Sprite_EndingCutsceneSprites4,GFX_Sprite_EndingCutsceneSprites4End
	dl $8FB2DC,$8FB5BE,GFX_Sprite_TheEnd,GFX_Sprite_TheEndEnd
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedTilemapsPointersStart:
	dl $89D280,$89D4FE,TM_Layer2_TitleScreen,TM_Layer2_TitleScreenEnd
	dl $89D4FE,$89D880,TM_Layer1_PlayerSelectScreen,TM_Layer1_PlayerSelectScreenEnd
	dl $89D880,$89DDC0,TM_Layer2_PlayerSelectScreen,TM_Layer2_PlayerSelectScreenEnd
	dl $89DDC0,$89DEB0,TM_Layer2_MapScreenPath,TM_Layer2_MapScreenPathEnd
	dl $89DEB0,$89E2CD,TM_Layer1_MapScreen,TM_Layer1_MapScreenEnd
	dl $89E2CD,$89E5C9,TM_Layer1_Level1IntroCutscene,TM_Layer1_Level1IntroCutsceneEnd
	dl $89E5C9,$89E8C8,TM_Layer1_Level23And4IntroCutscene,TM_Layer1_Level23And4IntroCutsceneEnd
	dl $89E8C8,$89ED44,TM_Layer1_Leve51IntroCutscene,TM_Layer1_Leve51IntroCutsceneEnd
	dl $89ED44,$89F055,TM_Layer1_TitleScreen,TM_Layer1_TitleScreenEnd
CompressedTilemapsPointersEnd:

;--------------------------------------------------------------------

Map16PointersStart:
	dl $8B8000,$8BE240,M16_Map16,M16_Map16End
Map16PointersEnd:

;--------------------------------------------------------------------

LevelDataPointersStart:
	dl $000001,LVL_Level1Screen00_Ptrs,LVL_Level1Screen00,LVL_Level1Screen00End
	dl $000001,LVL_Level1Screen01_Ptrs,LVL_Level1Screen01,LVL_Level1Screen01End
	dl $000001,LVL_Level1Screen02_Ptrs,LVL_Level1Screen02,LVL_Level1Screen02End
	dl $000001,LVL_Level1Screen03_Ptrs,LVL_Level1Screen03,LVL_Level1Screen03End
	dl $000001,LVL_Level1Screen04_Ptrs,LVL_Level1Screen04,LVL_Level1Screen04End
	dl $000001,LVL_Level1Screen05_Ptrs,LVL_Level1Screen05,LVL_Level1Screen05End
	dl $000001,LVL_Level1Screen06_Ptrs,LVL_Level1Screen06,LVL_Level1Screen06End
	dl $000001,LVL_Level1Screen07_Ptrs,LVL_Level1Screen07,LVL_Level1Screen07End
	dl $000001,LVL_Level1Screen08_Ptrs,LVL_Level1Screen08,LVL_Level1Screen08End
	dl $000001,LVL_Level1Screen09_Ptrs,LVL_Level1Screen09,LVL_Level1Screen09End
	dl $000001,LVL_Level1Screen0A_Ptrs,LVL_Level1Screen0A,LVL_Level1Screen0AEnd
	dl $000001,LVL_Level1Screen0B_Ptrs,LVL_Level1Screen0B,LVL_Level1Screen0BEnd
	dl $000001,LVL_Level1Screen0C_Ptrs,LVL_Level1Screen0C,LVL_Level1Screen0CEnd
	dl $000001,LVL_Level1Screen0D_Ptrs,LVL_Level1Screen0D,LVL_Level1Screen0DEnd
	dl $000001,LVL_Level1Screen0E_Ptrs,LVL_Level1Screen0E,LVL_Level1Screen0EEnd
	dl $000001,LVL_Level1Screen0F_Ptrs,LVL_Level1Screen0F,LVL_Level1Screen0FEnd
	dl $000001,LVL_Level2Screen00_Ptrs,LVL_Level2Screen00,LVL_Level2Screen00End
	dl $000001,LVL_Level2Screen01_Ptrs,LVL_Level2Screen01,LVL_Level2Screen01End
	dl $000001,LVL_Level2Screen02_Ptrs,LVL_Level2Screen02,LVL_Level2Screen02End
	dl $000001,LVL_Level2Screen03_Ptrs,LVL_Level2Screen03,LVL_Level2Screen03End
	dl $000001,LVL_Level2Screen04_Ptrs,LVL_Level2Screen04,LVL_Level2Screen04End
	dl $000001,LVL_Level2Screen05_Ptrs,LVL_Level2Screen05,LVL_Level2Screen05End
	dl $000001,LVL_Level2Screen06_Ptrs,LVL_Level2Screen06,LVL_Level2Screen06End
	dl $000001,LVL_Level2Screen07_Ptrs,LVL_Level2Screen07,LVL_Level2Screen07End
	dl $000001,LVL_Level2Screen08_Ptrs,LVL_Level2Screen08,LVL_Level2Screen08End
	dl $000001,LVL_Level2Screen09_Ptrs,LVL_Level2Screen09,LVL_Level2Screen09End
	dl $000001,LVL_Level2Screen0A_Ptrs,LVL_Level2Screen0A,LVL_Level2Screen0AEnd
	dl $000001,LVL_Level2Screen0B_Ptrs,LVL_Level2Screen0B,LVL_Level2Screen0BEnd
	dl $000001,LVL_Level2Screen0C_Ptrs,LVL_Level2Screen0C,LVL_Level2Screen0CEnd
	dl $000001,LVL_Level2Screen0D_Ptrs,LVL_Level2Screen0D,LVL_Level2Screen0DEnd
	dl $000001,LVL_Level2Screen0E_Ptrs,LVL_Level2Screen0E,LVL_Level2Screen0EEnd
	dl $000001,LVL_Level2Screen0F_Ptrs,LVL_Level2Screen0F,LVL_Level2Screen0FEnd
	dl $000001,LVL_Level3Screen00_Ptrs,LVL_Level3Screen00,LVL_Level3Screen00End
	dl $000001,LVL_Level3Screen01_Ptrs,LVL_Level3Screen01,LVL_Level3Screen01End
	dl $000001,LVL_Level3Screen02_Ptrs,LVL_Level3Screen02,LVL_Level3Screen02End
	dl $000001,LVL_Level3Screen03_Ptrs,LVL_Level3Screen03,LVL_Level3Screen03End
	dl $000001,LVL_Level3Screen04_Ptrs,LVL_Level3Screen04,LVL_Level3Screen04End
	dl $000001,LVL_Level3Screen05_Ptrs,LVL_Level3Screen05,LVL_Level3Screen05End
	dl $000001,LVL_Level3Screen06_Ptrs,LVL_Level3Screen06,LVL_Level3Screen06End
	dl $000001,LVL_Level3Screen07_Ptrs,LVL_Level3Screen07,LVL_Level3Screen07End
	dl $000001,LVL_Level3Screen08_Ptrs,LVL_Level3Screen08,LVL_Level3Screen08End
	dl $000001,LVL_Level3Screen09_Ptrs,LVL_Level3Screen09,LVL_Level3Screen09End
	dl $000001,LVL_Level3Screen0A_Ptrs,LVL_Level3Screen0A,LVL_Level3Screen0AEnd
	dl $000001,LVL_Level3Screen0B_Ptrs,LVL_Level3Screen0B,LVL_Level3Screen0BEnd
	dl $000001,LVL_Level3Screen0C_Ptrs,LVL_Level3Screen0C,LVL_Level3Screen0CEnd
	dl $000001,LVL_Level3Screen0D_Ptrs,LVL_Level3Screen0D,LVL_Level3Screen0DEnd
	dl $000001,LVL_Level3Screen0E_Ptrs,LVL_Level3Screen0E,LVL_Level3Screen0EEnd
	dl $000001,LVL_Level3Screen0F_Ptrs,LVL_Level3Screen0F,LVL_Level3Screen0FEnd
	dl $000001,LVL_Level3Screen10_Ptrs,LVL_Level3Screen10,LVL_Level3Screen10End
	dl $000001,LVL_Level3Screen11_Ptrs,LVL_Level3Screen11,LVL_Level3Screen11End
	dl $000001,LVL_Level3Screen12_Ptrs,LVL_Level3Screen12,LVL_Level3Screen12End
	dl $000001,LVL_Level3Screen13_Ptrs,LVL_Level3Screen13,LVL_Level3Screen13End
	dl $000001,LVL_Level3Screen14_Ptrs,LVL_Level3Screen14,LVL_Level3Screen14End
	dl $000001,LVL_Level3Screen15_Ptrs,LVL_Level3Screen15,LVL_Level3Screen15End
	dl $000001,LVL_Level3Screen16_Ptrs,LVL_Level3Screen16,LVL_Level3Screen16End
	dl $000001,LVL_Level3Screen17_Ptrs,LVL_Level3Screen17,LVL_Level3Screen17End
	dl $000001,LVL_Level3Screen18_Ptrs,LVL_Level3Screen18,LVL_Level3Screen18End
	dl $000001,LVL_Level3Screen19_Ptrs,LVL_Level3Screen19,LVL_Level3Screen19End
	dl $000001,LVL_Level4Screen00_Ptrs,LVL_Level4Screen00,LVL_Level4Screen00End
	dl $000001,LVL_Level4Screen01_Ptrs,LVL_Level4Screen01,LVL_Level4Screen01End
	dl $000001,LVL_Level4Screen02_Ptrs,LVL_Level4Screen02,LVL_Level4Screen02End
	dl $000001,LVL_Level4Screen03_Ptrs,LVL_Level4Screen03,LVL_Level4Screen03End
	dl $000001,LVL_Level4Screen04_Ptrs,LVL_Level4Screen04,LVL_Level4Screen04End
	dl $000001,LVL_Level4Screen05_Ptrs,LVL_Level4Screen05,LVL_Level4Screen05End
	dl $000001,LVL_Level4Screen06_Ptrs,LVL_Level4Screen06,LVL_Level4Screen06End
	dl $000001,LVL_Level4Screen07_Ptrs,LVL_Level4Screen07,LVL_Level4Screen07End
	dl $000001,LVL_Level4Screen08_Ptrs,LVL_Level4Screen08,LVL_Level4Screen08End
	dl $000001,LVL_Level4Screen09_Ptrs,LVL_Level4Screen09,LVL_Level4Screen09End
	dl $000001,LVL_Level4Screen0A_Ptrs,LVL_Level4Screen0A,LVL_Level4Screen0AEnd
	dl $000001,LVL_Level4Screen0B_Ptrs,LVL_Level4Screen0B,LVL_Level4Screen0BEnd
	dl $000001,LVL_Level4Screen0C_Ptrs,LVL_Level4Screen0C,LVL_Level4Screen0CEnd
	dl $000001,LVL_Level4Screen0D_Ptrs,LVL_Level4Screen0D,LVL_Level4Screen0DEnd
	dl $000001,LVL_Level4Screen0E_Ptrs,LVL_Level4Screen0E,LVL_Level4Screen0EEnd
	dl $000001,LVL_Level4Screen0F_Ptrs,LVL_Level4Screen0F,LVL_Level4Screen0FEnd
	dl $000001,LVL_Level4Screen10_Ptrs,LVL_Level4Screen10,LVL_Level4Screen10End
	dl $000001,LVL_Level4Screen11_Ptrs,LVL_Level4Screen11,LVL_Level4Screen11End
	dl $000001,LVL_Level4Screen12_Ptrs,LVL_Level4Screen12,LVL_Level4Screen12End
	dl $000001,LVL_Level4Screen13_Ptrs,LVL_Level4Screen13,LVL_Level4Screen13End
	dl $000001,LVL_Level4Screen14_Ptrs,LVL_Level4Screen14,LVL_Level4Screen14End
	dl $000001,LVL_Level4Screen15_Ptrs,LVL_Level4Screen15,LVL_Level4Screen15End
	dl $000001,LVL_Level4Screen16_Ptrs,LVL_Level4Screen16,LVL_Level4Screen16End
	dl $000001,LVL_Level4Screen17_Ptrs,LVL_Level4Screen17,LVL_Level4Screen17End
	dl $000001,LVL_Level4Screen18_Ptrs,LVL_Level4Screen18,LVL_Level4Screen18End
	dl $000001,LVL_Level4Screen19_Ptrs,LVL_Level4Screen19,LVL_Level4Screen19End
	dl $000001,LVL_Level4Screen1A_Ptrs,LVL_Level4Screen1A,LVL_Level4Screen1AEnd
	dl $000001,LVL_Level4Screen1B_Ptrs,LVL_Level4Screen1B,LVL_Level4Screen1BEnd
	dl $000001,LVL_Level4Screen1C_Ptrs,LVL_Level4Screen1C,LVL_Level4Screen1CEnd
	dl $000001,LVL_Level4Screen1D_Ptrs,LVL_Level4Screen1D,LVL_Level4Screen1DEnd
	dl $000001,LVL_Level5Screen00_Ptrs,LVL_Level5Screen00,LVL_Level5Screen00End
	dl $000001,LVL_Level5Screen01_Ptrs,LVL_Level5Screen01,LVL_Level5Screen01End
	dl $000001,LVL_Level5Screen02_Ptrs,LVL_Level5Screen02,LVL_Level5Screen02End
	dl $000001,LVL_Level5Screen03_Ptrs,LVL_Level5Screen03,LVL_Level5Screen03End
	dl $000001,LVL_Level5Screen04_Ptrs,LVL_Level5Screen04,LVL_Level5Screen04End
	dl $000001,LVL_Level5Screen05_Ptrs,LVL_Level5Screen05,LVL_Level5Screen05End
	dl $000001,LVL_Level5Screen06_Ptrs,LVL_Level5Screen06,LVL_Level5Screen06End
	dl $000001,LVL_Level5Screen07_Ptrs,LVL_Level5Screen07,LVL_Level5Screen07End
	dl $000001,LVL_Level5Screen08_Ptrs,LVL_Level5Screen08,LVL_Level5Screen08End
	dl $000001,LVL_Level5Screen09_Ptrs,LVL_Level5Screen09,LVL_Level5Screen09End
	dl $000001,LVL_Level5Screen0A_Ptrs,LVL_Level5Screen0A,LVL_Level5Screen0AEnd
	dl $000001,LVL_Level5Screen0B_Ptrs,LVL_Level5Screen0B,LVL_Level5Screen0BEnd
	dl $000001,LVL_Level5Screen0C_Ptrs,LVL_Level5Screen0C,LVL_Level5Screen0CEnd
	dl $000001,LVL_Level5Screen0D_Ptrs,LVL_Level5Screen0D,LVL_Level5Screen0DEnd
	dl $000001,LVL_Level5Screen0E_Ptrs,LVL_Level5Screen0E,LVL_Level5Screen0EEnd
	dl $000001,LVL_Level5Screen0F_Ptrs,LVL_Level5Screen0F,LVL_Level5Screen0FEnd
	dl $000001,LVL_Level5Screen10_Ptrs,LVL_Level5Screen10,LVL_Level5Screen10End
	dl $000001,LVL_Level5Screen11_Ptrs,LVL_Level5Screen11,LVL_Level5Screen11End
	dl $000001,LVL_Level5Screen12_Ptrs,LVL_Level5Screen12,LVL_Level5Screen12End
	dl $000001,LVL_Level5Screen13_Ptrs,LVL_Level5Screen13,LVL_Level5Screen13End
	dl $000001,LVL_Level5Screen14_Ptrs,LVL_Level5Screen14,LVL_Level5Screen14End
	dl $000001,LVL_Level5Screen15_Ptrs,LVL_Level5Screen15,LVL_Level5Screen15End
	dl $000001,LVL_Level5Screen16_Ptrs,LVL_Level5Screen16,LVL_Level5Screen16End
	dl $000001,LVL_Level5Screen17_Ptrs,LVL_Level5Screen17,LVL_Level5Screen17End
	dl $000001,LVL_Level5Screen18_Ptrs,LVL_Level5Screen18,LVL_Level5Screen18End
	dl $000001,LVL_Level5Screen19_Ptrs,LVL_Level5Screen19,LVL_Level5Screen19End
LevelDataPointersEnd:

LVL_Level1Screen00_Ptrs:
	db $06 : dw $0000
	dl $898200,$898240					; Layer 1 (Low byte) data
	dl $89B800,$89B820					; Layer 1 (High byte) data
	dl $898000,$898040					; Layer 2 (Low byte) data
	dl $89B700,$89B720					; Layer 2 (High byte) data
	dl $80E849,$80E84F					; Normal Sprite data
	dl $80EF53,$80EF58					; Item Sprite Data

LVL_Level1Screen01_Ptrs:
	db $06 : dw $0000
	dl $898240,$898280					; Layer 1 (Low byte) data
	dl $89B820,$89B840					; Layer 1 (High byte) data
	dl $898040,$898080					; Layer 2 (Low byte) data
	dl $89B720,$89B740					; Layer 2 (High byte) data
	dl $80E84F,$80E855					; Normal Sprite data
	dl $80EF58,$80EF71					; Item Sprite Data

LVL_Level1Screen02_Ptrs:
	db $06 : dw $0000
	dl $898280,$8982C0					; Layer 1 (Low byte) data
	dl $89B840,$89B860					; Layer 1 (High byte) data
	dl $898080,$8980C0					; Layer 2 (Low byte) data
	dl $89B740,$89B760					; Layer 2 (High byte) data
	dl $80E855,$80E860					; Normal Sprite data
	dl $80EF71,$80EF76					; Item Sprite Data

LVL_Level1Screen03_Ptrs:
	db $06 : dw $0000
	dl $8982C0,$898300					; Layer 1 (Low byte) data
	dl $89B860,$89B880					; Layer 1 (High byte) data
	dl $8980C0,$898100					; Layer 2 (Low byte) data
	dl $89B760,$89B780					; Layer 2 (High byte) data
	dl $80E860,$80E870					; Normal Sprite data
	dl $80EF76,$80EF7B					; Item Sprite Data

LVL_Level1Screen04_Ptrs:
	db $06 : dw $0000
	dl $898300,$898340					; Layer 1 (Low byte) data
	dl $89B880,$89B8A0					; Layer 1 (High byte) data
	dl $898100,$898140					; Layer 2 (Low byte) data
	dl $89B780,$89B7A0					; Layer 2 (High byte) data
	dl $80E870,$80E88A					; Normal Sprite data
	dl $80EF7B,$80EF88					; Item Sprite Data

LVL_Level1Screen05_Ptrs:
	db $06 : dw $0000
	dl $898340,$898380					; Layer 1 (Low byte) data
	dl $89B8A0,$89B8C0					; Layer 1 (High byte) data
	dl $898140,$898180					; Layer 2 (Low byte) data
	dl $89B7A0,$89B7C0					; Layer 2 (High byte) data
	dl $80E88A,$80E8A9					; Normal Sprite data
	dl $80EF88,$80EF91					; Item Sprite Data

LVL_Level1Screen06_Ptrs:
	db $06 : dw $0000
	dl $898380,$8983C0					; Layer 1 (Low byte) data
	dl $89B8C0,$89B8E0					; Layer 1 (High byte) data
	dl $898180,$8981C0					; Layer 2 (Low byte) data
	dl $89B7C0,$89B7E0					; Layer 2 (High byte) data
	dl $80E8A9,$80E8AF					; Normal Sprite data
	dl $80EF91,$80EF9E					; Item Sprite Data

LVL_Level1Screen07_Ptrs:
	db $06 : dw $0000
	dl $8983C0,$898400					; Layer 1 (Low byte) data
	dl $89B8E0,$89B900					; Layer 1 (High byte) data
	dl $8981C0,$898200					; Layer 2 (Low byte) data
	dl $89B7E0,$89B800					; Layer 2 (High byte) data
	dl $80E8AF,$80E8BA					; Normal Sprite data
	dl $80EF9E,$80EFA7					; Item Sprite Data

LVL_Level1Screen08_Ptrs:
	db $06 : dw $0000
	dl $898600,$898640					; Layer 1 (Low byte) data
	dl $89BA00,$89BA20					; Layer 1 (High byte) data
	dl $898400,$898440					; Layer 2 (Low byte) data
	dl $89B900,$89B920					; Layer 2 (High byte) data
	dl $80E8BA,$80E8CA					; Normal Sprite data
	dl $80EFA7,$80EFAC					; Item Sprite Data

LVL_Level1Screen09_Ptrs:
	db $06 : dw $0000
	dl $898640,$898680					; Layer 1 (Low byte) data
	dl $89BA20,$89BA40					; Layer 1 (High byte) data
	dl $898440,$898480					; Layer 2 (Low byte) data
	dl $89B920,$89B940					; Layer 2 (High byte) data
	dl $80E8CA,$80E8DA					; Normal Sprite data
	dl $80EFAC,$80EFB5					; Item Sprite Data

LVL_Level1Screen0A_Ptrs:
	db $06 : dw $0000
	dl $898680,$8986C0					; Layer 1 (Low byte) data
	dl $89BA40,$89BA60					; Layer 1 (High byte) data
	dl $898480,$8984C0					; Layer 2 (Low byte) data
	dl $89B940,$89B960					; Layer 2 (High byte) data
	dl $80E8DA,$80E8EF					; Normal Sprite data
	dl $80EFB5,$80EFC2					; Item Sprite Data

LVL_Level1Screen0B_Ptrs:
	db $06 : dw $0000
	dl $8986C0,$898700					; Layer 1 (Low byte) data
	dl $89BA60,$89BA80					; Layer 1 (High byte) data
	dl $8984C0,$898500					; Layer 2 (Low byte) data
	dl $89B960,$89B980					; Layer 2 (High byte) data
	dl $80E8EF,$80E8F0					; Normal Sprite data
	dl $80EFC2,$80EFCB					; Item Sprite Data

LVL_Level1Screen0C_Ptrs:
	db $06 : dw $0000
	dl $898700,$898740					; Layer 1 (Low byte) data
	dl $89BA80,$89BAA0					; Layer 1 (High byte) data
	dl $898500,$898540					; Layer 2 (Low byte) data
	dl $89B980,$89B9A0					; Layer 2 (High byte) data
	dl $80E8F0,$80E905					; Normal Sprite data
	dl $80EFCB,$80EFDC					; Item Sprite Data

LVL_Level1Screen0D_Ptrs:
	db $06 : dw $0000
	dl $898740,$898780					; Layer 1 (Low byte) data
	dl $89BAA0,$89BAC0					; Layer 1 (High byte) data
	dl $898540,$898580					; Layer 2 (Low byte) data
	dl $89B9A0,$89B9C0					; Layer 2 (High byte) data
	dl $80E905,$80E906					; Normal Sprite data
	dl $80EFDC,$80EFE5					; Item Sprite Data

LVL_Level1Screen0E_Ptrs:
	db $06 : dw $0000
	dl $898780,$8987C0					; Layer 1 (Low byte) data
	dl $89BAC0,$89BAE0					; Layer 1 (High byte) data
	dl $898580,$8985C0					; Layer 2 (Low byte) data
	dl $89B9C0,$89B9E0					; Layer 2 (High byte) data
	dl $80E906,$80E91B					; Normal Sprite data
	dl $80EFE5,$80EFE6					; Item Sprite Data

LVL_Level1Screen0F_Ptrs:
	db $06 : dw $0000
	dl $8987C0,$898800					; Layer 1 (Low byte) data
	dl $89BAE0,$89BB00					; Layer 1 (High byte) data
	dl $8985C0,$898600					; Layer 2 (Low byte) data
	dl $89B9E0,$89BA00					; Layer 2 (High byte) data
	dl $80E91B,$80E92B					; Normal Sprite data
	dl $80EFE6,$80EFFF					; Item Sprite Data

LVL_Level2Screen00_Ptrs:
	db $06 : dw $0000
	dl $898A00,$898A40					; Layer 1 (Low byte) data
	dl $89BC00,$89BC20					; Layer 1 (High byte) data
	dl $898800,$898840					; Layer 2 (Low byte) data
	dl $89BB00,$89BB20					; Layer 2 (High byte) data
	dl $80E92B,$80E936					; Normal Sprite data
	dl $80EFFF,$80F000					; Item Sprite Data

LVL_Level2Screen01_Ptrs:
	db $06 : dw $0000
	dl $898A40,$898A80					; Layer 1 (Low byte) data
	dl $89BC20,$89BC40					; Layer 1 (High byte) data
	dl $898840,$898880					; Layer 2 (Low byte) data
	dl $89BB20,$89BB40					; Layer 2 (High byte) data
	dl $80E936,$80E93C					; Normal Sprite data
	dl $80F000,$80F001					; Item Sprite Data

LVL_Level2Screen02_Ptrs:
	db $06 : dw $0000
	dl $898A80,$898AC0					; Layer 1 (Low byte) data
	dl $89BC40,$89BC60					; Layer 1 (High byte) data
	dl $898880,$8988C0					; Layer 2 (Low byte) data
	dl $89BB40,$89BB60					; Layer 2 (High byte) data
	dl $80E93C,$80E93D					; Normal Sprite data
	dl $80F001,$80F012					; Item Sprite Data

LVL_Level2Screen03_Ptrs:
	db $06 : dw $0000
	dl $898AC0,$898B00					; Layer 1 (Low byte) data
	dl $89BC60,$89BC80					; Layer 1 (High byte) data
	dl $8988C0,$898900					; Layer 2 (Low byte) data
	dl $89BB60,$89BB80					; Layer 2 (High byte) data
	dl $80E93D,$80E957					; Normal Sprite data
	dl $80F012,$80F017					; Item Sprite Data

LVL_Level2Screen04_Ptrs:
	db $06 : dw $0000
	dl $898B00,$898B40					; Layer 1 (Low byte) data
	dl $89BC80,$89BCA0					; Layer 1 (High byte) data
	dl $898900,$898940					; Layer 2 (Low byte) data
	dl $89BB80,$89BBA0					; Layer 2 (High byte) data
	dl $80E957,$80E967					; Normal Sprite data
	dl $80F017,$80F020					; Item Sprite Data

LVL_Level2Screen05_Ptrs:
	db $06 : dw $0000
	dl $898B40,$898B80					; Layer 1 (Low byte) data
	dl $89BCA0,$89BCC0					; Layer 1 (High byte) data
	dl $898940,$898980					; Layer 2 (Low byte) data
	dl $89BBA0,$89BBC0					; Layer 2 (High byte) data
	dl $80E967,$80E981					; Normal Sprite data
	dl $80F020,$80F021					; Item Sprite Data

LVL_Level2Screen06_Ptrs:
	db $06 : dw $0000
	dl $898B80,$898BC0					; Layer 1 (Low byte) data
	dl $89BCC0,$89BCE0					; Layer 1 (High byte) data
	dl $898980,$8989C0					; Layer 2 (Low byte) data
	dl $89BBC0,$89BBE0					; Layer 2 (High byte) data
	dl $80E981,$80E996					; Normal Sprite data
	dl $80F021,$80F026					; Item Sprite Data

LVL_Level2Screen07_Ptrs:
	db $06 : dw $0000
	dl $898BC0,$898C00					; Layer 1 (Low byte) data
	dl $89BCE0,$89BD00					; Layer 1 (High byte) data
	dl $8989C0,$898A00					; Layer 2 (Low byte) data
	dl $89BBE0,$89BC00					; Layer 2 (High byte) data
	dl $80E996,$80E99C					; Normal Sprite data
	dl $80F026,$80F033					; Item Sprite Data

LVL_Level2Screen08_Ptrs:
	db $06 : dw $0000
	dl $898E00,$898E40					; Layer 1 (Low byte) data
	dl $89BE00,$89BE20					; Layer 1 (High byte) data
	dl $898C00,$898C40					; Layer 2 (Low byte) data
	dl $89BD00,$89BD20					; Layer 2 (High byte) data
	dl $80E99C,$80E9A7					; Normal Sprite data
	dl $80F033,$80F03C					; Item Sprite Data

LVL_Level2Screen09_Ptrs:
	db $06 : dw $0000
	dl $898E40,$898E80					; Layer 1 (Low byte) data
	dl $89BE20,$89BE40					; Layer 1 (High byte) data
	dl $898C40,$898C80					; Layer 2 (Low byte) data
	dl $89BD20,$89BD40					; Layer 2 (High byte) data
	dl $80E9A7,$80E9B2					; Normal Sprite data
	dl $80F03C,$80F041					; Item Sprite Data

LVL_Level2Screen0A_Ptrs:
	db $06 : dw $0000
	dl $898E80,$898EC0					; Layer 1 (Low byte) data
	dl $89BE40,$89BE60					; Layer 1 (High byte) data
	dl $898C80,$898CC0					; Layer 2 (Low byte) data
	dl $89BD40,$89BD60					; Layer 2 (High byte) data
	dl $80E9B2,$80E9C7					; Normal Sprite data
	dl $80F041,$80F042					; Item Sprite Data

LVL_Level2Screen0B_Ptrs:
	db $06 : dw $0000
	dl $898EC0,$898F00					; Layer 1 (Low byte) data
	dl $89BE60,$89BE80					; Layer 1 (High byte) data
	dl $898CC0,$898D00					; Layer 2 (Low byte) data
	dl $89BD60,$89BD80					; Layer 2 (High byte) data
	dl $80E9C7,$80E9DC					; Normal Sprite data
	dl $80F042,$80F047					; Item Sprite Data

LVL_Level2Screen0C_Ptrs:
	db $06 : dw $0000
	dl $898F00,$898F40					; Layer 1 (Low byte) data
	dl $89BE80,$89BEA0					; Layer 1 (High byte) data
	dl $898D00,$898D40					; Layer 2 (Low byte) data
	dl $89BD80,$89BDA0					; Layer 2 (High byte) data
	dl $80E9DC,$80E9E7					; Normal Sprite data
	dl $80F047,$80F054					; Item Sprite Data

LVL_Level2Screen0D_Ptrs:
	db $06 : dw $0000
	dl $898F40,$898F80					; Layer 1 (Low byte) data
	dl $89BEA0,$89BEC0					; Layer 1 (High byte) data
	dl $898D40,$898D80					; Layer 2 (Low byte) data
	dl $89BDA0,$89BDC0					; Layer 2 (High byte) data
	dl $80E9E7,$80E9ED					; Normal Sprite data
	dl $80F054,$80F05D					; Item Sprite Data

LVL_Level2Screen0E_Ptrs:
	db $06 : dw $0000
	dl $898F80,$898FC0					; Layer 1 (Low byte) data
	dl $89BEC0,$89BEE0					; Layer 1 (High byte) data
	dl $898D80,$898DC0					; Layer 2 (Low byte) data
	dl $89BDC0,$89BDE0					; Layer 2 (High byte) data
	dl $80E9ED,$80E9F8					; Normal Sprite data
	dl $80F05D,$80F06A					; Item Sprite Data

LVL_Level2Screen0F_Ptrs:
	db $06 : dw $0000
	dl $898FC0,$899000					; Layer 1 (Low byte) data
	dl $89BEE0,$89BF00					; Layer 1 (High byte) data
	dl $898DC0,$898E00					; Layer 2 (Low byte) data
	dl $89BDE0,$89BE00					; Layer 2 (High byte) data
	dl $80E9F8,$80EA08					; Normal Sprite data
	dl $80F06A,$80F06B					; Item Sprite Data

LVL_Level3Screen00_Ptrs:
	db $06 : dw $0000
	dl $899200,$899240					; Layer 1 (Low byte) data
	dl $89C000,$89C020					; Layer 1 (High byte) data
	dl $899000,$899040					; Layer 2 (Low byte) data
	dl $89BF00,$89BF20					; Layer 2 (High byte) data
	dl $80EA08,$80EA13					; Normal Sprite data
	dl $80F06B,$80F06C					; Item Sprite Data

LVL_Level3Screen01_Ptrs:
	db $06 : dw $0000
	dl $899240,$899280					; Layer 1 (Low byte) data
	dl $89C020,$89C040					; Layer 1 (High byte) data
	dl $899040,$899080					; Layer 2 (Low byte) data
	dl $89BF20,$89BF40					; Layer 2 (High byte) data
	dl $80EA13,$80EA19					; Normal Sprite data
	dl $80F06C,$80F071					; Item Sprite Data

LVL_Level3Screen02_Ptrs:
	db $06 : dw $0000
	dl $899280,$8992C0					; Layer 1 (Low byte) data
	dl $89C040,$89C060					; Layer 1 (High byte) data
	dl $899080,$8990C0					; Layer 2 (Low byte) data
	dl $89BF40,$89BF60					; Layer 2 (High byte) data
	dl $80EA19,$80EA3D					; Normal Sprite data
	dl $80F071,$80F076					; Item Sprite Data

LVL_Level3Screen03_Ptrs:
	db $06 : dw $0000
	dl $8992C0,$899300					; Layer 1 (Low byte) data
	dl $89C060,$89C080					; Layer 1 (High byte) data
	dl $8990C0,$899100					; Layer 2 (Low byte) data
	dl $89BF60,$89BF80					; Layer 2 (High byte) data
	dl $80EA3D,$80EA48					; Normal Sprite data
	dl $80F076,$80F07B					; Item Sprite Data

LVL_Level3Screen04_Ptrs:
	db $06 : dw $0000
	dl $899300,$899340					; Layer 1 (Low byte) data
	dl $89C080,$89C0A0					; Layer 1 (High byte) data
	dl $899100,$899140					; Layer 2 (Low byte) data
	dl $89BF80,$89BFA0					; Layer 2 (High byte) data
	dl $80EA48,$80EA49					; Normal Sprite data
	dl $80F07B,$80F08C					; Item Sprite Data

LVL_Level3Screen05_Ptrs:
	db $06 : dw $0000
	dl $899340,$899380					; Layer 1 (Low byte) data
	dl $89C0A0,$89C0C0					; Layer 1 (High byte) data
	dl $899140,$899180					; Layer 2 (Low byte) data
	dl $89BFA0,$89BFC0					; Layer 2 (High byte) data
	dl $80EA49,$80EA5E					; Normal Sprite data
	dl $80F08C,$80F08D					; Item Sprite Data

LVL_Level3Screen06_Ptrs:
	db $06 : dw $0000
	dl $899380,$8993C0					; Layer 1 (Low byte) data
	dl $89C0C0,$89C0E0					; Layer 1 (High byte) data
	dl $899180,$8991C0					; Layer 2 (Low byte) data
	dl $89BFC0,$89BFE0					; Layer 2 (High byte) data
	dl $80EA5E,$80EA6E					; Normal Sprite data
	dl $80F08D,$80F09A					; Item Sprite Data

LVL_Level3Screen07_Ptrs:
	db $06 : dw $0000
	dl $8993C0,$899400					; Layer 1 (Low byte) data
	dl $89C0E0,$89C100					; Layer 1 (High byte) data
	dl $8991C0,$899200					; Layer 2 (Low byte) data
	dl $89BFE0,$89C000					; Layer 2 (High byte) data
	dl $80EA6E,$80EA6F					; Normal Sprite data
	dl $80F09A,$80F09F					; Item Sprite Data

LVL_Level3Screen08_Ptrs:
	db $06 : dw $0000
	dl $899600,$899640					; Layer 1 (Low byte) data
	dl $89C200,$89C220					; Layer 1 (High byte) data
	dl $899400,$899440					; Layer 2 (Low byte) data
	dl $89C100,$89C120					; Layer 2 (High byte) data
	dl $80EA6F,$80EA7A					; Normal Sprite data
	dl $80F09F,$80F0B8					; Item Sprite Data

LVL_Level3Screen09_Ptrs:
	db $06 : dw $0000
	dl $899640,$899680					; Layer 1 (Low byte) data
	dl $89C220,$89C240					; Layer 1 (High byte) data
	dl $899440,$899480					; Layer 2 (Low byte) data
	dl $89C120,$89C140					; Layer 2 (High byte) data
	dl $80EA7A,$80EA8F					; Normal Sprite data
	dl $80F0B8,$80F0B9					; Item Sprite Data

LVL_Level3Screen0A_Ptrs:
	db $06 : dw $0000
	dl $899680,$8996C0					; Layer 1 (Low byte) data
	dl $89C240,$89C260					; Layer 1 (High byte) data
	dl $899480,$8994C0					; Layer 2 (Low byte) data
	dl $89C140,$89C160					; Layer 2 (High byte) data
	dl $80EA8F,$80EAA4					; Normal Sprite data
	dl $80F0B9,$80F0C6					; Item Sprite Data

LVL_Level3Screen0B_Ptrs:
	db $06 : dw $0000
	dl $8996C0,$899700					; Layer 1 (Low byte) data
	dl $89C260,$89C280					; Layer 1 (High byte) data
	dl $8994C0,$899500					; Layer 2 (Low byte) data
	dl $89C160,$89C180					; Layer 2 (High byte) data
	dl $80EAA4,$80EAAA					; Normal Sprite data
	dl $80F0C6,$80F0CB					; Item Sprite Data

LVL_Level3Screen0C_Ptrs:
	db $06 : dw $0000
	dl $899700,$899740					; Layer 1 (Low byte) data
	dl $89C280,$89C2A0					; Layer 1 (High byte) data
	dl $899500,$899540					; Layer 2 (Low byte) data
	dl $89C180,$89C1A0					; Layer 2 (High byte) data
	dl $80EAAA,$80EABF					; Normal Sprite data
	dl $80F0CB,$80F0D0					; Item Sprite Data

LVL_Level3Screen0D_Ptrs:
	db $06 : dw $0000
	dl $899740,$899780					; Layer 1 (Low byte) data
	dl $89C2A0,$89C2C0					; Layer 1 (High byte) data
	dl $899540,$899580					; Layer 2 (Low byte) data
	dl $89C1A0,$89C1C0					; Layer 2 (High byte) data
	dl $80EABF,$80EAC5					; Normal Sprite data
	dl $80F0D0,$80F0D5					; Item Sprite Data

LVL_Level3Screen0E_Ptrs:
	db $06 : dw $0000
	dl $899780,$8997C0					; Layer 1 (Low byte) data
	dl $89C2C0,$89C2E0					; Layer 1 (High byte) data
	dl $899580,$8995C0					; Layer 2 (Low byte) data
	dl $89C1C0,$89C1E0					; Layer 2 (High byte) data
	dl $80EAC5,$80EAEE					; Normal Sprite data
	dl $80F0D5,$80F0DA					; Item Sprite Data

LVL_Level3Screen0F_Ptrs:
	db $06 : dw $0000
	dl $8997C0,$899800					; Layer 1 (Low byte) data
	dl $89C2E0,$89C300					; Layer 1 (High byte) data
	dl $8995C0,$899600					; Layer 2 (Low byte) data
	dl $89C1E0,$89C200					; Layer 2 (High byte) data
	dl $80EAEE,$80EAF4					; Normal Sprite data
	dl $80F0DA,$80F0DF					; Item Sprite Data

LVL_Level3Screen10_Ptrs:
	db $06 : dw $0000
	dl $899A00,$899A40					; Layer 1 (Low byte) data
	dl $89C400,$89C420					; Layer 1 (High byte) data
	dl $899800,$899840					; Layer 2 (Low byte) data
	dl $89C300,$89C320					; Layer 2 (High byte) data
	dl $80EAF4,$80EB2C					; Normal Sprite data
	dl $80F0DF,$80F0E4					; Item Sprite Data

LVL_Level3Screen11_Ptrs:
	db $06 : dw $0000
	dl $899A40,$899A80					; Layer 1 (Low byte) data
	dl $89C420,$89C440					; Layer 1 (High byte) data
	dl $899840,$899880					; Layer 2 (Low byte) data
	dl $89C320,$89C340					; Layer 2 (High byte) data
	dl $80EB2C,$80EB3C					; Normal Sprite data
	dl $80F0E4,$80F0E9					; Item Sprite Data

LVL_Level3Screen12_Ptrs:
	db $06 : dw $0000
	dl $899A80,$899AC0					; Layer 1 (Low byte) data
	dl $89C440,$89C460					; Layer 1 (High byte) data
	dl $899880,$8998C0					; Layer 2 (Low byte) data
	dl $89C340,$89C360					; Layer 2 (High byte) data
	dl $80EB3C,$80EB60					; Normal Sprite data
	dl $80F0E9,$80F0EA					; Item Sprite Data

LVL_Level3Screen13_Ptrs:
	db $06 : dw $0000
	dl $899AC0,$899B00					; Layer 1 (Low byte) data
	dl $89C460,$89C480					; Layer 1 (High byte) data
	dl $8998C0,$899900					; Layer 2 (Low byte) data
	dl $89C360,$89C380					; Layer 2 (High byte) data
	dl $80EB60,$80EB70					; Normal Sprite data
	dl $80F0EA,$80F0F3					; Item Sprite Data

LVL_Level3Screen14_Ptrs:
	db $06 : dw $0000
	dl $899B00,$899B40					; Layer 1 (Low byte) data
	dl $89C480,$89C4A0					; Layer 1 (High byte) data
	dl $899900,$899940					; Layer 2 (Low byte) data
	dl $89C380,$89C3A0					; Layer 2 (High byte) data
	dl $80EB70,$80EB7B					; Normal Sprite data
	dl $80F0F3,$80F0F8					; Item Sprite Data

LVL_Level3Screen15_Ptrs:
	db $06 : dw $0000
	dl $899B40,$899B80					; Layer 1 (Low byte) data
	dl $89C4A0,$89C4C0					; Layer 1 (High byte) data
	dl $899940,$899980					; Layer 2 (Low byte) data
	dl $89C3A0,$89C3C0					; Layer 2 (High byte) data
	dl $80EB7B,$80EB8B					; Normal Sprite data
	dl $80F0F8,$80F105					; Item Sprite Data

LVL_Level3Screen16_Ptrs:
	db $06 : dw $0000
	dl $899B80,$899BC0					; Layer 1 (Low byte) data
	dl $89C4C0,$89C4E0					; Layer 1 (High byte) data
	dl $899980,$8999C0					; Layer 2 (Low byte) data
	dl $89C3C0,$89C3E0					; Layer 2 (High byte) data
	dl $80EB8B,$80EB96					; Normal Sprite data
	dl $80F105,$80F106					; Item Sprite Data

LVL_Level3Screen17_Ptrs:
	db $06 : dw $0000
	dl $899BC0,$899C00					; Layer 1 (Low byte) data
	dl $89C4E0,$89C500					; Layer 1 (High byte) data
	dl $8999C0,$899A00					; Layer 2 (Low byte) data
	dl $89C3E0,$89C400					; Layer 2 (High byte) data
	dl $80EB96,$80EBA6					; Normal Sprite data
	dl $80F106,$80F10B					; Item Sprite Data

LVL_Level3Screen18_Ptrs:
	db $06 : dw $0000
	dl $899C80,$899CC0					; Layer 1 (Low byte) data
	dl $89C540,$89C560					; Layer 1 (High byte) data
	dl $899C00,$899C40					; Layer 2 (Low byte) data
	dl $89C500,$89C520					; Layer 2 (High byte) data
	dl $80EBA6,$80EBB1					; Normal Sprite data
	dl $80F10B,$80F110					; Item Sprite Data

LVL_Level3Screen19_Ptrs:
	db $06 : dw $0000
	dl $899CC0,$899D00					; Layer 1 (Low byte) data
	dl $89C560,$89C580					; Layer 1 (High byte) data
	dl $899C40,$899C80					; Layer 2 (Low byte) data
	dl $89C520,$89C540					; Layer 2 (High byte) data
	dl $80EBB1,$80EBBC					; Normal Sprite data
	dl $80F110,$80F111					; Item Sprite Data

LVL_Level4Screen00_Ptrs:
	db $06 : dw $0000
	dl $899F00,$899F40					; Layer 1 (Low byte) data
	dl $89C680,$89C6A0					; Layer 1 (High byte) data
	dl $899D00,$899D40					; Layer 2 (Low byte) data
	dl $89C580,$89C5A0					; Layer 2 (High byte) data
	dl $80EBBC,$80EBC7					; Normal Sprite data
	dl $80F111,$80F116					; Item Sprite Data

LVL_Level4Screen01_Ptrs:
	db $06 : dw $0000
	dl $899F40,$899F80					; Layer 1 (Low byte) data
	dl $89C6A0,$89C6C0					; Layer 1 (High byte) data
	dl $899D40,$899D80					; Layer 2 (Low byte) data
	dl $89C5A0,$89C5C0					; Layer 2 (High byte) data
	dl $80EBC7,$80EBC8					; Normal Sprite data
	dl $80F116,$80F11F					; Item Sprite Data

LVL_Level4Screen02_Ptrs:
	db $06 : dw $0000
	dl $899F80,$899FC0					; Layer 1 (Low byte) data
	dl $89C6C0,$89C6E0					; Layer 1 (High byte) data
	dl $899D80,$899DC0					; Layer 2 (Low byte) data
	dl $89C5C0,$89C5E0					; Layer 2 (High byte) data
	dl $80EBC8,$80EBEC					; Normal Sprite data
	dl $80F11F,$80F120					; Item Sprite Data

LVL_Level4Screen03_Ptrs:
	db $06 : dw $0000
	dl $899FC0,$89A000					; Layer 1 (Low byte) data
	dl $89C6E0,$89C700					; Layer 1 (High byte) data
	dl $899DC0,$899E00					; Layer 2 (Low byte) data
	dl $89C5E0,$89C600					; Layer 2 (High byte) data
	dl $80EBEC,$80EBFC					; Normal Sprite data
	dl $80F120,$80F121					; Item Sprite Data

LVL_Level4Screen04_Ptrs:
	db $06 : dw $0000
	dl $89A000,$89A040					; Layer 1 (Low byte) data
	dl $89C700,$89C720					; Layer 1 (High byte) data
	dl $899E00,$899E40					; Layer 2 (Low byte) data
	dl $89C600,$89C620					; Layer 2 (High byte) data
	dl $80EBFC,$80EC02					; Normal Sprite data
	dl $80F121,$80F132					; Item Sprite Data

LVL_Level4Screen05_Ptrs:
	db $06 : dw $0000
	dl $89A040,$89A080					; Layer 1 (Low byte) data
	dl $89C720,$89C740					; Layer 1 (High byte) data
	dl $899E40,$899E80					; Layer 2 (Low byte) data
	dl $89C620,$89C640					; Layer 2 (High byte) data
	dl $80EC02,$80EC26					; Normal Sprite data
	dl $80F132,$80F133					; Item Sprite Data

LVL_Level4Screen06_Ptrs:
	db $06 : dw $0000
	dl $89A080,$89A0C0					; Layer 1 (Low byte) data
	dl $89C740,$89C760					; Layer 1 (High byte) data
	dl $899E80,$899EC0					; Layer 2 (Low byte) data
	dl $89C640,$89C660					; Layer 2 (High byte) data
	dl $80EC26,$80EC2C					; Normal Sprite data
	dl $80F133,$80F13C					; Item Sprite Data

LVL_Level4Screen07_Ptrs:
	db $06 : dw $0000
	dl $89A0C0,$89A100					; Layer 1 (Low byte) data
	dl $89C760,$89C780					; Layer 1 (High byte) data
	dl $899EC0,$899F00					; Layer 2 (Low byte) data
	dl $89C660,$89C680					; Layer 2 (High byte) data
	dl $80EC2C,$80EC32					; Normal Sprite data
	dl $80F13C,$80F14D					; Item Sprite Data

LVL_Level4Screen08_Ptrs:
	db $06 : dw $0000
	dl $89A300,$89A340					; Layer 1 (Low byte) data
	dl $89C880,$89C8A0					; Layer 1 (High byte) data
	dl $89A100,$89A140					; Layer 2 (Low byte) data
	dl $89C780,$89C7A0					; Layer 2 (High byte) data
	dl $80EC32,$80EC47					; Normal Sprite data
	dl $80F14D,$80F152					; Item Sprite Data

LVL_Level4Screen09_Ptrs:
	db $06 : dw $0000
	dl $89A340,$89A380					; Layer 1 (Low byte) data
	dl $89C8A0,$89C8C0					; Layer 1 (High byte) data
	dl $89A140,$89A180					; Layer 2 (Low byte) data
	dl $89C7A0,$89C7C0					; Layer 2 (High byte) data
	dl $80EC47,$80EC4D					; Normal Sprite data
	dl $80F152,$80F157					; Item Sprite Data

LVL_Level4Screen0A_Ptrs:
	db $06 : dw $0000
	dl $89A380,$89A3C0					; Layer 1 (Low byte) data
	dl $89C8C0,$89C8E0					; Layer 1 (High byte) data
	dl $89A180,$89A1C0					; Layer 2 (Low byte) data
	dl $89C7C0,$89C7E0					; Layer 2 (High byte) data
	dl $80EC4D,$80EC4E					; Normal Sprite data
	dl $80F157,$80F16C					; Item Sprite Data

LVL_Level4Screen0B_Ptrs:
	db $06 : dw $0000
	dl $89A3C0,$89A400					; Layer 1 (Low byte) data
	dl $89C8E0,$89C900					; Layer 1 (High byte) data
	dl $89A1C0,$89A200					; Layer 2 (Low byte) data
	dl $89C7E0,$89C800					; Layer 2 (High byte) data
	dl $80EC4E,$80EC63					; Normal Sprite data
	dl $80F16C,$80F175					; Item Sprite Data

LVL_Level4Screen0C_Ptrs:
	db $06 : dw $0000
	dl $89A400,$89A440					; Layer 1 (Low byte) data
	dl $89C900,$89C920					; Layer 1 (High byte) data
	dl $89A200,$89A240					; Layer 2 (Low byte) data
	dl $89C800,$89C820					; Layer 2 (High byte) data
	dl $80EC63,$80EC82					; Normal Sprite data
	dl $80F175,$80F176					; Item Sprite Data

LVL_Level4Screen0D_Ptrs:
	db $06 : dw $0000
	dl $89A440,$89A480					; Layer 1 (Low byte) data
	dl $89C920,$89C940					; Layer 1 (High byte) data
	dl $89A240,$89A280					; Layer 2 (Low byte) data
	dl $89C820,$89C840					; Layer 2 (High byte) data
	dl $80EC82,$80EC9C					; Normal Sprite data
	dl $80F176,$80F17B					; Item Sprite Data

LVL_Level4Screen0E_Ptrs:
	db $06 : dw $0000
	dl $89A480,$89A4C0					; Layer 1 (Low byte) data
	dl $89C940,$89C960					; Layer 1 (High byte) data
	dl $89A280,$89A2C0					; Layer 2 (Low byte) data
	dl $89C840,$89C860					; Layer 2 (High byte) data
	dl $80EC9C,$80EC9D					; Normal Sprite data
	dl $80F17B,$80F180					; Item Sprite Data

LVL_Level4Screen0F_Ptrs:
	db $06 : dw $0000
	dl $89A4C0,$89A500					; Layer 1 (Low byte) data
	dl $89C960,$89C980					; Layer 1 (High byte) data
	dl $89A2C0,$89A300					; Layer 2 (Low byte) data
	dl $89C860,$89C880					; Layer 2 (High byte) data
	dl $80EC9D,$80EC9E					; Normal Sprite data
	dl $80F180,$80F18D					; Item Sprite Data

LVL_Level4Screen10_Ptrs:
	db $06 : dw $0000
	dl $89A700,$89A740					; Layer 1 (Low byte) data
	dl $89CA80,$89CAA0					; Layer 1 (High byte) data
	dl $89A500,$89A540					; Layer 2 (Low byte) data
	dl $89C980,$89C9A0					; Layer 2 (High byte) data
	dl $80EC9E,$80ECA4					; Normal Sprite data
	dl $80F18D,$80F192					; Item Sprite Data

LVL_Level4Screen11_Ptrs:
	db $06 : dw $0000
	dl $89A740,$89A780					; Layer 1 (Low byte) data
	dl $89CAA0,$89CAC0					; Layer 1 (High byte) data
	dl $89A540,$89A580					; Layer 2 (Low byte) data
	dl $89C9A0,$89C9C0					; Layer 2 (High byte) data
	dl $80ECA4,$80ECAF					; Normal Sprite data
	dl $80F192,$80F197					; Item Sprite Data

LVL_Level4Screen12_Ptrs:
	db $06 : dw $0000
	dl $89A780,$89A7C0					; Layer 1 (Low byte) data
	dl $89CAC0,$89CAE0					; Layer 1 (High byte) data
	dl $89A580,$89A5C0					; Layer 2 (Low byte) data
	dl $89C9C0,$89C9E0					; Layer 2 (High byte) data
	dl $80ECAF,$80ECCE					; Normal Sprite data
	dl $80F197,$80F198					; Item Sprite Data

LVL_Level4Screen13_Ptrs:
	db $06 : dw $0000
	dl $89A7C0,$89A800					; Layer 1 (Low byte) data
	dl $89CAE0,$89CB00					; Layer 1 (High byte) data
	dl $89A5C0,$89A600					; Layer 2 (Low byte) data
	dl $89C9E0,$89CA00					; Layer 2 (High byte) data
	dl $80ECCE,$80ECED					; Normal Sprite data
	dl $80F198,$80F1A1					; Item Sprite Data

LVL_Level4Screen14_Ptrs:
	db $06 : dw $0000
	dl $89A800,$89A840					; Layer 1 (Low byte) data
	dl $89CB00,$89CB20					; Layer 1 (High byte) data
	dl $89A600,$89A640					; Layer 2 (Low byte) data
	dl $89CA00,$89CA20					; Layer 2 (High byte) data
	dl $80ECED,$80ECEE					; Normal Sprite data
	dl $80F1A1,$80F1AA					; Item Sprite Data

LVL_Level4Screen15_Ptrs:
	db $06 : dw $0000
	dl $89A840,$89A880					; Layer 1 (Low byte) data
	dl $89CB20,$89CB40					; Layer 1 (High byte) data
	dl $89A640,$89A680					; Layer 2 (Low byte) data
	dl $89CA20,$89CA40					; Layer 2 (High byte) data
	dl $80ECEE,$80ED03					; Normal Sprite data
	dl $80F1AA,$80F1AF					; Item Sprite Data

LVL_Level4Screen16_Ptrs:
	db $06 : dw $0000
	dl $89A880,$89A8C0					; Layer 1 (Low byte) data
	dl $89CB40,$89CB60					; Layer 1 (High byte) data
	dl $89A680,$89A6C0					; Layer 2 (Low byte) data
	dl $89CA40,$89CA60					; Layer 2 (High byte) data
	dl $80ED03,$80ED04					; Normal Sprite data
	dl $80F1AF,$80F1B4					; Item Sprite Data

LVL_Level4Screen17_Ptrs:
	db $06 : dw $0000
	dl $89A8C0,$89A900					; Layer 1 (Low byte) data
	dl $89CB60,$89CB80					; Layer 1 (High byte) data
	dl $89A6C0,$89A700					; Layer 2 (Low byte) data
	dl $89CA60,$89CA80					; Layer 2 (High byte) data
	dl $80ED04,$80ED0A					; Normal Sprite data
	dl $80F1B4,$80F1B9					; Item Sprite Data

LVL_Level4Screen18_Ptrs:
	db $06 : dw $0000
	dl $89A980,$89A9C0					; Layer 1 (Low byte) data
	dl $89CBC0,$89CBE0					; Layer 1 (High byte) data
	dl $89A900,$89A940					; Layer 2 (Low byte) data
	dl $89CB80,$89CBA0					; Layer 2 (High byte) data
	dl $80ED0A,$80ED1F					; Normal Sprite data
	dl $80F1B9,$80F1BE					; Item Sprite Data

LVL_Level4Screen19_Ptrs:
	db $06 : dw $0000
	dl $89A9C0,$89AA00					; Layer 1 (Low byte) data
	dl $89CBE0,$89CC00					; Layer 1 (High byte) data
	dl $89A940,$89A980					; Layer 2 (Low byte) data
	dl $89CBA0,$89CBC0					; Layer 2 (High byte) data
	dl $80ED1F,$80ED29					; Normal Sprite data
	dl $80F1BE,$80F1C3					; Item Sprite Data

LVL_Level4Screen1A_Ptrs:
	db $06 : dw $0000
	dl $899F80,$899FC0					; Layer 1 (Low byte) data
	dl $89C6A0,$89C6C0					; Layer 1 (High byte) data
	dl $899D80,$899DC0					; Layer 2 (Low byte) data
	dl $89C5C0,$89C5E0					; Layer 2 (High byte) data
	dl $80EBC8,$80EBEC					; Normal Sprite data
	dl $80F1C3,$80F1C4					; Item Sprite Data

LVL_Level4Screen1B_Ptrs:
	db $06 : dw $0000
	dl $899FC0,$89A040					; Layer 1 (Low byte) data
	dl $89C6C0,$89C6E0					; Layer 1 (High byte) data
	dl $899DC0,$899E00					; Layer 2 (Low byte) data
	dl $89C5E0,$89C600					; Layer 2 (High byte) data
	dl $80EBEC,$80EBFC					; Normal Sprite data
	dl $80F1C4,$80F1C5					; Item Sprite Data

LVL_Level4Screen1C_Ptrs:
	db $06 : dw $0000
	dl $89A300,$89A340					; Layer 1 (Low byte) data
	dl $89C880,$89C8A0					; Layer 1 (High byte) data
	dl $89A100,$89A140					; Layer 2 (Low byte) data
	dl $89C780,$89C7A0					; Layer 2 (High byte) data
	dl $80EC32,$80EC47					; Normal Sprite data
	dl $80F1C5,$80F1CA					; Item Sprite Data

LVL_Level4Screen1D_Ptrs:
	db $06 : dw $0000
	dl $89A300,$89A340					; Layer 1 (Low byte) data
	dl $89C880,$89C8A0					; Layer 1 (High byte) data
	dl $89A100,$89A140					; Layer 2 (Low byte) data
	dl $89C780,$89C7A0					; Layer 2 (High byte) data
	dl $80EC32,$80EC47					; Normal Sprite data
	dl $80F1CA,$80F1CF					; Item Sprite Data

LVL_Level5Screen00_Ptrs:
	db $06 : dw $0000
	dl $89AC00,$89AC40					; Layer 1 (Low byte) data
	dl $89CD00,$89CD20					; Layer 1 (High byte) data
	dl $89AA00,$89AA40					; Layer 2 (Low byte) data
	dl $89CC00,$89CC20					; Layer 2 (High byte) data
	dl $80ED29,$80ED2A					; Normal Sprite data
	dl $80F1CF,$80F1D0					; Item Sprite Data

LVL_Level5Screen01_Ptrs:
	db $06 : dw $0000
	dl $89AC40,$89AC80					; Layer 1 (Low byte) data
	dl $89CD20,$89CD40					; Layer 1 (High byte) data
	dl $89AA40,$89AA80					; Layer 2 (Low byte) data
	dl $89CC20,$89CC40					; Layer 2 (High byte) data
	dl $80ED2A,$80ED3F					; Normal Sprite data
	dl $80F1D0,$80F1D1					; Item Sprite Data

LVL_Level5Screen02_Ptrs:
	db $06 : dw $0000
	dl $89AC80,$89ACC0					; Layer 1 (Low byte) data
	dl $89CD40,$89CD60					; Layer 1 (High byte) data
	dl $89AA80,$89AAC0					; Layer 2 (Low byte) data
	dl $89CC40,$89CC60					; Layer 2 (High byte) data
	dl $80ED3F,$80ED4F					; Normal Sprite data
	dl $80F1D1,$80F1D6					; Item Sprite Data

LVL_Level5Screen03_Ptrs:
	db $06 : dw $0000
	dl $89ACC0,$89AD00					; Layer 1 (Low byte) data
	dl $89CD60,$89CD80					; Layer 1 (High byte) data
	dl $89AAC0,$89AB00					; Layer 2 (Low byte) data
	dl $89CC60,$89CC80					; Layer 2 (High byte) data
	dl $80ED4F,$80ED55					; Normal Sprite data
	dl $80F1D6,$80F1D7					; Item Sprite Data

LVL_Level5Screen04_Ptrs:
	db $06 : dw $0000
	dl $89AD00,$89AD40					; Layer 1 (Low byte) data
	dl $89CD80,$89CDA0					; Layer 1 (High byte) data
	dl $89AB00,$89AB40					; Layer 2 (Low byte) data
	dl $89CC80,$89CCA0					; Layer 2 (High byte) data
	dl $80ED55,$80ED74					; Normal Sprite data
	dl $80F1D7,$80F1DC					; Item Sprite Data

LVL_Level5Screen05_Ptrs:
	db $06 : dw $0000
	dl $89AD40,$89AD80					; Layer 1 (Low byte) data
	dl $89CDA0,$89CDC0					; Layer 1 (High byte) data
	dl $89AB40,$89AB80					; Layer 2 (Low byte) data
	dl $89CCA0,$89CCC0					; Layer 2 (High byte) data
	dl $80ED74,$80ED75					; Normal Sprite data
	dl $80F1DC,$80F1E1					; Item Sprite Data

LVL_Level5Screen06_Ptrs:
	db $06 : dw $0000
	dl $89AD80,$89ADC0					; Layer 1 (Low byte) data
	dl $89CDC0,$89CDE0					; Layer 1 (High byte) data
	dl $89AB80,$89ABC0					; Layer 2 (Low byte) data
	dl $89CCC0,$89CCE0					; Layer 2 (High byte) data
	dl $80ED75,$80ED94					; Normal Sprite data
	dl $80F1E1,$80F1EE					; Item Sprite Data

LVL_Level5Screen07_Ptrs:
	db $06 : dw $0000
	dl $89ADC0,$89AE00					; Layer 1 (Low byte) data
	dl $89CDE0,$89CE00					; Layer 1 (High byte) data
	dl $89ABC0,$89AC00					; Layer 2 (Low byte) data
	dl $89CCE0,$89CD00					; Layer 2 (High byte) data
	dl $80ED94,$80EDA9					; Normal Sprite data
	dl $80F1EE,$80F1F3					; Item Sprite Data

LVL_Level5Screen08_Ptrs:
	db $06 : dw $0000
	dl $89B000,$89B040					; Layer 1 (Low byte) data
	dl $89CF00,$89CF20					; Layer 1 (High byte) data
	dl $89AE00,$89AE40					; Layer 2 (Low byte) data
	dl $89CE00,$89CE20					; Layer 2 (High byte) data
	dl $80EDA9,$80EDBE					; Normal Sprite data
	dl $80F1F3,$80F200					; Item Sprite Data

LVL_Level5Screen09_Ptrs:
	db $06 : dw $0000
	dl $89B040,$89B080					; Layer 1 (Low byte) data
	dl $89CF20,$89CF40					; Layer 1 (High byte) data
	dl $89AE40,$89AE80					; Layer 2 (Low byte) data
	dl $89CE20,$89CE40					; Layer 2 (High byte) data
	dl $80EDBE,$80EDBF					; Normal Sprite data
	dl $80F200,$80F205					; Item Sprite Data

LVL_Level5Screen0A_Ptrs:
	db $06 : dw $0000
	dl $89B080,$89B0C0					; Layer 1 (Low byte) data
	dl $89CF40,$89CF60					; Layer 1 (High byte) data
	dl $89AE80,$89AEC0					; Layer 2 (Low byte) data
	dl $89CE40,$89CE60					; Layer 2 (High byte) data
	dl $80EDBF,$80EDC0					; Normal Sprite data
	dl $80F205,$80F20A					; Item Sprite Data

LVL_Level5Screen0B_Ptrs:
	db $06 : dw $0000
	dl $89B0C0,$89B100					; Layer 1 (Low byte) data
	dl $89CF60,$89CF80					; Layer 1 (High byte) data
	dl $89AEC0,$89AF00					; Layer 2 (Low byte) data
	dl $89CE60,$89CE80					; Layer 2 (High byte) data
	dl $80EDC0,$80EDD0					; Normal Sprite data
	dl $80F20A,$80F213					; Item Sprite Data

LVL_Level5Screen0C_Ptrs:
	db $06 : dw $0000
	dl $89B100,$89B140					; Layer 1 (Low byte) data
	dl $89CF80,$89CFA0					; Layer 1 (High byte) data
	dl $89AF00,$89AF40					; Layer 2 (Low byte) data
	dl $89CE80,$89CEA0					; Layer 2 (High byte) data
	dl $80EDD0,$80EDDB					; Normal Sprite data
	dl $80F213,$80F21C					; Item Sprite Data

LVL_Level5Screen0D_Ptrs:
	db $06 : dw $0000
	dl $89B140,$89B180					; Layer 1 (Low byte) data
	dl $89CFA0,$89CFC0					; Layer 1 (High byte) data
	dl $89AF40,$89AF80					; Layer 2 (Low byte) data
	dl $89CEA0,$89CEC0					; Layer 2 (High byte) data
	dl $80EDDB,$80EDF0					; Normal Sprite data
	dl $80F21C,$80F22D					; Item Sprite Data

LVL_Level5Screen0E_Ptrs:
	db $06 : dw $0000
	dl $89B180,$89B1C0					; Layer 1 (Low byte) data
	dl $89CFC0,$89CFE0					; Layer 1 (High byte) data
	dl $89AF80,$89AFC0					; Layer 2 (Low byte) data
	dl $89CEC0,$89CEE0					; Layer 2 (High byte) data
	dl $80EDF0,$80EDFB					; Normal Sprite data
	dl $80F22D,$80F24E					; Item Sprite Data

LVL_Level5Screen0F_Ptrs:
	db $06 : dw $0000
	dl $89B1C0,$89B200					; Layer 1 (Low byte) data
	dl $89CFE0,$89D000					; Layer 1 (High byte) data
	dl $89AFC0,$89B000					; Layer 2 (Low byte) data
	dl $89CEE0,$89CF00					; Layer 2 (High byte) data
	dl $80EDFB,$80EE06					; Normal Sprite data
	dl $80F24E,$80F25B					; Item Sprite Data

LVL_Level5Screen10_Ptrs:
	db $06 : dw $0000
	dl $89B400,$89B440					; Layer 1 (Low byte) data
	dl $89D100,$89D120					; Layer 1 (High byte) data
	dl $89B200,$89B240					; Layer 2 (Low byte) data
	dl $89D000,$89D020					; Layer 2 (High byte) data
	dl $80EE06,$80EE0C					; Normal Sprite data
	dl $80F25B,$80F268					; Item Sprite Data

LVL_Level5Screen11_Ptrs:
	db $06 : dw $0000
	dl $89B440,$89B480					; Layer 1 (Low byte) data
	dl $89D120,$89D140					; Layer 1 (High byte) data
	dl $89B240,$89B280					; Layer 2 (Low byte) data
	dl $89D020,$89D040					; Layer 2 (High byte) data
	dl $80EE0C,$80EE0D					; Normal Sprite data
	dl $80F268,$80F271					; Item Sprite Data

LVL_Level5Screen12_Ptrs:
	db $06 : dw $0000
	dl $89B480,$89B4C0					; Layer 1 (Low byte) data
	dl $89D140,$89D160					; Layer 1 (High byte) data
	dl $89B280,$89B2C0					; Layer 2 (Low byte) data
	dl $89D040,$89D060					; Layer 2 (High byte) data
	dl $80EE0D,$80EE18					; Normal Sprite data
	dl $80F271,$80F276					; Item Sprite Data

LVL_Level5Screen13_Ptrs:
	db $06 : dw $0000
	dl $89B4C0,$89B500					; Layer 1 (Low byte) data
	dl $89D160,$89D180					; Layer 1 (High byte) data
	dl $89B2C0,$89B300					; Layer 2 (Low byte) data
	dl $89D060,$89D080					; Layer 2 (High byte) data
	dl $80EE18,$80EE19					; Normal Sprite data
	dl $80F276,$80F27B					; Item Sprite Data

LVL_Level5Screen14_Ptrs:
	db $06 : dw $0000
	dl $89B500,$89B540					; Layer 1 (Low byte) data
	dl $89D180,$89D1A0					; Layer 1 (High byte) data
	dl $89B300,$89B340					; Layer 2 (Low byte) data
	dl $89D080,$89D0A0					; Layer 2 (High byte) data
	dl $80EE19,$80EE29					; Normal Sprite data
	dl $80F27B,$80F280					; Item Sprite Data

LVL_Level5Screen15_Ptrs:
	db $06 : dw $0000
	dl $89B540,$89B580					; Layer 1 (Low byte) data
	dl $89D1A0,$89D1C0					; Layer 1 (High byte) data
	dl $89B340,$89B380					; Layer 2 (Low byte) data
	dl $89D0A0,$89D0C0					; Layer 2 (High byte) data
	dl $80EE29,$80EE39					; Normal Sprite data
	dl $80F280,$80F291					; Item Sprite Data

LVL_Level5Screen16_Ptrs:
	db $06 : dw $0000
	dl $89B580,$89B5C0					; Layer 1 (Low byte) data
	dl $89D1C0,$89D1E0					; Layer 1 (High byte) data
	dl $89B380,$89B3C0					; Layer 2 (Low byte) data
	dl $89D0C0,$89D0E0					; Layer 2 (High byte) data
	dl $80EE39,$80EE3A					; Normal Sprite data
	dl $80F291,$80F296					; Item Sprite Data

LVL_Level5Screen17_Ptrs:
	db $06 : dw $0000
	dl $89B5C0,$89B600					; Layer 1 (Low byte) data
	dl $89D1E0,$89D200					; Layer 1 (High byte) data
	dl $89B3C0,$89B400					; Layer 2 (Low byte) data
	dl $89D0E0,$89D100					; Layer 2 (High byte) data
	dl $80EE3A,$80EE4A					; Normal Sprite data
	dl $80F296,$80F2A3					; Item Sprite Data

LVL_Level5Screen18_Ptrs:
	db $06 : dw $0000
	dl $89B680,$89B6C0					; Layer 1 (Low byte) data
	dl $89D240,$89D260					; Layer 1 (High byte) data
	dl $89B600,$89B640					; Layer 2 (Low byte) data
	dl $89D200,$89D220					; Layer 2 (High byte) data
	dl $80EE4A,$80EE64					; Normal Sprite data
	dl $80F2A3,$80F2A8					; Item Sprite Data

LVL_Level5Screen19_Ptrs:
	db $06 : dw $0000
	dl $89B6C0,$89B700					; Layer 1 (Low byte) data
	dl $89D260,$89D280					; Layer 1 (High byte) data
	dl $89B640,$89B680					; Layer 2 (Low byte) data
	dl $89D220,$89D240					; Layer 2 (High byte) data
	dl $80EE64,$80EE6A					; Normal Sprite data
	dl $80F2A8,$80F2A9					; Item Sprite Data

;--------------------------------------------------------------------

PalettePointersStart:
	dl $8AE000,$8AE020,PAL_Sprite_Goofy,PAL_Sprite_GoofyEnd
	dl $8AE020,$8AE040,PAL_Sprite_Max,PAL_Sprite_MaxEnd
	dl $8AE040,$8AE060,PAL_Sprite_Global1,PAL_Sprite_Global1End
	dl $8AE060,$8AE080,PAL_Sprite_Global2,PAL_Sprite_Global2End
	dl $8AE080,$8AE0A0,PAL_Sprite_Edgehog,PAL_Sprite_EdgehogEnd
	dl $8AE0A0,$8AE0C0,PAL_Sprite_Bee,PAL_Sprite_BeeEnd
	dl $8AE0C0,$8AE0E0,PAL_Sprite_Jolly,PAL_Sprite_JollyEnd
	dl $8AE0E0,$8AE100,PAL_Sprite_Jack,PAL_Sprite_JackEnd
	dl $8AE100,$8AE120,PAL_Sprite_Jester,PAL_Sprite_JesterEnd
	dl $8AE120,$8AE140,PAL_Sprite_BlueCannon,PAL_Sprite_BlueCannonEnd
	dl $8AE140,$8AE160,PAL_Sprite_Snake,PAL_Sprite_SnakeEnd
	dl $8AE160,$8AE180,PAL_Sprite_Roger,PAL_Sprite_RogerEnd
	dl $8AE180,$8AE1A0,PAL_Sprite_Rob,PAL_Sprite_RobEnd
	dl $8AE1A0,$8AE1C0,PAL_Sprite_Rap,PAL_Sprite_RapEnd
	dl $8AE1C0,$8AE1E0,PAL_Sprite_RedCannon,PAL_Sprite_RedCannonEnd
	dl $8AE1E0,$8AE200,PAL_Sprite_Unknown1,PAL_Sprite_Unknown1End
	dl $8AE200,$8AE220,PAL_Sprite_Armor,PAL_Sprite_ArmorEnd
	dl $8AE220,$8AE240,PAL_Sprite_BlueSkeleton,PAL_Sprite_BlueSkeletonEnd
	dl $8AE240,$8AE260,PAL_Sprite_RedSkeleton,PAL_Sprite_RedSkeletonEnd
	dl $8AE260,$8AE280,PAL_Sprite_GreenRumbler,PAL_Sprite_GreenRumblerEnd
	dl $8AE280,$8AE2A0,PAL_Sprite_Unknown2,PAL_Sprite_Unknown2End
	dl $8AE2A0,$8AE2C0,PAL_Sprite_Unknown3,PAL_Sprite_Unknown3End
	dl $8AE2C0,$8AE2E0,PAL_Sprite_FireBug,PAL_Sprite_FireBugEnd
	dl $8AE2E0,$8AE300,PAL_Sprite_KeelhaulPete,PAL_Sprite_KeelhaulPeteEnd
	dl $8AE300,$8AE320,PAL_Sprite_RedRumbler,PAL_Sprite_RedRumblerEnd
	dl $8AE320,$8AE340,PAL_Sprite_Frog,PAL_Sprite_FrogEnd
	dl $8AE340,$8AE360,PAL_Sprite_Stalactite,PAL_Sprite_StalactiteEnd
	dl $8AE360,$8AE380,PAL_Sprite_Ramble,PAL_Sprite_RambleEnd
	dl $8AE380,$8AE3A0,PAL_Sprite_Unknown4,PAL_Sprite_Unknown4End
	dl $8AE3A0,$8AE3C0,PAL_Sprite_PirateFlag,PAL_Sprite_PirateFlagEnd
	dl $8AE3C0,$8AE3E0,PAL_Sprite_Unknown5,PAL_Sprite_Unknown5End
	dl $8AE3E0,$8AE400,PAL_Sprite_Unknown6,PAL_Sprite_Unknown6End
	dl $8AE400,$8AE420,PAL_Layer3_Global,PAL_Layer3_GlobalEnd
	dl $8AE420,$8AE440,PAL_Layer3_OptionsMenuScreen,PAL_Layer3_OptionsMenuScreenEnd
	dl $8AE440,$8AE460,PAL_Layer2_ContinueScreen,PAL_Layer2_ContinueScreenEnd
	dl $8AE460,$8AE480,PAL_Layer2_PlayerSelectScreen,PAL_Layer2_PlayerSelectScreenEnd
	dl $8AE480,$8AE500,PAL_FGBG_MapScreen,PAL_FGBG_MapScreenEnd
	dl $8AE500,$8AE520,PAL_Layer1_PlayerSelectScreenText,PAL_Layer1_PlayerSelectScreenTextEnd
	dl $8AE520,$8AE540,PAL_Layer1_HighlightedPlayerSelectScreenOption,PAL_Layer1_HighlightedPlayerSelectScreenOptionEnd
	dl $8AE540,$8AE560,PAL_Layer1_UnhighlightedPlayerSelectScreenOption,PAL_Layer1_UnhighlightedPlayerSelectScreenOptionEnd
	dl $8AE560,$8AE580,PAL_Layer1_SelectedPlayerSelectScreenOption,PAL_Layer1_SelectedPlayerSelectScreenOptionEnd
	dl $8AE580,$8AE600,PAL_Layer1_CapcomLogo,PAL_Layer1_CapcomLogoEnd
	dl $8AE600,$8AE620,PAL_Layer1_TitleScreenLogoShine1,PAL_Layer1_TitleScreenLogoShine1End
	dl $8AE620,$8AE640,PAL_Layer1_TitleScreenLogoShine2,PAL_Layer1_TitleScreenLogoShine2End
	dl $8AE640,$8AE660,PAL_UnknownPalette1,PAL_UnknownPalette1End
	dl $8AE660,$8AE680,PAL_Layer2_AnimatedLevel1StillWater,PAL_Layer2_AnimatedLevel1StillWaterEnd
	dl $8AE680,$8AE740,PAL_FGBG_Level1,PAL_FGBG_Level1End
	dl $8AE740,$8AE760,PAL_FGBG_Global,PAL_FGBG_GlobalEnd
	dl $8AE760,$8AE780,PAL_UnknownPalette2,PAL_UnknownPalette2End
	dl $8AE780,$8AE7E0,PAL_Layer2_MovingHoleRoom,PAL_Layer2_MovingHoleRoomEnd
	dl $8AE7E0,$8AE800,PAL_Layer1_TitleScreenLogoShine3,PAL_Layer1_TitleScreenLogoShine3End
	dl $8AE800,$8AE8C0,PAL_FGBG_Level2,PAL_FGBG_Level2End
	dl $8AE8C0,$8AE8E0,PAL_Layer2_AnimatedLevel2StillWater,PAL_Layer2_AnimatedLevel2StillWaterEnd
	dl $8AE8E0,$8AE9A0,PAL_FGBG_Level4_Grey,PAL_FGBG_Level4_GreyEnd
	dl $8AE9A0,$8AE9C0,PAL_FGBG_Level4_Icy1,PAL_FGBG_Level4_Icy1End
	dl $8AE9C0,$8AE9E0,PAL_Layer1_FrozenDoor,PAL_Layer1_FrozenDoorEnd
	dl $8AE9E0,$8AEA00,PAL_Layer1_Level4_IcyRoomTorches1,PAL_Layer1_Level4_IcyRoomTorches1End
	dl $8AEA00,$8AEAC0,PAL_FGBG_Level3_Floor1,PAL_FGBG_Level3_Floor1End
	dl $8AEAC0,$8AEB80,PAL_FGBG_Level3_Floor2,PAL_FGBG_Level3_Floor2End
	dl $8AEB80,$8AEC40,PAL_FGBG_Level3_Floor3,PAL_FGBG_Level3_Floor3End
	dl $8AEC40,$8AED00,PAL_FGBG_Level3_Outside,PAL_FGBG_Level3_OutsideEnd
	dl $8AED00,$8AEDC0,PAL_Layer2_AnimatedWallCandle,PAL_Layer2_AnimatedWallCandleEnd
	dl $8AEDC0,$8AEDE0,PAL_Layer2_MapScreen,PAL_Layer2_MapScreenEnd
	dl $8AEDE0,$8AEE00,PAL_Layer1_TitleScreenLogoShine4,PAL_Layer1_TitleScreenLogoShine4End
	dl $8AEE00,$8AEF00,PAL_Layer2_AnimatedWaterWave,PAL_Layer2_AnimatedWaterWaveEnd
	dl $8AEF00,$8AEFC0,PAL_FGBG_Level5_Main,PAL_FGBG_Level5_MainEnd
	dl $8AEFC0,$8AEFE0,PAL_FGBG_Level5_WallSwordsAndChests,PAL_FGBG_Level5_WallSwordsAndChestsEnd
	dl $8AEFE0,$8AF000,PAL_FGBG_Level5_TreasureRoomSparkles,PAL_FGBG_Level5_TreasureRoomSparklesEnd
	dl $8AF000,$8AF020,PAL_Layer2_AnimatedLava1,PAL_Layer2_AnimatedLava1End
	dl $8AF020,$8AF040,PAL_UnknownPalette3,PAL_UnknownPalette3End
	dl $8AF040,$8AF080,PAL_Layer2_AnimatedCampfire1,PAL_Layer2_AnimatedCampfire1End
	dl $8AF080,$8AF0E0,PAL_Layer2_AnimatedLava2,PAL_Layer2_AnimatedLava2End
	dl $8AF0E0,$8AF100,PAL_Layer1_PressedWallSwitch,PAL_Layer1_PressedWallSwitchEnd
	dl $8AF100,$8AF1C0,PAL_FGBG_Level4_Brown,PAL_FGBG_Level4_BrownEnd
	dl $8AF1C0,$8AF200,PAL_UnknownPalette4,PAL_UnknownPalette4End
	dl $8AF200,$8AF260,PAL_AnimatedWallLantern,PAL_AnimatedWallLanternEnd
	dl $8AF260,$8AF2E0,PAL_Layer2_AnimatedFlowingWater,PAL_Layer2_AnimatedFlowingWaterEnd
	dl $8AF2E0,$8AF320,PAL_Layer2_PressedGreyAndYellowButton,PAL_Layer2_PressedGreyAndYellowButtonEnd
	dl $8AF320,$8AF3C0,PAL_FGBG_Level5_DiningRoom,PAL_FGBG_Level5_DiningRoomEnd
	dl $8AF3C0,$8AF400,PAL_Layer3_Credits,PAL_Layer3_CreditsEnd
	dl $8AF400,$8AF480,PAL_Layer1_AnimatedWaterfall,PAL_Layer1_AnimatedWaterfallEnd
	dl $8AF480,$8AF4A0,PAL_UnknownPalette5,PAL_UnknownPalette5End
	dl $8AF4A0,$8AF4C0,PAL_Layer2_AnimatedLevel4StillWater,PAL_Layer2_AnimatedLevel4StillWaterEnd
	dl $8AF4C0,$8AF4E0,PAL_FGBG_Level4_Icy2,PAL_FGBG_Level4_Icy2End
	dl $8AF4E0,$8AF500,PAL_FGBG_Level4_BossRoomWalls,PAL_FGBG_Level4_BossRoomWallsEnd
	dl $8AF500,$8AF520,PAL_UnknownPalette6,PAL_UnknownPalette6End
	dl $8AF520,$8AF540,PAL_Layer1_Level4_WallSkull,PAL_Layer1_Level4_WallSkullEnd
	dl $8AF540,$8AF600,PAL_Layer2_UnusedAnimatedLava1,PAL_Layer2_UnusedAnimatedLava1End
	dl $8AF600,$8AF620,PAL_Layer1_CutsceneBorder,PAL_Layer1_CutsceneBorderEnd
	dl $8AF620,$8AF6E0,PAL_Layer1_IntroCutscene1,PAL_Layer1_IntroCutscene1End
	dl $8AF6E0,$8AF7A0,PAL_Layer1_IntroCutscene2,PAL_Layer1_IntroCutscene2End
	dl $8AF7A0,$8AF860,PAL_Layer1_IntroCutscene3,PAL_Layer1_IntroCutscene3End
	dl $8AF860,$8AF920,PAL_Layer1_IntroCutscene4,PAL_Layer1_IntroCutscene4End
	dl $8AF920,$8AF9C0,PAL_Layer1_TitleScreen,PAL_Layer1_TitleScreenEnd
	dl $8AF9C0,$8AF9E0,PAL_Layer1_SelectedTitleScreenOption,PAL_Layer1_SelectedTitleScreenOptionEnd
	dl $8AF9E0,$8AFA00,PAL_Layer1_UnhighlightedTitleScreenOption,PAL_Layer1_UnhighlightedTitleScreenOptionEnd
	dl $8AFA00,$8AFA40,PAL_Layer1_Level4_IcyRoomTorches2,PAL_Layer1_Level4_IcyRoomTorches2End
	dl $8AFA40,$8AFAC0,PAL_UnknownPalette7,PAL_UnknownPalette7End
	dl $8AFAC0,$8AFB20,PAL_Layer2_UnusedAnimatedLava2,PAL_Layer2_UnusedAnimatedLava2End
	dl $8AFB20,$8AFB60,PAL_UnknownPalette8,PAL_UnknownPalette8End
	dl $8AFB60,$8AFB80,PAL_FGBG_Level4_BossRoomFloor,PAL_FGBG_Level4_BossRoomFloorEnd
	dl $8AFB80,$8AFBC0,PAL_FGBG_Level4_Green,PAL_FGBG_Level4_GreenEnd
	dl $8AFBC0,$8AFC00,PAL_UnknownPalette9,PAL_UnknownPalette9End
	dl $8AFC00,$8AFCA0,PAL_Layer1_PasswordScreen,PAL_Layer1_PasswordScreenEnd
	dl $8AFCA0,$8AFCC0,PAL_UnknownPalette10,PAL_UnknownPalette10End
	dl $8AFCC0,$8AFD80,PAL_Layer1_AnimatedPasswordScreenStars,PAL_Layer1_AnimatedPasswordScreenStarsEnd
	dl $8AFD80,$8AFDC0,PAL_Layer2_AnimatedCampfire2,PAL_Layer2_AnimatedCampfire2End
	dl $8AFDC0,$8AFE00,PAL_Layer2_GameOverScreen,PAL_Layer2_GameOverScreenEnd
	dl $8BFE00,$8BFF00,PAL_Sprite_Ending,PAL_Sprite_EndingEnd
PalettePointersEnd:

;--------------------------------------------------------------------

GarbageDataStart:
	dl $80F373,$80FFB0,UNK_80F373,UNK_80F373End
	dl $81FF33,$828000,UNK_81FF33,UNK_81FF33End
	dl $82CD41,$82DE00,UNK_82CD41,UNK_82CD41End
	dl $83FADB,$848000,UNK_83FADB,UNK_83FADBEnd
	dl $85A796,$85C000,UNK_85A796,UNK_85A796End
	dl $88FDFE,$898000,UNK_88FDFE,UNK_88FDFEEnd
	dl $89F055,$89F100,UNK_89F055,UNK_89F055End
	dl $89FD48,$8A8000,UNK_89FD48,UNK_89FD48End
	dl $8ABF70,$8AC000,UNK_8ABF70,UNK_8ABF70End
	dl $8ADFB8,$8AE000,UNK_8ADFB8,UNK_8ADFB8End
	dl $8AFE00,$8B8000,UNK_8AFE00,UNK_8AFE00End
	dl $8BE240,$8BE800,UNK_8BE240,UNK_8BE240End
	dl $8BFBD4,$8BFE00,UNK_8BFBD4,UNK_8BFBD4End
	dl $8FB5BE,$8FD400,UNK_8FB5BE,UNK_8FB5BEEnd
	dl $8FFB20,$8FFE00,UNK_8FFB20,UNK_8FFB20End
	dl $8FFE4B,$8FFEA0,UNK_8FFE4B,UNK_8FFE4BEnd
	dl $8FFECD,$8FFF00,UNK_8FFECD,UNK_8FFECDEnd
	dl $8FFFAF,$908000,UNK_8FFFAF,UNK_8FFFAFEnd
GarbageDataEnd:

;--------------------------------------------------------------------

MusicDataPointersStart:
	dl $84E80F,$84E97F,Music_Capcom,Music_CapcomEnd
	dl $84E987,$84EDC7,Music_ToTheSouth,Music_ToTheSouthEnd
	dl $84EDCF,$84F0B7,Music_Illusion,Music_IllusionEnd
	dl $84F0BF,$84F369,Music_LoseMyWay,Music_LoseMyWayEnd
	dl $84F371,$84F8DD,Music_SeaRobber,Music_SeaRobberEnd
	dl $84F8E5,$84FC39,Music_LetsStart,Music_LetsStartEnd
	dl $84FC41,$84FE55,Music_Break,Music_BreakEnd
	dl $84FE5D,$84FFD7,Music_Map,Music_MapEnd
	dl $84FFDF,$858165,Music_GoOn,Music_GoOnEnd
	dl $85816D,$858655,Music_TheEnd,Music_TheEndEnd
	dl $85865D,$858A0B,Music_GoofyOrMax,Music_GoofyOrMaxEnd
	dl $858A13,$858E41,Music_FightFight,Music_FightFightEnd
	dl $858E49,$858F47,Music_Satisfied,Music_SatisfiedEnd
	dl $858F4F,$8595D5,Music_Flashback,Music_FlashbackEnd
	dl $8595DD,$8599A9,Music_Hamlet,Music_HamletEnd
	dl $8599B1,$859ECB,Music_FightABattle,Music_FightABattleEnd
	dl $859ED3,$85A46B,Music_StaffRoll,Music_StaffRollEnd
	dl $85A473,$85A5A7,Music_GameOver,Music_GameOverEnd
	dl $85A5AF,$85A791,Music_Rest,Music_RestEnd
MusicDataPointersEnd:

;--------------------------------------------------------------------

SoundEffectPointersStart:
	dl $848B29,$848B61,SFX01_Whistle,SFX01_WhistleEnd
	dl $848B61,$848BA2,SFX02_Break,SFX02_BreakEnd
	dl $848BA2,$848BCE,SFX03_ConfirmSelection,SFX03_ConfirmSelectionEnd
	dl $848BCE,$848BFB,SFX04_Unknown,SFX04_UnknownEnd
	dl $848BFB,$848C25,SFX05_OpenCastleDoor,SFX05_OpenCastleDoorEnd
	dl $848C25,$848C55,SFX06_MoveSelection,SFX06_MoveSelectionEnd
	dl $848C55,$848C8B,SFX07_PressSwitch,SFX07_PressSwitchEnd
	dl $848C8B,$848CBA,SFX08_CannonShoot,SFX08_CannonShootEnd
	dl $848CBA,$848CF0,SFX09_Explosion,SFX09_ExplosionEnd
	dl $848CF0,$848D25,SFX0A_RingBell,SFX0A_RingBellEnd
	dl $848D25,$848D59,SFX0B_Hurt,SFX0B_HurtEnd
	dl $848D59,$848DA7,SFX0C_UnlockDoor,SFX0C_UnlockDoorEnd
	dl $848DA7,$848DDA,SFX0D_LostLife,SFX0D_LostLifeEnd
	dl $848DDA,$848E0A,SFX0E_ObjectFellInPit,SFX0E_ObjectFellInPitEnd
	dl $848E0A,$848E4C,SFX0F_WaterRipple,SFX0F_WaterRippleEnd
	dl $848E4C,$848EB0,SFX10_ExtraLife,SFX10_ExtraLifeEnd
	dl $848EB0,$848EF5,SFX11_Unknown,SFX11_UnknownEnd
	dl $848EF5,$848F37,SFX12_DefeatEnemy,SFX12_DefeatEnemyEnd
	dl $848F37,$848F76,SFX13_BreakMirror,SFX13_BreakMirrorEnd
	dl $848F76,$848FA0,SFX14_MovingMinecart,SFX14_MovingMinecartEnd
	dl $848FA0,$848FD5,SFX15_Waterfall,SFX15_WaterfallEnd
	dl $848FD5,$84902F,SFX16_Waves,SFX16_WavesEnd
	dl $84902F,$849057,SFX17_HitWallWithGrapple,SFX17_HitWallWithGrappleEnd
	dl $849057,$8490B5,SFX18_HitWallWithBlock,SFX18_HitWallWithBlockEnd
	dl $8490B5,$8490FD,SFX19_RockBounce,SFX19_RockBounceEnd
	dl $8490FD,$849139,SFX1A_Wrong,SFX1A_WrongEnd
	dl $849139,$84918A,SFX1B_Dig,SFX1B_DigEnd
	dl $84918A,$8491B8,SFX1C_CollectFruit,SFX1C_CollectFruitEnd
	dl $8491B8,$8491FF,SFX1D_StunWithGrapple,SFX1D_StunWithGrappleEnd
	dl $8491FF,$849239,SFX1E_BuildCastleBridge,SFX1E_BuildCastleBridgeEnd
	dl $849239,$8492B6,SFX1F_GotItem,SFX1F_GotItemEnd
	dl $8492B6,$8492EB,SFX20_CloseDoor,SFX20_CloseDoorEnd
	dl $8492EB,$849323,SFX21_OpenGate,SFX21_OpenGateEnd
	dl $849323,$849350,SFX22_FireShoot,SFX22_FireShootEnd
	dl $849350,$84939C,SFX23_FireBugSwing,SFX23_FireBugSwingEnd
	dl $84939C,$8493D1,SFX24_KeelhaulPeteSpin,SFX24_KeelhaulPeteSpinEnd
	dl $8493D1,$84943D,SFX25_Earthquake,SFX25_EarthquakeEnd
	dl $84943D,$849469,SFX26_ThrowBones,SFX26_ThrowBonesEnd
	dl $849469,$849499,SFX27_RapRecoil,SFX27_RapRecoilEnd
	dl $849499,$8494C4,SFX28_CaughtByHook,SFX28_CaughtByHookEnd
	dl $8494C4,$84954D,SFX29_Unknown,SFX29_UnknownEnd
	dl $84954D,$849588,SFX2A_HurtSkeleton,SFX2A_HurtSkeletonEnd
	dl $849588,$8495CC,SFX2B_KeelhaulPeteShoot,SFX2B_KeelhaulPeteShootEnd
	dl $8495CC,$84960E,SFX2C_KeelhaulPeteLand,SFX2C_KeelhaulPeteLandEnd
	dl $84960E,$84964F,SFX2D_BreakArmor,SFX2D_BreakArmorEnd
	dl $84964F,$8496D9,SFX2E_ExtraContinue,SFX2E_ExtraContinueEnd
	dl $8496D9,$849706,SFX2F_CatchThrownItem,SFX2F_CatchThrownItemEnd
	dl $849706,$849783,SFX30_DestroyCannon,SFX30_DestroyCannonEnd
	dl $849783,$8497D7,SFX31_Pause,SFX31_PauseEnd
	dl $8497D7,$84981F,SFX32_Pause,SFX32_PauseEnd
SoundEffectPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
	dl $849910,$849EC2,BRRFile00,BRRFile00End
	dl $849EC2,$84A55E,BRRFile01,BRRFile01End
	dl $84A55E,$84A690,BRRFile02,BRRFile02End
	dl $84A690,$84A8D0,BRRFile03,BRRFile03End
	dl $84A8D0,$84B1A3,BRRFile04,BRRFile04End
	dl $84B1A3,$84B28D,BRRFile05,BRRFile05End
	dl $84B28D,$84B2CC,BRRFile06,BRRFile06End
	dl $84B2CC,$84B419,BRRFile07,BRRFile07End
	dl $84B419,$84BE15,BRRFile08,BRRFile08End
	dl $84BE15,$84BE42,BRRFile09,BRRFile09End
	dl $84BE42,$84BE66,BRRFile0A,BRRFile0AEnd
	dl $84BE66,$84BEAE,BRRFile0B,BRRFile0BEnd
	dl $84BEAE,$84C39A,BRRFile0C,BRRFile0CEnd
	dl $84C39A,$84C808,BRRFile0D,BRRFile0DEnd
	dl $84C808,$84CA99,BRRFile0E,BRRFile0EEnd
	dl $84CA99,$84D792,BRRFile0F,BRRFile0FEnd
	dl $84D792,$84DD0E,BRRFile10,BRRFile10End
	dl $84DD0E,$84E3D7,BRRFile11,BRRFile11End
	dl $84E3D7,$84E806,BRRFile12,BRRFile12End
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_Sprite_BarrelThrowingNative:
	db "GFX_Sprite_BarrelThrowingNative.bin"
GFX_Sprite_BarrelThrowingNativeEnd:
GFX_Sprite_KeelhaulPete4:
	db "GFX_Sprite_KeelhaulPete4.bin"
GFX_Sprite_KeelhaulPete4End:

;--------------------------------------------------------------------

GFX_Layer1_CapcomLogo:
	db "GFX_Layer1_CapcomLogo.bin"
GFX_Layer1_CapcomLogoEnd:
GFX_Layer3_Fonts:
	db "GFX_Layer3_Fonts.bin"
GFX_Layer3_FontsEnd:
GFX_FGBG_Level1:
	db "GFX_FGBG_Level1.bin"
GFX_FGBG_Level1End:
GFX_FGBG_Level2:
	db "GFX_FGBG_Level2.bin"
GFX_FGBG_Level2End:
GFX_FGBG_Level3:
	db "GFX_FGBG_Level3.bin"
GFX_FGBG_Level3End:
GFX_FGBG_Level4:
	db "GFX_FGBG_Level4.bin"
GFX_FGBG_Level4End:
GFX_FGBG_Level5:
	db "GFX_FGBG_Level5.bin"
GFX_FGBG_Level5End:
GFX_FGBG_TitleScreen:
	db "GFX_FGBG_TitleScreen.bin"
GFX_FGBG_TitleScreenEnd:
GFX_FGBG_PlayerSelectScreen:
	db "GFX_FGBG_PlayerSelectScreen.bin"
GFX_FGBG_PlayerSelectScreenEnd:
GFX_FGBG_MapScreen:
	db "GFX_FGBG_MapScreen.bin"
GFX_FGBG_MapScreenEnd:
GFX_Layer2_PlacedPlankHolesAndGenericFloorSwitches:
	db "GFX_Layer2_PlacedPlankHolesAndGenericFloorSwitches.bin"
GFX_Layer2_PlacedPlankHolesAndGenericFloorSwitchesEnd:
GFX_Layer1_CutsceneImageBorder:
	db "GFX_Layer1_CutsceneImageBorder.bin"
GFX_Layer1_CutsceneImageBorderEnd:
GFX_Layer1_CutsceneImages:
	db "GFX_Layer1_CutsceneImages.bin"
GFX_Layer1_CutsceneImagesEnd:
GFX_Layer1_EndingCutsceneImages:
	db "GFX_Layer1_EndingCutsceneImages.bin"
GFX_Layer1_EndingCutsceneImagesEnd:
GFX_Layer1_PasswordScreen:
	db "GFX_Layer1_PasswordScreen.bin"
GFX_Layer1_PasswordScreenEnd:
GFX_Sprite_Global1:
	db "GFX_Sprite_Global1.bin"
GFX_Sprite_Global1End:
GFX_Sprite_Global2:
	db "GFX_Sprite_Global2.bin"
GFX_Sprite_Global2End:
GFX_Sprite_Global3:
	db "GFX_Sprite_Global3.bin"
GFX_Sprite_Global3End:
GFX_Sprite_Global4:
	db "GFX_Sprite_Global4.bin"
GFX_Sprite_Global4End:
GFX_Sprite_Edgehog:
	db "GFX_Sprite_Edgehog.bin"
GFX_Sprite_EdgehogEnd:
GFX_Sprite_Bee:
	db "GFX_Sprite_Bee.bin"
GFX_Sprite_BeeEnd:
GFX_Sprite_Ghost:
	db "GFX_Sprite_Ghost.bin"
GFX_Sprite_GhostEnd:
GFX_Sprite_Snake:
	db "GFX_Sprite_Snake.bin"
GFX_Sprite_SnakeEnd:
GFX_Sprite_BatAndPirateFlag:
	db "GFX_Sprite_BatAndPirateFlag.bin"
GFX_Sprite_BatAndPirateFlagEnd:
GFX_Sprite_IslanderAndFish:
	db "GFX_Sprite_IslanderAndFish.bin"
GFX_Sprite_IslanderAndFishEnd:
GFX_Sprite_Armor1:
	db "GFX_Sprite_Armor1.bin"
GFX_Sprite_Armor1End:
GFX_Sprite_Armor2:
	db "GFX_Sprite_Armor2.bin"
GFX_Sprite_Armor2End:
GFX_Sprite_SpikedLog:
	db "GFX_Sprite_SpikedLog.bin"
GFX_Sprite_SpikedLogEnd:
GFX_Sprite_SpikedRockAndBoulder:
	db "GFX_Sprite_SpikedRockAndBoulder.bin"
GFX_Sprite_SpikedRockAndBoulderEnd:
GFX_Sprite_Rumbler1:
	db "GFX_Sprite_Rumbler1.bin"
GFX_Sprite_Rumbler1End:
GFX_Sprite_Rumbler2:
	db "GFX_Sprite_Rumbler2.bin"
GFX_Sprite_Rumbler2End:
GFX_Sprite_Cannon1:
	db "GFX_Sprite_Cannon1.bin"
GFX_Sprite_Cannon1End:
GFX_Sprite_Cannon2:
	db "GFX_Sprite_Cannon2.bin"
GFX_Sprite_Cannon2End:
GFX_Sprite_MetalBallsAndSpikeTrap:
	db "GFX_Sprite_MetalBallsAndSpikeTrap.bin"
GFX_Sprite_MetalBallsAndSpikeTrapEnd:
GFX_Sprite_ThrownSword:
	db "GFX_Sprite_ThrownSword.bin"
GFX_Sprite_ThrownSwordEnd:
GFX_Sprite_Frog:
	db "GFX_Sprite_Frog.bin"
GFX_Sprite_FrogEnd:
GFX_Sprite_PlatformsAndDebris:
	db "GFX_Sprite_PlatformsAndDebris.bin"
GFX_Sprite_PlatformsAndDebrisEnd:
GFX_Sprite_ArrowPlatform:
	db "GFX_Sprite_ArrowPlatform.bin"
GFX_Sprite_ArrowPlatformEnd:
GFX_Sprite_Stalactite:
	db "GFX_Sprite_Stalactite.bin"
GFX_Sprite_StalactiteEnd:
GFX_Sprite_SkeletonBoss1:
	db "GFX_Sprite_SkeletonBoss1.bin"
GFX_Sprite_SkeletonBoss1End:
GFX_Sprite_SkeletonBoss2:
	db "GFX_Sprite_SkeletonBoss2.bin"
GFX_Sprite_SkeletonBoss2End:
GFX_Sprite_SkeletonBoss3:
	db "GFX_Sprite_SkeletonBoss3.bin"
GFX_Sprite_SkeletonBoss3End:
GFX_Sprite_EndingCutsceneSprites1:
	db "GFX_Sprite_EndingCutsceneSprites1.bin"
GFX_Sprite_EndingCutsceneSprites1End:
GFX_Sprite_FireBug1:
	db "GFX_Sprite_FireBug1.bin"
GFX_Sprite_FireBug1End:
GFX_Sprite_FireBug2:
	db "GFX_Sprite_FireBug2.bin"
GFX_Sprite_FireBug2End:
GFX_Sprite_FireBug3:
	db "GFX_Sprite_FireBug3.bin"
GFX_Sprite_FireBug3End:
GFX_Sprite_KeelhaulPete1:
	db "GFX_Sprite_KeelhaulPete1.bin"
GFX_Sprite_KeelhaulPete1End:
GFX_Sprite_KeelhaulPete2:
	db "GFX_Sprite_KeelhaulPete2.bin"
GFX_Sprite_KeelhaulPete2End:
GFX_Sprite_KeelhaulPete3:
	db "GFX_Sprite_KeelhaulPete3.bin"
GFX_Sprite_KeelhaulPete3End:
GFX_Sprite_Minecart:
	db "GFX_Sprite_Minecart.bin"
GFX_Sprite_MinecartEnd:
GFX_Sprite_EndingCutsceneSprites2:
	db "GFX_Sprite_EndingCutsceneSprites2.bin"
GFX_Sprite_EndingCutsceneSprites2End:
GFX_Sprite_EndingCutsceneSprites3:
	db "GFX_Sprite_EndingCutsceneSprites3.bin"
GFX_Sprite_EndingCutsceneSprites3End:
GFX_Sprite_EndingCutsceneSprites4:
	db "GFX_Sprite_EndingCutsceneSprites4.bin"
GFX_Sprite_EndingCutsceneSprites4End:
GFX_Sprite_TheEnd:
	db "GFX_Sprite_TheEnd.bin"
GFX_Sprite_TheEndEnd:

;--------------------------------------------------------------------

TM_Layer2_TitleScreen:
	db "Layer2_TitleScreen.bin"
TM_Layer2_TitleScreenEnd:
TM_Layer1_PlayerSelectScreen:
	db "Layer1_PlayerSelectScreen.bin"
TM_Layer1_PlayerSelectScreenEnd:
TM_Layer2_PlayerSelectScreen:
	db "Layer2_PlayerSelectScreen.bin"
TM_Layer2_PlayerSelectScreenEnd:
TM_Layer2_MapScreenPath:
	db "Layer2_MapScreenPath.bin"
TM_Layer2_MapScreenPathEnd:
TM_Layer1_MapScreen:
	db "Layer1_MapScreen.bin"
TM_Layer1_MapScreenEnd:
TM_Layer1_Level1IntroCutscene:
	db "Layer1_Level1IntroCutscene.bin"
TM_Layer1_Level1IntroCutsceneEnd:
TM_Layer1_Level23And4IntroCutscene:
	db "Layer1_Level23And4IntroCutscene.bin"
TM_Layer1_Level23And4IntroCutsceneEnd:
TM_Layer1_Leve51IntroCutscene:
	db "Layer1_Leve51IntroCutscene.bin"
TM_Layer1_Leve51IntroCutsceneEnd:
TM_Layer1_TitleScreen:
	db "Layer1_TitleScreen.bin"
TM_Layer1_TitleScreenEnd:

;--------------------------------------------------------------------

LVL_Level1Screen00:
	db "Level1_Screen00.rdc"
LVL_Level1Screen00End:
LVL_Level1Screen01:
	db "Level1_Screen01.rdc"
LVL_Level1Screen01End:
LVL_Level1Screen02:
	db "Level1_Screen02.rdc"
LVL_Level1Screen02End:
LVL_Level1Screen03:
	db "Level1_Screen03.rdc"
LVL_Level1Screen03End:
LVL_Level1Screen04:
	db "Level1_Screen04.rdc"
LVL_Level1Screen04End:
LVL_Level1Screen05:
	db "Level1_Screen05.rdc"
LVL_Level1Screen05End:
LVL_Level1Screen06:
	db "Level1_Screen06.rdc"
LVL_Level1Screen06End:
LVL_Level1Screen07:
	db "Level1_Screen07.rdc"
LVL_Level1Screen07End:
LVL_Level1Screen08:
	db "Level1_Screen08.rdc"
LVL_Level1Screen08End:
LVL_Level1Screen09:
	db "Level1_Screen09.rdc"
LVL_Level1Screen09End:
LVL_Level1Screen0A:
	db "Level1_Screen0A.rdc"
LVL_Level1Screen0AEnd:
LVL_Level1Screen0B:
	db "Level1_Screen0B.rdc"
LVL_Level1Screen0BEnd:
LVL_Level1Screen0C:
	db "Level1_Screen0C.rdc"
LVL_Level1Screen0CEnd:
LVL_Level1Screen0D:
	db "Level1_Screen0D.rdc"
LVL_Level1Screen0DEnd:
LVL_Level1Screen0E:
	db "Level1_Screen0E.rdc"
LVL_Level1Screen0EEnd:
LVL_Level1Screen0F:
	db "Level1_Screen0F.rdc"
LVL_Level1Screen0FEnd:
LVL_Level2Screen00:
	db "Level2_Screen00.rdc"
LVL_Level2Screen00End:
LVL_Level2Screen01:
	db "Level2_Screen01.rdc"
LVL_Level2Screen01End:
LVL_Level2Screen02:
	db "Level2_Screen02.rdc"
LVL_Level2Screen02End:
LVL_Level2Screen03:
	db "Level2_Screen03.rdc"
LVL_Level2Screen03End:
LVL_Level2Screen04:
	db "Level2_Screen04.rdc"
LVL_Level2Screen04End:
LVL_Level2Screen05:
	db "Level2_Screen05.rdc"
LVL_Level2Screen05End:
LVL_Level2Screen06:
	db "Level2_Screen06.rdc"
LVL_Level2Screen06End:
LVL_Level2Screen07:
	db "Level2_Screen07.rdc"
LVL_Level2Screen07End:
LVL_Level2Screen08:
	db "Level2_Screen08.rdc"
LVL_Level2Screen08End:
LVL_Level2Screen09:
	db "Level2_Screen09.rdc"
LVL_Level2Screen09End:
LVL_Level2Screen0A:
	db "Level2_Screen0A.rdc"
LVL_Level2Screen0AEnd:
LVL_Level2Screen0B:
	db "Level2_Screen0B.rdc"
LVL_Level2Screen0BEnd:
LVL_Level2Screen0C:
	db "Level2_Screen0C.rdc"
LVL_Level2Screen0CEnd:
LVL_Level2Screen0D:
	db "Level2_Screen0D.rdc"
LVL_Level2Screen0DEnd:
LVL_Level2Screen0E:
	db "Level2_Screen0E.rdc"
LVL_Level2Screen0EEnd:
LVL_Level2Screen0F:
	db "Level2_Screen0F.rdc"
LVL_Level2Screen0FEnd:
LVL_Level3Screen00:
	db "Level3_Screen00.rdc"
LVL_Level3Screen00End:
LVL_Level3Screen01:
	db "Level3_Screen01.rdc"
LVL_Level3Screen01End:
LVL_Level3Screen02:
	db "Level3_Screen02.rdc"
LVL_Level3Screen02End:
LVL_Level3Screen03:
	db "Level3_Screen03.rdc"
LVL_Level3Screen03End:
LVL_Level3Screen04:
	db "Level3_Screen04.rdc"
LVL_Level3Screen04End:
LVL_Level3Screen05:
	db "Level3_Screen05.rdc"
LVL_Level3Screen05End:
LVL_Level3Screen06:
	db "Level3_Screen06.rdc"
LVL_Level3Screen06End:
LVL_Level3Screen07:
	db "Level3_Screen07.rdc"
LVL_Level3Screen07End:
LVL_Level3Screen08:
	db "Level3_Screen08.rdc"
LVL_Level3Screen08End:
LVL_Level3Screen09:
	db "Level3_Screen09.rdc"
LVL_Level3Screen09End:
LVL_Level3Screen0A:
	db "Level3_Screen0A.rdc"
LVL_Level3Screen0AEnd:
LVL_Level3Screen0B:
	db "Level3_Screen0B.rdc"
LVL_Level3Screen0BEnd:
LVL_Level3Screen0C:
	db "Level3_Screen0C.rdc"
LVL_Level3Screen0CEnd:
LVL_Level3Screen0D:
	db "Level3_Screen0D.rdc"
LVL_Level3Screen0DEnd:
LVL_Level3Screen0E:
	db "Level3_Screen0E.rdc"
LVL_Level3Screen0EEnd:
LVL_Level3Screen0F:
	db "Level3_Screen0F.rdc"
LVL_Level3Screen0FEnd:
LVL_Level3Screen10:
	db "Level3_Screen10.rdc"
LVL_Level3Screen10End:
LVL_Level3Screen11:
	db "Level3_Screen11.rdc"
LVL_Level3Screen11End:
LVL_Level3Screen12:
	db "Level3_Screen12.rdc"
LVL_Level3Screen12End:
LVL_Level3Screen13:
	db "Level3_Screen13.rdc"
LVL_Level3Screen13End:
LVL_Level3Screen14:
	db "Level3_Screen14.rdc"
LVL_Level3Screen14End:
LVL_Level3Screen15:
	db "Level3_Screen15.rdc"
LVL_Level3Screen15End:
LVL_Level3Screen16:
	db "Level3_Screen16.rdc"
LVL_Level3Screen16End:
LVL_Level3Screen17:
	db "Level3_Screen17.rdc"
LVL_Level3Screen17End:
LVL_Level3Screen18:
	db "Level3_Screen18.rdc"
LVL_Level3Screen18End:
LVL_Level3Screen19:
	db "Level3_Screen19.rdc"
LVL_Level3Screen19End:
LVL_Level4Screen00:
	db "Level4_Screen00.rdc"
LVL_Level4Screen00End:
LVL_Level4Screen01:
	db "Level4_Screen01.rdc"
LVL_Level4Screen01End:
LVL_Level4Screen02:
	db "Level4_Screen02.rdc"
LVL_Level4Screen02End:
LVL_Level4Screen03:
	db "Level4_Screen03.rdc"
LVL_Level4Screen03End:
LVL_Level4Screen04:
	db "Level4_Screen04.rdc"
LVL_Level4Screen04End:
LVL_Level4Screen05:
	db "Level4_Screen05.rdc"
LVL_Level4Screen05End:
LVL_Level4Screen06:
	db "Level4_Screen06.rdc"
LVL_Level4Screen06End:
LVL_Level4Screen07:
	db "Level4_Screen07.rdc"
LVL_Level4Screen07End:
LVL_Level4Screen08:
	db "Level4_Screen08.rdc"
LVL_Level4Screen08End:
LVL_Level4Screen09:
	db "Level4_Screen09.rdc"
LVL_Level4Screen09End:
LVL_Level4Screen0A:
	db "Level4_Screen0A.rdc"
LVL_Level4Screen0AEnd:
LVL_Level4Screen0B:
	db "Level4_Screen0B.rdc"
LVL_Level4Screen0BEnd:
LVL_Level4Screen0C:
	db "Level4_Screen0C.rdc"
LVL_Level4Screen0CEnd:
LVL_Level4Screen0D:
	db "Level4_Screen0D.rdc"
LVL_Level4Screen0DEnd:
LVL_Level4Screen0E:
	db "Level4_Screen0E.rdc"
LVL_Level4Screen0EEnd:
LVL_Level4Screen0F:
	db "Level4_Screen0F.rdc"
LVL_Level4Screen0FEnd:
LVL_Level4Screen10:
	db "Level4_Screen10.rdc"
LVL_Level4Screen10End:
LVL_Level4Screen11:
	db "Level4_Screen11.rdc"
LVL_Level4Screen11End:
LVL_Level4Screen12:
	db "Level4_Screen12.rdc"
LVL_Level4Screen12End:
LVL_Level4Screen13:
	db "Level4_Screen13.rdc"
LVL_Level4Screen13End:
LVL_Level4Screen14:
	db "Level4_Screen14.rdc"
LVL_Level4Screen14End:
LVL_Level4Screen15:
	db "Level4_Screen15.rdc"
LVL_Level4Screen15End:
LVL_Level4Screen16:
	db "Level4_Screen16.rdc"
LVL_Level4Screen16End:
LVL_Level4Screen17:
	db "Level4_Screen17.rdc"
LVL_Level4Screen17End:
LVL_Level4Screen18:
	db "Level4_Screen18.rdc"
LVL_Level4Screen18End:
LVL_Level4Screen19:
	db "Level4_Screen19.rdc"
LVL_Level4Screen19End:
LVL_Level4Screen1A:
	db "Level4_Screen1A.rdc"
LVL_Level4Screen1AEnd:
LVL_Level4Screen1B:
	db "Level4_Screen1B.rdc"
LVL_Level4Screen1BEnd:
LVL_Level4Screen1C:
	db "Level4_Screen1C.rdc"
LVL_Level4Screen1CEnd:
LVL_Level4Screen1D:
	db "Level4_Screen1D.rdc"
LVL_Level4Screen1DEnd:
LVL_Level5Screen00:
	db "Level5_Screen00.rdc"
LVL_Level5Screen00End:
LVL_Level5Screen01:
	db "Level5_Screen01.rdc"
LVL_Level5Screen01End:
LVL_Level5Screen02:
	db "Level5_Screen02.rdc"
LVL_Level5Screen02End:
LVL_Level5Screen03:
	db "Level5_Screen03.rdc"
LVL_Level5Screen03End:
LVL_Level5Screen04:
	db "Level5_Screen04.rdc"
LVL_Level5Screen04End:
LVL_Level5Screen05:
	db "Level5_Screen05.rdc"
LVL_Level5Screen05End:
LVL_Level5Screen06:
	db "Level5_Screen06.rdc"
LVL_Level5Screen06End:
LVL_Level5Screen07:
	db "Level5_Screen07.rdc"
LVL_Level5Screen07End:
LVL_Level5Screen08:
	db "Level5_Screen08.rdc"
LVL_Level5Screen08End:
LVL_Level5Screen09:
	db "Level5_Screen09.rdc"
LVL_Level5Screen09End:
LVL_Level5Screen0A:
	db "Level5_Screen0A.rdc"
LVL_Level5Screen0AEnd:
LVL_Level5Screen0B:
	db "Level5_Screen0B.rdc"
LVL_Level5Screen0BEnd:
LVL_Level5Screen0C:
	db "Level5_Screen0C.rdc"
LVL_Level5Screen0CEnd:
LVL_Level5Screen0D:
	db "Level5_Screen0D.rdc"
LVL_Level5Screen0DEnd:
LVL_Level5Screen0E:
	db "Level5_Screen0E.rdc"
LVL_Level5Screen0EEnd:
LVL_Level5Screen0F:
	db "Level5_Screen0F.rdc"
LVL_Level5Screen0FEnd:
LVL_Level5Screen10:
	db "Level5_Screen10.rdc"
LVL_Level5Screen10End:
LVL_Level5Screen11:
	db "Level5_Screen11.rdc"
LVL_Level5Screen11End:
LVL_Level5Screen12:
	db "Level5_Screen12.rdc"
LVL_Level5Screen12End:
LVL_Level5Screen13:
	db "Level5_Screen13.rdc"
LVL_Level5Screen13End:
LVL_Level5Screen14:
	db "Level5_Screen14.rdc"
LVL_Level5Screen14End:
LVL_Level5Screen15:
	db "Level5_Screen15.rdc"
LVL_Level5Screen15End:
LVL_Level5Screen16:
	db "Level5_Screen16.rdc"
LVL_Level5Screen16End:
LVL_Level5Screen17:
	db "Level5_Screen17.rdc"
LVL_Level5Screen17End:
LVL_Level5Screen18:
	db "Level5_Screen18.rdc"
LVL_Level5Screen18End:
LVL_Level5Screen19:
	db "Level5_Screen19.rdc"
LVL_Level5Screen19End:

;--------------------------------------------------------------------

M16_Map16:
	db "Map16.bin"
M16_Map16End:

;--------------------------------------------------------------------

PAL_Sprite_Goofy:
	db "Sprite_Goofy.bin"
PAL_Sprite_GoofyEnd:
PAL_Sprite_Max:
	db "Sprite_Max.bin"
PAL_Sprite_MaxEnd:
PAL_Sprite_Global1:
	db "Sprite_Global1.bin"
PAL_Sprite_Global1End:
PAL_Sprite_Global2:
	db "Sprite_Global2.bin"
PAL_Sprite_Global2End:
PAL_Sprite_Edgehog:
	db "Sprite_Edgehog.bin"
PAL_Sprite_EdgehogEnd:
PAL_Sprite_Bee:
	db "Sprite_Bee.bin"
PAL_Sprite_BeeEnd:
PAL_Sprite_Jolly:
	db "Sprite_Jolly.bin"
PAL_Sprite_JollyEnd:
PAL_Sprite_Jack:
	db "Sprite_Jack.bin"
PAL_Sprite_JackEnd:
PAL_Sprite_Jester:
	db "Sprite_Jester.bin"
PAL_Sprite_JesterEnd:
PAL_Sprite_BlueCannon:
	db "Sprite_BlueCannon.bin"
PAL_Sprite_BlueCannonEnd:
PAL_Sprite_Snake:
	db "Sprite_Snake.bin"
PAL_Sprite_SnakeEnd:
PAL_Sprite_Roger:
	db "Sprite_Roger.bin"
PAL_Sprite_RogerEnd:
PAL_Sprite_Rob:
	db "Sprite_Rob.bin"
PAL_Sprite_RobEnd:
PAL_Sprite_Rap:
	db "Sprite_Rap.bin"
PAL_Sprite_RapEnd:
PAL_Sprite_RedCannon:
	db "Sprite_RedCannon.bin"
PAL_Sprite_RedCannonEnd:
PAL_Sprite_Unknown1:
	db "Sprite_Unknown1.bin"
PAL_Sprite_Unknown1End:
PAL_Sprite_Armor:
	db "Sprite_Armor.bin"
PAL_Sprite_ArmorEnd:
PAL_Sprite_BlueSkeleton:
	db "Sprite_BlueSkeleton.bin"
PAL_Sprite_BlueSkeletonEnd:
PAL_Sprite_RedSkeleton:
	db "Sprite_RedSkeleton.bin"
PAL_Sprite_RedSkeletonEnd:
PAL_Sprite_GreenRumbler:
	db "Sprite_GreenRumbler.bin"
PAL_Sprite_GreenRumblerEnd:
PAL_Sprite_Unknown2:
	db "Sprite_Unknown2.bin"
PAL_Sprite_Unknown2End:
PAL_Sprite_Unknown3:
	db "Sprite_Unknown3.bin"
PAL_Sprite_Unknown3End:
PAL_Sprite_FireBug:
	db "Sprite_FireBug.bin"
PAL_Sprite_FireBugEnd:
PAL_Sprite_KeelhaulPete:
	db "Sprite_KeelhaulPete.bin"
PAL_Sprite_KeelhaulPeteEnd:
PAL_Sprite_RedRumbler:
	db "Sprite_RedRumbler.bin"
PAL_Sprite_RedRumblerEnd:
PAL_Sprite_Frog:
	db "Sprite_Frog.bin"
PAL_Sprite_FrogEnd:
PAL_Sprite_Stalactite:
	db "Sprite_Stalactite.bin"
PAL_Sprite_StalactiteEnd:
PAL_Sprite_Ramble:
	db "Sprite_Ramble.bin"
PAL_Sprite_RambleEnd:
PAL_Sprite_Unknown4:
	db "Sprite_Unknown4.bin"
PAL_Sprite_Unknown4End:
PAL_Sprite_PirateFlag:
	db "Sprite_PirateFlag.bin"
PAL_Sprite_PirateFlagEnd:
PAL_Sprite_Unknown5:
	db "Sprite_Unknown5.bin"
PAL_Sprite_Unknown5End:
PAL_Sprite_Unknown6:
	db "Sprite_Unknown6.bin"
PAL_Sprite_Unknown6End:
PAL_Layer3_Global:
	db "Layer3_Global.bin"
PAL_Layer3_GlobalEnd:
PAL_Layer3_OptionsMenuScreen:
	db "Layer3_OptionsMenuScreen.bin"
PAL_Layer3_OptionsMenuScreenEnd:
PAL_Layer2_ContinueScreen:
	db "Layer2_ContinueScreen.bin"
PAL_Layer2_ContinueScreenEnd:
PAL_Layer2_PlayerSelectScreen:
	db "Layer2_PlayerSelectScreen.bin"
PAL_Layer2_PlayerSelectScreenEnd:
PAL_FGBG_MapScreen:
	db "FGBG_MapScreen.bin"
PAL_FGBG_MapScreenEnd:
PAL_Layer1_PlayerSelectScreenText:
	db "Layer1_PlayerSelectScreenText.bin"
PAL_Layer1_PlayerSelectScreenTextEnd:
PAL_Layer1_HighlightedPlayerSelectScreenOption:
	db "Layer1_HighlightedPlayerSelectScreenOption.bin"
PAL_Layer1_HighlightedPlayerSelectScreenOptionEnd:
PAL_Layer1_UnhighlightedPlayerSelectScreenOption:
	db "Layer1_UnhighlightedPlayerSelectScreenOption.bin"
PAL_Layer1_UnhighlightedPlayerSelectScreenOptionEnd:
PAL_Layer1_SelectedPlayerSelectScreenOption:
	db "Layer1_SelectedPlayerSelectScreenOption.bin"
PAL_Layer1_SelectedPlayerSelectScreenOptionEnd:
PAL_Layer1_CapcomLogo:
	db "Layer1_CapcomLogo.bin"
PAL_Layer1_CapcomLogoEnd:
PAL_Layer1_TitleScreenLogoShine1:
	db "Layer1_TitleScreenLogoShine1.bin"
PAL_Layer1_TitleScreenLogoShine1End:
PAL_Layer1_TitleScreenLogoShine2:
	db "Layer1_TitleScreenLogoShine2.bin"
PAL_Layer1_TitleScreenLogoShine2End:
PAL_UnknownPalette1:
	db "UnknownPalette1.bin"
PAL_UnknownPalette1End:
PAL_Layer2_AnimatedLevel1StillWater:
	db "Layer2_AnimatedLevel1StillWater.bin"
PAL_Layer2_AnimatedLevel1StillWaterEnd:
PAL_FGBG_Level1:
	db "FGBG_Level1.bin"
PAL_FGBG_Level1End:
PAL_FGBG_Global:
	db "FGBG_Global.bin"
PAL_FGBG_GlobalEnd:
PAL_UnknownPalette2:
	db "UnknownPalette2.bin"
PAL_UnknownPalette2End:
PAL_Layer2_MovingHoleRoom:
	db "Layer2_MovingHoleRoom.bin"
PAL_Layer2_MovingHoleRoomEnd:
PAL_Layer1_TitleScreenLogoShine3:
	db "Layer1_TitleScreenLogoShine3.bin"
PAL_Layer1_TitleScreenLogoShine3End:
PAL_FGBG_Level2:
	db "FGBG_Level2.bin"
PAL_FGBG_Level2End:
PAL_Layer2_AnimatedLevel2StillWater:
	db "Layer2_AnimatedLevel2StillWater.bin"
PAL_Layer2_AnimatedLevel2StillWaterEnd:
PAL_FGBG_Level4_Grey:
	db "FGBG_Level4_Grey.bin"
PAL_FGBG_Level4_GreyEnd:
PAL_FGBG_Level4_Icy1:
	db "FGBG_Level4_Icy1.bin"
PAL_FGBG_Level4_Icy1End:
PAL_Layer1_FrozenDoor:
	db "Layer1_FrozenDoor.bin"
PAL_Layer1_FrozenDoorEnd:
PAL_Layer1_Level4_IcyRoomTorches1:
	db "Layer1_Level4_IcyRoomTorches1.bin"
PAL_Layer1_Level4_IcyRoomTorches1End:
PAL_FGBG_Level3_Floor1:
	db "FGBG_Level3_Floor1.bin"
PAL_FGBG_Level3_Floor1End:
PAL_FGBG_Level3_Floor2:
	db "FGBG_Level3_Floor2.bin"
PAL_FGBG_Level3_Floor2End:
PAL_FGBG_Level3_Floor3:
	db "FGBG_Level3_Floor3.bin"
PAL_FGBG_Level3_Floor3End:
PAL_FGBG_Level3_Outside:
	db "FGBG_Level3_Outside.bin"
PAL_FGBG_Level3_OutsideEnd:
PAL_Layer2_AnimatedWallCandle:
	db "Layer2_AnimatedWallCandle.bin"
PAL_Layer2_AnimatedWallCandleEnd:
PAL_Layer2_MapScreen:
	db "Layer2_MapScreen.bin"
PAL_Layer2_MapScreenEnd:
PAL_Layer1_TitleScreenLogoShine4:
	db "Layer1_TitleScreenLogoShine4.bin"
PAL_Layer1_TitleScreenLogoShine4End:
PAL_Layer2_AnimatedWaterWave:
	db "Layer2_AnimatedWaterWave.bin"
PAL_Layer2_AnimatedWaterWaveEnd:
PAL_FGBG_Level5_Main:
	db "FGBG_Level5_Main.bin"
PAL_FGBG_Level5_MainEnd:
PAL_FGBG_Level5_WallSwordsAndChests:
	db "FGBG_Level5_WallSwordsAndChests.bin"
PAL_FGBG_Level5_WallSwordsAndChestsEnd:
PAL_FGBG_Level5_TreasureRoomSparkles:
	db "FGBG_Level5_TreasureRoomSparkles.bin"
PAL_FGBG_Level5_TreasureRoomSparklesEnd:
PAL_Layer2_AnimatedLava1:
	db "Layer2_AnimatedLava1.bin"
PAL_Layer2_AnimatedLava1End:
PAL_UnknownPalette3:
	db "UnknownPalette3.bin"
PAL_UnknownPalette3End:
PAL_Layer2_AnimatedCampfire1:
	db "Layer2_AnimatedCampfire1.bin"
PAL_Layer2_AnimatedCampfire1End:
PAL_Layer2_AnimatedLava2:
	db "Layer2_AnimatedLava2.bin"
PAL_Layer2_AnimatedLava2End:
PAL_Layer1_PressedWallSwitch:
	db "Layer1_PressedWallSwitch.bin"
PAL_Layer1_PressedWallSwitchEnd:
PAL_FGBG_Level4_Brown:
	db "FGBG_Level4_Brown.bin"
PAL_FGBG_Level4_BrownEnd:
PAL_UnknownPalette4:
	db "UnknownPalette4.bin"
PAL_UnknownPalette4End:
PAL_AnimatedWallLantern:
	db "Layer1_AnimatedWallLantern.bin"
PAL_AnimatedWallLanternEnd:
PAL_Layer2_AnimatedFlowingWater:
	db "Layer2_AnimatedFlowingWater.bin"
PAL_Layer2_AnimatedFlowingWaterEnd:
PAL_Layer2_PressedGreyAndYellowButton:
	db "Layer2_PressedGreyAndYellowButton.bin"
PAL_Layer2_PressedGreyAndYellowButtonEnd:
PAL_FGBG_Level5_DiningRoom:
	db "FGBG_Level5_DiningRoom.bin"
PAL_FGBG_Level5_DiningRoomEnd:
PAL_Layer3_Credits:
	db "Layer3_Credits.bin"
PAL_Layer3_CreditsEnd:
PAL_Layer1_AnimatedWaterfall:
	db "Layer1_AnimatedWaterfall.bin"
PAL_Layer1_AnimatedWaterfallEnd:
PAL_UnknownPalette5:
	db "UnknownPalette5.bin"
PAL_UnknownPalette5End:
PAL_Layer2_AnimatedLevel4StillWater:
	db "Layer2_AnimatedLevel4StillWater.bin"
PAL_Layer2_AnimatedLevel4StillWaterEnd:
PAL_FGBG_Level4_Icy2:
	db "FGBG_Level4_Icy2.bin"
PAL_FGBG_Level4_Icy2End:
PAL_FGBG_Level4_BossRoomWalls:
	db "FGBG_Level4_BossRoomWalls.bin"
PAL_FGBG_Level4_BossRoomWallsEnd:
PAL_UnknownPalette6:
	db "UnknownPalette6.bin"
PAL_UnknownPalette6End:
PAL_Layer1_Level4_WallSkull:
	db "Layer1_Level4_WallSkull.bin"
PAL_Layer1_Level4_WallSkullEnd:
PAL_Layer2_UnusedAnimatedLava1:
	db "Layer2_UnusedAnimatedLava1.bin"
PAL_Layer2_UnusedAnimatedLava1End:
PAL_Layer1_CutsceneBorder:
	db "Layer1_CutsceneBorder.bin"
PAL_Layer1_CutsceneBorderEnd:
PAL_Layer1_IntroCutscene1:
	db "Layer1_IntroCutscene1.bin"
PAL_Layer1_IntroCutscene1End:
PAL_Layer1_IntroCutscene2:
	db "Layer1_IntroCutscene2.bin"
PAL_Layer1_IntroCutscene2End:
PAL_Layer1_IntroCutscene3:
	db "Layer1_IntroCutscene3.bin"
PAL_Layer1_IntroCutscene3End:
PAL_Layer1_IntroCutscene4:
	db "Layer1_IntroCutscene4.bin"
PAL_Layer1_IntroCutscene4End:
PAL_Layer1_TitleScreen:
	db "Layer1_TitleScreen.bin"
PAL_Layer1_TitleScreenEnd:
PAL_Layer1_SelectedTitleScreenOption:
	db "Layer1_SelectedTitleScreenOption.bin"
PAL_Layer1_SelectedTitleScreenOptionEnd:
PAL_Layer1_UnhighlightedTitleScreenOption:
	db "Layer1_UnhighlightedTitleScreenOption.bin"
PAL_Layer1_UnhighlightedTitleScreenOptionEnd:
PAL_Layer1_Level4_IcyRoomTorches2:
	db "Layer1_Level4_IcyRoomTorches2.bin"
PAL_Layer1_Level4_IcyRoomTorches2End:
PAL_UnknownPalette7:
	db "UnknownPalette7.bin"
PAL_UnknownPalette7End:
PAL_Layer2_UnusedAnimatedLava2:
	db "Layer2_UnusedAnimatedLava2.bin"
PAL_Layer2_UnusedAnimatedLava2End:
PAL_UnknownPalette8:
	db "UnknownPalette8.bin"
PAL_UnknownPalette8End:
PAL_FGBG_Level4_BossRoomFloor:
	db "FGBG_Level4_BossRoomFloor.bin"
PAL_FGBG_Level4_BossRoomFloorEnd:
PAL_FGBG_Level4_Green:
	db "FGBG_Level4_Green.bin"
PAL_FGBG_Level4_GreenEnd:
PAL_UnknownPalette9:
	db "UnknownPalette9.bin"
PAL_UnknownPalette9End:
PAL_Layer1_PasswordScreen:
	db "Layer1_PasswordScreen.bin"
PAL_Layer1_PasswordScreenEnd:
PAL_UnknownPalette10:
	db "UnknownPalette10.bin"
PAL_UnknownPalette10End:
PAL_Layer1_AnimatedPasswordScreenStars:
	db "Layer1_AnimatedPasswordScreenStars.bin"
PAL_Layer1_AnimatedPasswordScreenStarsEnd:
PAL_Layer2_AnimatedCampfire2:
	db "Layer2_AnimatedCampfire2.bin"
PAL_Layer2_AnimatedCampfire2End:
PAL_Layer2_GameOverScreen:
	db "Layer2_GameOverScreen.bin"
PAL_Layer2_GameOverScreenEnd:
PAL_Sprite_Ending:
	db "Sprite_Ending.bin"
PAL_Sprite_EndingEnd:

;--------------------------------------------------------------------

UNK_80F373:
	db "UNK_80F373.bin"
UNK_80F373End:
UNK_81FF33:
	db "UNK_81FF33.bin"
UNK_81FF33End:
UNK_82CD41:
	db "UNK_82CD41.bin"
UNK_82CD41End:
UNK_83FADB:
	db "UNK_83FADB.bin"
UNK_83FADBEnd:
UNK_85A796:
	db "UNK_85A796.bin"
UNK_85A796End:
UNK_88FDFE:
	db "UNK_88FDFE.bin"
UNK_88FDFEEnd:
UNK_89F055:
	db "UNK_89F055.bin"
UNK_89F055End:
UNK_89FD48:
	db "UNK_89FD48.bin"
UNK_89FD48End:
UNK_8ABF70:
	db "UNK_8ABF70.bin"
UNK_8ABF70End:
UNK_8ADFB8:
	db "UNK_8ADFB8.bin"
UNK_8ADFB8End:
UNK_8AFE00:
	db "UNK_8AFE00.bin"
UNK_8AFE00End:
UNK_8BE240:
	db "UNK_8BE240.bin"
UNK_8BE240End:
UNK_8BFBD4:
	db "UNK_8BFBD4.bin"
UNK_8BFBD4End:
UNK_8FB5BE:
	db "UNK_8FB5BE.bin"
UNK_8FB5BEEnd:
UNK_8FFB20:
	db "UNK_8FFB20.bin"
UNK_8FFB20End:
UNK_8FFE4B:
	db "UNK_8FFE4B.bin"
UNK_8FFE4BEnd:
UNK_8FFECD:
	db "UNK_8FFECD.bin"
UNK_8FFECDEnd:
UNK_8FFFAF:
	db "UNK_8FFFAF.bin"
UNK_8FFFAFEnd:

;--------------------------------------------------------------------

Music_Capcom:
	db "Capcom.bin"
Music_CapcomEnd:
Music_ToTheSouth:
	db "ToTheSouth.bin"
Music_ToTheSouthEnd:
Music_Illusion:
	db "Illusion.bin"
Music_IllusionEnd:
Music_LoseMyWay:
	db "LoseMyWay.bin"
Music_LoseMyWayEnd:
Music_SeaRobber:
	db "SeaRobber.bin"
Music_SeaRobberEnd:
Music_LetsStart:
	db "LetsStart.bin"
Music_LetsStartEnd:
Music_Break:
	db "Break.bin"
Music_BreakEnd:
Music_Map:
	db "Map.bin"
Music_MapEnd:
Music_GoOn:
	db "GoOn.bin"
Music_GoOnEnd:
Music_TheEnd:
	db "TheEnd.bin"
Music_TheEndEnd:
Music_GoofyOrMax:
	db "GoofyOrMax.bin"
Music_GoofyOrMaxEnd:
Music_FightFight:
	db "FightFight.bin"
Music_FightFightEnd:
Music_Satisfied:
	db "Satisfied.bin"
Music_SatisfiedEnd:
Music_Flashback:
	db "Flashback.bin"
Music_FlashbackEnd:
Music_Hamlet:
	db "Hamlet.bin"
Music_HamletEnd:
Music_FightABattle:
	db "FightABattle.bin"
Music_FightABattleEnd:
Music_StaffRoll:
	db "StaffRoll.bin"
Music_StaffRollEnd:
Music_GameOver:
	db "GameOver.bin"
Music_GameOverEnd:
Music_Rest:
	db "Rest.bin"
Music_RestEnd:

;--------------------------------------------------------------------

SFX01_Whistle:
	db "SFX01_Whistle.bin"
SFX01_WhistleEnd:
SFX02_Break:
	db "SFX02_Break.bin"
SFX02_BreakEnd:
SFX03_ConfirmSelection:
	db "SFX03_ConfirmSelection.bin"
SFX03_ConfirmSelectionEnd:
SFX04_Unknown:
	db "SFX04_Unknown.bin"
SFX04_UnknownEnd:
SFX05_OpenCastleDoor:
	db "SFX05_OpenCastleDoor.bin"
SFX05_OpenCastleDoorEnd:
SFX06_MoveSelection:
	db "SFX06_MoveSelection.bin"
SFX06_MoveSelectionEnd:
SFX07_PressSwitch:
	db "SFX07_PressSwitch.bin"
SFX07_PressSwitchEnd:
SFX08_CannonShoot:
	db "SFX08_CannonShoot.bin"
SFX08_CannonShootEnd:
SFX09_Explosion:
	db "SFX09_Explosion.bin"
SFX09_ExplosionEnd:
SFX0A_RingBell:
	db "SFX0A_RingBell.bin"
SFX0A_RingBellEnd:
SFX0B_Hurt:
	db "SFX0B_Hurt.bin"
SFX0B_HurtEnd:
SFX0C_UnlockDoor:
	db "SFX0C_UnlockDoor.bin"
SFX0C_UnlockDoorEnd:
SFX0D_LostLife:
	db "SFX0D_LostLife.bin"
SFX0D_LostLifeEnd:
SFX0E_ObjectFellInPit:
	db "SFX0E_ObjectFellInPit.bin"
SFX0E_ObjectFellInPitEnd:
SFX0F_WaterRipple:
	db "SFX0F_WaterRipple.bin"
SFX0F_WaterRippleEnd:
SFX10_ExtraLife:
	db "SFX10_ExtraLife.bin"
SFX10_ExtraLifeEnd:
SFX11_Unknown:
	db "SFX11_Unknown.bin"
SFX11_UnknownEnd:
SFX12_DefeatEnemy:
	db "SFX12_DefeatEnemy.bin"
SFX12_DefeatEnemyEnd:
SFX13_BreakMirror:
	db "SFX13_BreakMirror.bin"
SFX13_BreakMirrorEnd:
SFX14_MovingMinecart:
	db "SFX14_MovingMinecart.bin"
SFX14_MovingMinecartEnd:
SFX15_Waterfall:
	db "SFX15_Waterfall.bin"
SFX15_WaterfallEnd:
SFX16_Waves:
	db "SFX16_Waves.bin"
SFX16_WavesEnd:
SFX17_HitWallWithGrapple:
	db "SFX17_HitWallWithGrapple.bin"
SFX17_HitWallWithGrappleEnd:
SFX18_HitWallWithBlock:
	db "SFX18_HitWallWithBlock.bin"
SFX18_HitWallWithBlockEnd:
SFX19_RockBounce:
	db "SFX19_RockBounce.bin"
SFX19_RockBounceEnd:
SFX1A_Wrong:
	db "SFX1A_Wrong.bin"
SFX1A_WrongEnd:
SFX1B_Dig:
	db "SFX1B_Dig.bin"
SFX1B_DigEnd:
SFX1C_CollectFruit:
	db "SFX1C_CollectFruit.bin"
SFX1C_CollectFruitEnd:
SFX1D_StunWithGrapple:
	db "SFX1D_StunWithGrapple.bin"
SFX1D_StunWithGrappleEnd:
SFX1E_BuildCastleBridge:
	db "SFX1E_BuildCastleBridge.bin"
SFX1E_BuildCastleBridgeEnd:
SFX1F_GotItem:
	db "SFX1F_GotItem.bin"
SFX1F_GotItemEnd:
SFX20_CloseDoor:
	db "SFX20_CloseDoor.bin"
SFX20_CloseDoorEnd:
SFX21_OpenGate:
	db "SFX21_OpenGate.bin"
SFX21_OpenGateEnd:
SFX22_FireShoot:
	db "SFX22_FireShoot.bin"
SFX22_FireShootEnd:
SFX23_FireBugSwing:
	db "SFX23_FireBugSwing.bin"
SFX23_FireBugSwingEnd:
SFX24_KeelhaulPeteSpin:
	db "SFX24_KeelhaulPeteSpin.bin"
SFX24_KeelhaulPeteSpinEnd:
SFX25_Earthquake:
	db "SFX25_Earthquake.bin"
SFX25_EarthquakeEnd:
SFX26_ThrowBones:
	db "SFX26_ThrowBones.bin"
SFX26_ThrowBonesEnd:
SFX27_RapRecoil:
	db "SFX27_RapRecoil.bin"
SFX27_RapRecoilEnd:
SFX28_CaughtByHook:
	db "SFX28_CaughtByHook.bin"
SFX28_CaughtByHookEnd:
SFX29_Unknown:
	db "SFX29_Unknown.bin"
SFX29_UnknownEnd:
SFX2A_HurtSkeleton:
	db "SFX2A_HurtSkeleton.bin"
SFX2A_HurtSkeletonEnd:
SFX2B_KeelhaulPeteShoot:
	db "SFX2B_KeelhaulPeteShoot.bin"
SFX2B_KeelhaulPeteShootEnd:
SFX2C_KeelhaulPeteLand:
	db "SFX2C_KeelhaulPeteLand.bin"
SFX2C_KeelhaulPeteLandEnd:
SFX2D_BreakArmor:
	db "SFX2D_BreakArmor.bin"
SFX2D_BreakArmorEnd:
SFX2E_ExtraContinue:
	db "SFX2E_ExtraContinue.bin"
SFX2E_ExtraContinueEnd:
SFX2F_CatchThrownItem:
	db "SFX2F_CatchThrownItem.bin"
SFX2F_CatchThrownItemEnd:
SFX30_DestroyCannon:
	db "SFX30_DestroyCannon.bin"
SFX30_DestroyCannonEnd:
SFX31_Pause:
	db "SFX31_Pause.bin"
SFX31_PauseEnd:
SFX32_Pause:
	db "SFX32_Pause.bin"
SFX32_PauseEnd:

;--------------------------------------------------------------------

BRRFile00:
	db "00.brr"
BRRFile00End:
BRRFile01:
	db "01.brr"
BRRFile01End:
BRRFile02:
	db "02.brr"
BRRFile02End:
BRRFile03:
	db "03.brr"
BRRFile03End:
BRRFile04:
	db "04.brr"
BRRFile04End:
BRRFile05:
	db "05.brr"
BRRFile05End:
BRRFile06:
	db "06.brr"
BRRFile06End:
BRRFile07:
	db "07.brr"
BRRFile07End:
BRRFile08:
	db "08.brr"
BRRFile08End:
BRRFile09:
	db "09.brr"
BRRFile09End:
BRRFile0A:
	db "0A.brr"
BRRFile0AEnd:
BRRFile0B:
	db "0B.brr"
BRRFile0BEnd:
BRRFile0C:
	db "0C.brr"
BRRFile0CEnd:
BRRFile0D:
	db "0D.brr"
BRRFile0DEnd:
BRRFile0E:
	db "0E.brr"
BRRFile0EEnd:
BRRFile0F:
	db "0F.brr"
BRRFile0FEnd:
BRRFile10:
	db "10.brr"
BRRFile10End:
BRRFile11:
	db "11.brr"
BRRFile11End:
BRRFile12:
	db "12.brr"
BRRFile12End:

;--------------------------------------------------------------------
