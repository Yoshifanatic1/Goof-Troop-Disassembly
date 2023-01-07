
macro GOOFT_GameSpecificAssemblySettings()
	!ROM_GOOFT_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_GOOFT_E = $0002							;|
	!ROM_GOOFT_J = $0004							;|
	!ROM_GOOFT_F = $0008							;|
	!ROM_GOOFT_G = $0010							;/

!Define_GOOFT_Global_DisableCopyDetection = !FALSE

	%SetROMToAssembleForHack(GOOFT_U, !ROMID)
endmacro

macro GOOFT_LoadGameSpecificMainSNESFiles()
	incsrc ../SPC700/ARAMPtrs_GOOFT.asm
	incsrc ../Misc_Defines_GOOFT.asm
	incsrc ../RAM_Map_GOOFT.asm
	incsrc ../Routine_Macros_GOOFT.asm
	incsrc ../SNES_Macros_GOOFT.asm
	%LoadExtraRAMFile("SRAM_Map_GOOFT.asm", !GameID, GOOFT)
endmacro

macro GOOFT_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_GOOFT.asm
	incsrc ../Misc_Defines_GOOFT.asm
	incsrc ../SPC700/SPC700_Routine_Macros_GOOFT.asm
	incsrc ../SPC700/SPC700_Macros_GOOFT.asm
endmacro

macro GOOFT_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro GOOFT_LoadGameSpecificMSU1Files()
endmacro

macro GOOFT_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_ApplyDefaultPatches = !TRUE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $00
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 3
	!Define_Global_ROMFrameworkSubSubVer = 0
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Capcom"
	!Define_Global_DeveloperName = "Capcom"
	!Define_Global_ReleaseDate = "July 1993"
	!Define_Global_BaseROMMD5Hash = "bb6a1198e291c8ae58e9581a4296ed4d"

	!Define_Global_MakerCode = "08"
	!Define_Global_GameCode = "Axxx"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "GOOF TROOP           "
	!Define_Global_ROMLayout = !ROMLayout_LoROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize1 = !ROMSize_512KB
	!Define_Global_ROMSize2 = !ROMSize_0KB
	!Define_Global_SRAMSize = !SRAMSize_0KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $08
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $5AD0
	!UnusedNativeModeVector1 = $5020
	!UnusedNativeModeVector2 = $6F72
	!NativeModeCOPVector = CODE_80FFBC
	!NativeModeBRKVector = CODE_80FFBC
	!NativeModeAbortVector = CODE_80FFBC
	!NativeModeNMIVector = CODE_80FFB4
	!NativeModeResetVector = CODE_80FFBC
	!NativeModeIRQVector = CODE_80FFB8
	!UnusedEmulationModeVector1 = $4D20
	!UnusedEmulationModeVector2 = $202E
	!EmulationModeCOPVector = CODE_80FFBC
	!EmulationModeBRKVector = CODE_80FFBC
	!EmulationModeAbortVector = CODE_80FFBC
	!EmulationModeNMIVector = CODE_80FFBC
	!EmulationModeResetVector = CODE_80FFB0
	!EmulationModeIRQVector = CODE_80FFBC
endmacro

macro GOOFT_LoadROMMap()
	%GOOFTBank80Macros(!BANK_00, !BANK_00)
	%GOOFTBank81Macros(!BANK_01, !BANK_01)
	%GOOFTBank82Macros(!BANK_02, !BANK_02)
	%GOOFTBank83Macros(!BANK_03, !BANK_03)
	%GOOFTBank84Macros(!BANK_04, !BANK_08)
	%GOOFTBank89Macros(!BANK_09, !BANK_09)
	%GOOFTBank8AMacros(!BANK_0A, !BANK_0A)
	%GOOFTBank8BMacros(!BANK_0B, !BANK_0B)
	%GOOFTBank8CMacros(!BANK_0C, !BANK_0F)
endmacro

;#############################################################################################################
;#############################################################################################################

macro GOOFT_LoadSPC700ROMMap()
%SPC700RoutinePointer(GOOFT_DATA_0D10, GOOFT_SPC700Block0Start, GOOFT_SPC700Block0End)
%SPC700RoutinePointer(GOOFT_SPC700Engine_Main, GOOFT_SPC700Block1Start, GOOFT_SPC700Block1End)
%SPC700RoutinePointer(GOOFT_SoundEffectBank_DATA_4000, GOOFT_SPC700Block2Start, GOOFT_SPC700Block2End)
%SPC700RoutinePointer(GOOFT_GlobalSampleBank_Ptrs, GOOFT_SPC700Block3Start, GOOFT_SPC700Block3End)
%SPC700RoutinePointer(GOOFT_Music_Capcom, GOOFT_SPC700Block4Start, GOOFT_SPC700Block4End)
%SPC700RoutinePointer(GOOFT_Music_ToTheSouth, GOOFT_SPC700Block5Start, GOOFT_SPC700Block5End)
%SPC700RoutinePointer(GOOFT_Music_Illusion, GOOFT_SPC700Block6Start, GOOFT_SPC700Block6End)
%SPC700RoutinePointer(GOOFT_Music_LoseMyWay, GOOFT_SPC700Block7Start, GOOFT_SPC700Block7End)
%SPC700RoutinePointer(GOOFT_Music_SeaRobber, GOOFT_SPC700Block8Start, GOOFT_SPC700Block8End)
%SPC700RoutinePointer(GOOFT_Music_LetsStart, GOOFT_SPC700Block9Start, GOOFT_SPC700Block9End)
%SPC700RoutinePointer(GOOFT_Music_Break, GOOFT_SPC700Block10Start, GOOFT_SPC700Block10End)
%SPC700RoutinePointer(GOOFT_Music_Map, GOOFT_SPC700Block11Start, GOOFT_SPC700Block11End)
%SPC700RoutinePointer(GOOFT_Music_GoOn, GOOFT_SPC700Block12Start, GOOFT_SPC700Block12End)
%SPC700RoutinePointer(GOOFT_Music_TheEnd, GOOFT_SPC700Block13Start, GOOFT_SPC700Block13End)
%SPC700RoutinePointer(GOOFT_Music_GoofyOrMax, GOOFT_SPC700Block14Start, GOOFT_SPC700Block14End)
%SPC700RoutinePointer(GOOFT_Music_FightFight, GOOFT_SPC700Block15Start, GOOFT_SPC700Block15End)
%SPC700RoutinePointer(GOOFT_Music_Satisfied, GOOFT_SPC700Block16Start, GOOFT_SPC700Block16End)
%SPC700RoutinePointer(GOOFT_Music_Flashback, GOOFT_SPC700Block17Start, GOOFT_SPC700Block17End)
%SPC700RoutinePointer(GOOFT_Music_Hamlet, GOOFT_SPC700Block18Start, GOOFT_SPC700Block18End)
%SPC700RoutinePointer(GOOFT_Music_FightABattle, GOOFT_SPC700Block19Start, GOOFT_SPC700Block19End)
%SPC700RoutinePointer(GOOFT_Music_StaffRoll, GOOFT_SPC700Block20Start, GOOFT_SPC700Block20End)
%SPC700RoutinePointer(GOOFT_Music_GameOver, GOOFT_SPC700Block21Start, GOOFT_SPC700Block21End)
%SPC700RoutinePointer(GOOFT_Music_Rest, GOOFT_SPC700Block22Start, GOOFT_SPC700Block22End)

GOOFT_SPC700Block0Start:
	%SPC700_GOOFT_DATA_0D10($0D10)
GOOFT_SPC700Block0End:
GOOFT_SPC700Block1Start:
	%SPC700_GOOFT_SPC700Engine($02C0)
GOOFT_SPC700Block1End:
GOOFT_SPC700Block2Start:
	%SPC700_GOOFT_SoundEffectBank($4000)
GOOFT_SPC700Block2End:
GOOFT_SPC700Block3Start:
	%SPC700_GOOFT_GlobalSampleBank($5000)
GOOFT_SPC700Block3End:
GOOFT_SPC700Block4Start:
	%SPC700_GOOFT_Music_Capcom(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block4End:
GOOFT_SPC700Block5Start:
	%SPC700_GOOFT_Music_ToTheSouth(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block5End:
GOOFT_SPC700Block6Start:
	%SPC700_GOOFT_Music_Illusion(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block6End:
GOOFT_SPC700Block7Start:
	%SPC700_GOOFT_Music_LoseMyWay(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block7End:
GOOFT_SPC700Block8Start:
	%SPC700_GOOFT_Music_SeaRobber(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block8End:
GOOFT_SPC700Block9Start:
	%SPC700_GOOFT_Music_LetsStart(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block9End:
GOOFT_SPC700Block10Start:
	%SPC700_GOOFT_Music_Break(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block10End:
GOOFT_SPC700Block11Start:
	%SPC700_GOOFT_Music_Map(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block11End:
GOOFT_SPC700Block12Start:
	%SPC700_GOOFT_Music_GoOn(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block12End:
GOOFT_SPC700Block13Start:
	%SPC700_GOOFT_Music_TheEnd(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block13End:
GOOFT_SPC700Block14Start:
	%SPC700_GOOFT_Music_GoofyOrMax(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block14End:
GOOFT_SPC700Block15Start:
	%SPC700_GOOFT_Music_FightFight(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block15End:
GOOFT_SPC700Block16Start:
	%SPC700_GOOFT_Music_Satisfied(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block16End:
GOOFT_SPC700Block17Start:
	%SPC700_GOOFT_Music_Flashback(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block17End:
GOOFT_SPC700Block18Start:
	%SPC700_GOOFT_Music_Hamlet(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block18End:
GOOFT_SPC700Block19Start:
	%SPC700_GOOFT_Music_FightABattle(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block19End:
GOOFT_SPC700Block20Start:
	%SPC700_GOOFT_Music_StaffRoll(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block20End:
GOOFT_SPC700Block21Start:
	%SPC700_GOOFT_Music_GameOver(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block21End:
GOOFT_SPC700Block22Start:
	%SPC700_GOOFT_Music_Rest(!ARAM_GOOFT_MusicDataStart)
GOOFT_SPC700Block22End:
endmacro

;#############################################################################################################
;#############################################################################################################

macro GOOFT_LoadSuperFXROMMap()
endmacro

;#############################################################################################################
;#############################################################################################################

macro GOOFT_LoadMSU1ROMMap()
endmacro

;#############################################################################################################
;#############################################################################################################
