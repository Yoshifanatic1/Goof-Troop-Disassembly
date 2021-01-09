
macro GOOFT_GameSpecificAssemblySettings()
	!ROM_GOOFT_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_GOOFT_E = $0002							;|
	!ROM_GOOFT_J = $0004							;|
	!ROM_GOOFT_F = $0008							;|
	!ROM_GOOFT_G = $0010							;/

	%SetROMToAssembleForHack(GOOFT_U, !ROMID)
endmacro

macro GOOFT_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_GOOFT.asm
	incsrc ../RAM_Map_GOOFT.asm
	incsrc ../Routine_Macros_GOOFT.asm
	incsrc ../SNES_Macros_GOOFT.asm
endmacro

macro GOOFT_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_GOOFT.asm
	incsrc ../Misc_Defines_GOOFT.asm
	incsrc ../SPC700/SPC700_Macros_GOOFT.asm
endmacro

macro GOOFT_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro GOOFT_LoadGameSpecificMSU1Files()
endmacro

macro GOOFT_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $00
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 0
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
	!Define_Global_ROMSize = !ROMSize_512KB
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
	%LoadExtraRAMFile("SRAM_Map_GOOFT.asm")
endmacro

macro GOOFT_LoadROMMap()
	%GOOFTBank80Macros(!BANK_00, !BANK_00)
	%GOOFTBank81Macros(!BANK_01, !BANK_01)
	%GOOFTBank82Macros(!BANK_02, !BANK_02)
	%GOOFTBank83Macros(!BANK_03, !BANK_03)
	%GOOFTBank84Macros(!BANK_04, !BANK_04)
	%GOOFTBank85Macros(!BANK_05, !BANK_05)
	%GOOFTBank86Macros(!BANK_06, !BANK_06)
	%GOOFTBank87Macros(!BANK_07, !BANK_07)
	%GOOFTBank88Macros(!BANK_08, !BANK_08)
	%GOOFTBank89Macros(!BANK_09, !BANK_09)
	%GOOFTBank8AMacros(!BANK_0A, !BANK_0A)
	%GOOFTBank8BMacros(!BANK_0B, !BANK_0B)
	%GOOFTBank8CMacros(!BANK_0C, !BANK_0C)
	%GOOFTBank8DMacros(!BANK_0D, !BANK_0D)
	%GOOFTBank8EMacros(!BANK_0E, !BANK_0E)
	%GOOFTBank8FMacros(!BANK_0F, !BANK_0F)
endmacro
