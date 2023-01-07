
;#############################################################################################################
;#############################################################################################################

macro SPC700_GOOFT_DATA_0D10(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT

DATA_0D10:
	db $40,$42,$00,$00,$C0

DATA_0D15:
	db $08,$28,$03,$44,$44,$DC,$14,$C0,$08,$40,$03
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_SPC700Engine(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_SPC700Engine

Main:
	CLRP
	MOV X, #$CF
	MOV SP, X
	MOV A, #$00
	MOV X, A
CODE_02C7:
	MOV (X+), A
	CMP X, #$E0
	BNE CODE_02C7
	SETP
	MOV X, A
CODE_02CE:
	MOV (X+), A
	CMP X, #$B0
	BNE CODE_02CE
	CLRP
	MOV X, A
CODE_02D5:
	MOV $0200+x, A
	INC X
	CMP X, #$C0
	BNE CODE_02D5
	CALL CODE_0436
	MOV A, #$40
	MOV !REGISTER_SPC700_Timer0, A
	MOV A, #$F1
	MOV !REGISTER_SPC700_ControlRegister, A
	MOV A, #$01
	MOV $B2, A
	MOV !REGISTER_SPC700_APUPort2, A
	DEC A
	MOV !REGISTER_SPC700_APUPort3, A
CODE_02F5:
	CALL CODE_044F
	MOV A, !REGISTER_SPC700_Counter0
	CLRC
	ADC A, $B1
	MOV $B1, A
	BEQ CODE_02F5
	DEC $B1
	MOV Y, #$02
	MOV A, #$F5
	PUSH Y
	PUSH A
	CLRC
	ADC $B0, #$80
	BPL CODE_0313
	JMP CODE_039E

CODE_0313:
	CMP $CC, $CD
	BEQ CODE_032D
	BBS7 $CD, CODE_0329
	MOV Y, #!REGISTER_DSP_DSPStatusFlags
	MOV A, #$00
	CALL CODE_0CD6
	MOV Y, #!REGISTER_DSP_EchoEnable
	MOV A, #$FF
	CALL CODE_0CD6
CODE_0329:
	INC $CD
	BRA CODE_0348

CODE_032D:
	MOV Y, #!REGISTER_DSP_EchoEnable
	MOV A, $B8
	EOR A, #$FF
	AND A, $BC
	OR A, $B7
	CALL CODE_0CD6
	MOV Y, #!REGISTER_DSP_EchoLeftVolume
	MOV A, $CE
	CALL CODE_0CD6
	MOV Y, #!REGISTER_DSP_EchoRightVolume
	MOV A, $CF
	CALL CODE_0CD6
CODE_0348:
	MOV X, #$07
	MOV Y, #$57
	MOV A, $BA
	OR A, $B5
	PUSH A
CODE_0351:
	PUSH Y
	BBC7 $B5, CODE_035F
	MOV A, $0238+y
	MOV $A3, A
	MOV A, $0240+y
	BRA CODE_037A

CODE_035F:
	BBC7 $BD, CODE_036F
	MOV A, $0250+x
	CALL CODE_08D5
	SETP
	CALL CODE_0C04
	CALL CODE_0B32
CODE_036F:
	BBC7 $BA, CODE_0386
	MOV A, $0238+x
	MOV $A3, A
	MOV A, $0240+x
CODE_037A:
	MOV Y, #$07
	CALL CODE_0CCB
	MOV Y, #$05
	MOV A, $A3
	CALL CODE_0CCB
CODE_0386:
	ASL $B5
	ASL $BD
	ASL $BA
	POP Y
	DEC Y
	DEC X
	BPL CODE_0351
	MOV Y, #!REGISTER_DSP_KeyOffBits
	MOV A, #$00
	CALL CODE_0CD6
	POP A
	MOV Y, #!REGISTER_DSP_KeyOnBits
	JMP CODE_0CD6

CODE_039E:
	CLR7 $B0
	BBS6 $B0, CODE_03DC
	MOV $B3, #$80
	MOV $B9, $B8
	MOV X, #$07
	MOVW YA, $BE
	ADDW YA, $C0
	MOVW $A9, YA
	MOV Y, #$00
	MOV A, $C2
	ADDW YA, $A9
	MOV $A8, Y
	MOV $C2, A
CODE_03BB:
	MOV A, $08+x
	OR A, $00+x
	BEQ CODE_03C4
	CALL CODE_06C2
CODE_03C4:
	DEC X
	ASL $B9
	LSR $B3
	BNE CODE_03BB
	MOVW YA, $C7
	ADDW YA, $C9
	BCC CODE_03DA
	MOV $C7, #$00
	MOV $C8, #$00
	MOV Y, #$FF
	MOV A, Y
CODE_03DA:
	MOVW $C9, YA
CODE_03DC:
	SET7 $B0
	MOV $B3, #$80
	MOV $B9, #$00
	MOV X, #$57
CODE_03E6:
	MOV A, $B8
	AND A, $B3
	BEQ CODE_0405
	MOV A, $0260+x
	MOV $AA, A
	MOV A, $0258+x
	MOV $A9, A
	MOV Y, #$00
	MOV A, $0268+x
	ADDW YA, $A9
	MOV $A8, Y
	MOV $0268+x, A
	CALL CODE_06C2
CODE_0405:
	DEC X
	LSR $B3
	BNE CODE_03E6
	MOV A, #!REGISTER_DSP_KeyOnBits
	MOV !REGISTER_SPC700_DSPRegisterIndex, A
	MOV A, !REGISTER_SPC700_ReadWriteToDSPRegister
	MOV $A3, A
	MOV A, $B6
	OR A, $BB
	AND A, $A3
	MOV Y, #!REGISTER_DSP_KeyOffBits
	MOV $B6, #$00
	MOV $BB, #$00
	JMP CODE_0CD6

CODE_0425:
	MOV Y, #$07
	MOV A, #$9E
	CALL CODE_0CCB
CODE_042C:
	MOV Y, #$05
	MOV A, $0238+x
	AND A, #$7F
	JMP CODE_0CCB

CODE_0436:
	MOV Y, #$03
CODE_0438:
	MOV A, DATA_0449-$01+y
	MOV !REGISTER_SPC700_DSPRegisterIndex, A
	MOV A, DATA_044C-$01+y
	MOV !REGISTER_SPC700_ReadWriteToDSPRegister, A
	DBNZ Y, CODE_0438
	JMP CODE_0A15

DATA_0449:
	db !REGISTER_DSP_PitchModulation,!REGISTER_DSP_NoiseEnable,!REGISTER_DSP_SourceDirectoryOffset

DATA_044C:
	db $00,$00,GOOFT_GlobalSampleBank_Ptrs>>8

CODE_044F:
	MOV A, !REGISTER_SPC700_APUPort0
	CMP A, !REGISTER_SPC700_APUPort0
	BNE CODE_044F
	MOV Y, A
	BEQ CODE_046E
	PUSH A
	INC $B2
	CALL CODE_046F
	MOV A, #$31
	MOV !REGISTER_SPC700_ControlRegister, A
	MOV A, $B2
	MOV !REGISTER_SPC700_APUPort2, A
	POP A
	MOV !REGISTER_SPC700_APUPort3, A
CODE_046E:
	RET

CODE_046F:
	CMP A, #$F0
	BCC CODE_0476
	JMP CODE_051B

CODE_0476:
	CMP A, GOOFT_SoundEffectBank_DATA_4000
	BCC CODE_0481
	SETC
	SBC A, GOOFT_SoundEffectBank_DATA_4000
	BRA CODE_0476

CODE_0481:
	ASL A
	MOV X, A
	MOV A,GOOFT_SoundEffectBank_DATA_4002+x
	MOV $A1, A
	MOV A, GOOFT_SoundEffectBank_DATA_4002+$01+x
	MOV $A0, A
	OR A, $A1
	BEQ CODE_046E
	MOV Y, #$00
	MOV A, ($A0)+y
	BNE CODE_049A
	JMP CODE_0581

CODE_049A:
	MOV $A4, A
	MOV $B3, #$80
	MOV X, #$57
CODE_04A1:
	MOV Y, #$00
	INCW $A0
	MOV A, ($A0)+y
	MOV $A3, A
	INCW $A0
	MOV A, ($A0)+y
	MOV $A2, A
	MOV A, ($A2)+y
	CMP A, #$17
	BEQ CODE_04EF
	MOV A, $A4
	CMP A, $0250+x
	BCC CODE_04EF
	OR $B8, $B3
	MOV A, $B3
	EOR A, #$FF
	MOV $A5, A
	AND $B7, $A5
	AND $BA, $A5
	CALL CODE_04F5
	CALL CODE_0425
	MOV A, $A4
	MOV $0250+x, A
	MOVW YA, $A2
	MOV $08+x, Y
	MOV $00+x, A
	MOV A, #$10
	MOV $0100+x, A
	MOV A, #$B8
	MOV $0240+x, A
	MOV A, !REGISTER_SPC700_APUPort1
	CLRC
	ADC A, #$80
	MOV $0248+x, A
CODE_04EF:
	DEC X
	LSR $B3
	BNE CODE_04A1
	RET

CODE_04F5:
	MOV A, X
	CLRC
	ADC A, #$08
CODE_04F9:
	MOV Y, A
	MOV A, #$00
	MOV $0200+y, A
	MOV A, Y
	CLRC
	ADC A, #$08
	CMP A, #$C0
	BCC CODE_04F9
	SETP
	CALL CODE_050C
	CLRP
CODE_050C:
	PUSH X
CODE_050D:
	MOV A, #$00
	MOV (X), A
	MOV A, X
	CLRC
	ADC A, #$08
	MOV X, A
	CMP X, #$A0
	BCC CODE_050D
	POP X
	RET

CODE_051B:
	AND A, #$0F
	ASL A
	MOV X, A
	JMP (DATA_0522+x)

DATA_0522:
	dw CODE_053E
	dw CODE_0541
	dw CODE_055A
	dw CODE_05ED
	dw CODE_05F1
	dw CODE_0627
	dw CODE_062B
	dw CODE_0661
	dw CODE_0664
	dw CODE_0667
	dw CODE_0578
	dw CODE_057B
	dw CODE_05C2
	dw CODE_05E7

CODE_053E:
	CALL CODE_055A
CODE_0541:
	MOV $B3, #$80
	MOV X, #$57
CODE_0546:
	BBC7 $B8, CODE_054C
	CALL CODE_09AD
CODE_054C:
	DEC X
	ASL $B8
	LSR $B3
	BNE CODE_0546
	MOV $B5, #$00
	MOV $B7, #$00
	RET

CODE_055A:
	CALL CODE_060A
	MOV A, #$00
	MOV $BC, A
	MOV X, #$08
CODE_0563:
	MOV $0200+x, A
	INC X
	CMP X, #$58
	BNE CODE_0563
	SETP
	CALL CODE_0570
	CLRP
CODE_0570:
	MOV X, #$00
CODE_0572:
	MOV (X+), A
	CMP X, #$50
	BNE CODE_0572
	RET

CODE_0578:
	CALL CODE_0667
CODE_057B:
	MOV $A1, #(!ARAM_GOOFT_MusicDataStart-$01)>>8
	MOV $A0, #!ARAM_GOOFT_MusicDataStart-$01
CODE_0581:
	CALL CODE_055A
	MOV Y, #$00
	MOV A, Y
	MOVW $C0, YA
	MOV $C4, A
	MOV $C5, A
	DEC A
	MOV $C3, A
	CALL CODE_0656
	MOV X, #$07
CODE_0595:
	MOV Y, #$00
	INCW $A0
	MOV A, ($A0)+y
	MOV $A3, A
	INCW $A0
	MOV A, ($A0)+y
	MOV $A2, A
	MOV A, ($A2)+y
	CMP A, #$17
	BEQ CODE_05BE
	MOVW YA, $A2
	MOV $08+x, Y
	MOV $00+x, A
	MOV A, #$10
	MOV $0100+x, A
	MOV A, #$B8
	MOV $0240+x, A
	MOV A, #$80
	MOV $0248+x, A
CODE_05BE:
	DEC X
	BPL CODE_0595
	RET

CODE_05C2:
	MOV A, !REGISTER_SPC700_APUPort1
	PUSH P
	BPL CODE_05CB
	EOR A, #$FF
	INC A
CODE_05CB:
	PUSH A
	MOV Y, #$69
	MUL YA
	MOV $A3, #$00
	MOV $A2, Y
	POP A
	MOV Y, #$03
	MUL YA
	ADDW YA, $A2
	POP P
	BPL CODE_05E4
	MOVW $A2, YA
	MOV Y, #$00
	MOV A, Y
	SUBW YA, $A2
CODE_05E4:
	MOVW $C0, YA
	RET

CODE_05E7:
	MOV A, !REGISTER_SPC700_APUPort1
	MOV $C5, A
	RET

CODE_05ED:
	SET6 $B0
	BRA CODE_060A

CODE_05F1:
	CLR6 $B0
	MOV $BA, #$00
	MOV $B3, #$80
	MOV X, #$57
CODE_05FB:
	MOV A, $B8
	AND A, $B3
	BNE CODE_0604
	CALL CODE_09B8
CODE_0604:
	DEC X
	LSR $B3
	BNE CODE_05FB
	RET

CODE_060A:
	MOV X, #$07
	MOV $B3, #$80
CODE_060F:
	MOV A, $B8
	AND A, $B3
	BNE CODE_061B
	CALL CODE_0425
	OR $BB, $B3
CODE_061B:
	DEC X
	LSR $B3
	BNE CODE_060F
	MOV $BA, #$00
	MOV $BD, #$00
	RET

CODE_0627:
	MOV X, #$FF
	BRA CODE_062D

CODE_062B:
	MOV X, #$01
CODE_062D:
	CMP X, $C6
	BEQ CODE_064D
	MOV A, !REGISTER_SPC700_APUPort2
	OR A, !REGISTER_SPC700_APUPort3
	BEQ CODE_0656
	MOV A, !REGISTER_SPC700_APUPort2
	MOV Y, !REGISTER_SPC700_APUPort3
	ASL $C6
	BEQ CODE_064E
	CALL CODE_065C
	MOV Y, #$FF
	MOV A, Y
	SUBW YA, $C9
	MOVW $C9, YA
CODE_064D:
	RET

CODE_064E:
	MOV $C9, #$00
	MOV $CA, #$00
	BRA CODE_065C

CODE_0656:
	MOV A, #$00
	MOV Y, A
	MOV X, A
	MOVW $C9, YA
CODE_065C:
	MOVW $C7, YA
	MOV $C6, X
	RET

CODE_0661:
	CLR5 $B0
	RET

CODE_0664:
	SET5 $B0
	RET

CODE_0667:
	CALL CODE_053E
	MOV A, #$AA
	MOV !REGISTER_SPC700_APUPort0, A
	MOV A, #$BB
	MOV !REGISTER_SPC700_APUPort1, A
CODE_0674:
	MOV A, !REGISTER_SPC700_APUPort0
	CMP A, #$CC
	BNE CODE_0674
	BRA CODE_069D

CODE_067D:
	MOV Y, !REGISTER_SPC700_APUPort0
	BNE CODE_067D
CODE_0682:
	CMP Y, !REGISTER_SPC700_APUPort0
	BNE CODE_0696
	MOV A, !REGISTER_SPC700_APUPort1
	MOV !REGISTER_SPC700_APUPort0, Y
	MOV ($A0)+y, A
	INC Y
	BNE CODE_0682
	INC $A1
	BRA CODE_0682

CODE_0696:
	BPL CODE_0682
	CMP Y, !REGISTER_SPC700_APUPort0
	BPL CODE_0682
CODE_069D:
	MOV A, !REGISTER_SPC700_APUPort2
	MOV Y, !REGISTER_SPC700_APUPort3
	MOVW $A0, YA
	MOV Y, !REGISTER_SPC700_APUPort0
	MOV A, !REGISTER_SPC700_APUPort1
	BEQ CODE_06B2
	MOV !REGISTER_SPC700_APUPort0, Y
	BRA CODE_067D

CODE_06B2:
	MOV !REGISTER_SPC700_APUPort2, A
	INC A
	MOV $B2, A
	MOV A, !REGISTER_SPC700_Counter0
	MOV $B1, #$00
	MOV !REGISTER_SPC700_APUPort0, Y
	RET

CODE_06C2:
	MOV $B4, $B3
	EOR $B4, #$FF
	MOV A, $18+x
	BEQ CODE_06FA
	MOV Y, $28+x
	MOV A, Y
	OR A, $20+x
	BEQ CODE_06E8
	MOV A, $20+x
	SUBW YA, $A9
	BEQ CODE_06DB
	BCS CODE_06E4
CODE_06DB:
	BBS7 $B9, CODE_06E1
	CALL CODE_042C
CODE_06E1:
	MOV Y, #$00
	MOV A, Y
CODE_06E4:
	MOV $28+x, Y
	MOV $20+x, A
CODE_06E8:
	MOV A, $18+x
	SETC
	SBC A, $A8
	MOV $18+x, A
	BEQ CODE_06FA
	BCC CODE_06FA
	CMP A, #$C1
	BCS CODE_06FA
	JMP CODE_0ADE

CODE_06FA:
	MOV Y, #CODE_0703>>8
	MOV A, #CODE_0703
	PUSH Y
	PUSH A
	JMP CODE_0814

CODE_0703:
	PUSH A
	XCN A
	LSR A
	AND A, #$07
	DEC A
	MOV Y, A
	MOV A, $10+x
	AND A, #$30
	BNE CODE_0715
	MOV A, DATA_07F6+y
	BRA CODE_0727

CODE_0715:
	AND A, #$10
	BNE CODE_071E
	MOV A, DATA_07EF+y
	BRA CODE_0727

CODE_071E:
	MOV A, $10+x
	AND A, #$EF
	MOV $10+x, A
	MOV A, DATA_07FD+y
CODE_0727:
	CLRC
	ADC A, $18+x
	MOV $18+x, A
	POP A
	AND A, #$1F
	BNE CODE_0732
	RET

CODE_0732:
	PUSH A
	MOV A, $10+x
	AND A, #$0F
	MOV Y, A
	POP A
	CLRC
	ADC A, DATA_0804+y
	BBS7 $B0, CODE_0743
	CLRC
	ADC A, $C4
CODE_0743:
	CLRC
	ADC A, $0210+x
	MOV $A1, A
	MOV $A0, #$00
	MOV Y, #$00
	MOV A, $0218+x
	BPL CODE_0754
	DEC Y
CODE_0754:
	ADDW YA, $A0
	CMP Y, #$61
	BCC CODE_075C
	MOV Y, #$60
CODE_075C:
	SETP
	MOVW $A2, YA
	MOV A, $00+x
	MOV $A4, A
	CLR0 $A4
	MOV A, $28+x
	BEQ CODE_0771
	MOV A, $40+x
	BEQ CODE_0771
	CMP A, $A3
	BNE CODE_0775
CODE_0771:
	MOV A, $A2
	BRA CODE_0783

CODE_0775:
	BCS CODE_077B
	SET1 $A4
	BRA CODE_077D

CODE_077B:
	CLR1 $A4
CODE_077D:
	INC $A4
	MOV Y, $40+x
	MOV A, $48+x
CODE_0783:
	PUSH A
	MOV A, $A4
	MOV $00+x, A
	MOV A, $A3
	MOV $40+x, A
	MOV A, $A2
	MOV $48+x, A
	POP A
	MOV $30+x, Y
	MOV $38+x, A
	CLRP
	MOV A, $10+x
	BMI CODE_07C4
	MOV A, $0100+x
	MOV Y, A
	AND A, #$10
	BEQ CODE_07AD
	MOV A, Y
	AND A, #$3F
	MOV $0100+x, A
	MOV A, #$00
	MOV $0120+x, A
CODE_07AD:
	BBC7 $B0, CODE_07B8
	OR $B5, $B3
	OR $B6, $B3
	BRA CODE_07C1

CODE_07B8:
	BBS7 $B9, CODE_07CE
	OR $BA, $B3
	OR $BB, $B3
CODE_07C1:
	CALL CODE_0425
CODE_07C4:
	BBS7 $B9, CODE_07CE
	SETP
	CALL CODE_0C04
	CALL CODE_0B32
CODE_07CE:
	MOV A, $10+x
	MOV Y, A
	AND A, #$7F
	MOV $A3, A
	MOV A, Y
	AND A, #$40
	ASL A
	OR A, $A3
	MOV $10+x, A
	BPL CODE_07E4
	MOV Y, #$00
	MOV A, Y
	BRA CODE_07EA

CODE_07E4:
	MOV Y, $18+x
	MOV A, $0208+x
	MUL YA
CODE_07EA:
	MOV $28+x, Y
	MOV $20+x, A
	RET

DATA_07EF:
	db $02,$04,$08,$10,$20,$40,$80

DATA_07F6:
	db $03,$06,$0C,$18,$30,$60,$C0

DATA_07FD:
	db $00,$09,$12,$24,$48,$90,$00

DATA_0804:
	db $00,$0C,$18,$24,$30,$3C,$48,$54,$18,$24,$30,$3C,$48,$54,$60,$6C

CODE_0814:
	CALL CODE_0831
	CMP A, #$20
	BCS CODE_0841
	MOV $A7, A
	MOV Y, #$08
	PUSH Y
	MOV Y, #$14
	PUSH Y
	ASL A
	MOV Y, A
	MOV A, DATA_0842+$01+y
	PUSH A
	MOV A, DATA_0842+y
	PUSH A
	CMP Y, #$08
	BCC CODE_0841
CODE_0831:
	MOV Y, $08+x
	MOV A, $00+x
	MOVW $A0, YA
	MOV Y, #$00
	MOV A, ($A0)+y
	INC $00+x
	BNE CODE_0841
	INC $08+x
CODE_0841:
	RET

DATA_0842:
	dw CODE_0882
	dw CODE_0886
	dw CODE_088A
	dw CODE_0890
	dw CODE_0982
	dw CODE_0897
	dw CODE_08B2
	dw CODE_08B6
	dw CODE_08CB
	dw CODE_090D
	dw CODE_0918
	dw CODE_091E
	dw CODE_0922
	dw CODE_0926
	dw CODE_092A
	dw CODE_092E
	dw CODE_0932
	dw CODE_0936
	dw CODE_092A
	dw CODE_092E
	dw CODE_0932
	dw CODE_0936
	dw CODE_096C
	dw CODE_098D
	dw CODE_09D2
	dw CODE_09D9
	dw CODE_09E3
	dw CODE_0A09
	dw CODE_0ABE
	dw CODE_0AD8
	dw CODE_0841
	dw CODE_0841

CODE_0882:
	MOV A, #$20
	BRA CODE_0892

CODE_0886:
	MOV A, #$40
	BRA CODE_0892

CODE_088A:
	MOV A, #$10
	OR A, $10+x
	BRA CODE_0894

CODE_0890:
	MOV A, #$08
CODE_0892:
	EOR A, $10+x
CODE_0894:
	MOV $10+x, A
	RET

CODE_0897:
	PUSH A
	CALL CODE_0831
	POP Y
	BBC7 $B0, CODE_08AC
	MOV $0258+x, A
	MOV A, Y
	MOV $0260+x, A
	MOV A, #$00
	MOV $0268+x, A
	RET

CODE_08AC:
	MOVW $BE, YA
	MOV $C2, #$00
	RET

CODE_08B2:
	MOV $0208+x, A
	RET

CODE_08B6:
	MOV Y, A
	CALL CODE_0BA9
	BBS7 $B0, CODE_08C7
	PUSH A
	MOV Y, GOOFT_SoundEffectBank_DATA_4001
	CALL CODE_0BA9
	POP Y
	MUL YA
	MOV A, Y
CODE_08C7:
	MOV $0230+x, A
	RET

CODE_08CB:
	BBS7 $B0, CODE_08D6
	INC A
	MOV $0250+x, A
	BBS7 $B9, CODE_090C
CODE_08D5:
	DEC A
CODE_08D6:
	MOV Y, #$06
	MUL YA
	MOVW $A0, YA
	CLRC
	ADC $A0, #$5C
	ADC $A1, #$50
	MOV Y, #$01
	MOV A, ($A0)+y
	MOV $0238+x, A
	DEC Y
	PUSH X
	MOV A, X
	XCN A
	AND A, #$70
	OR A, #$04
	MOV X, A
CODE_08F2:
	MOV A, ($A0)+y
	MOV !REGISTER_SPC700_DSPRegisterIndex, X
	MOV !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC X
	INC Y
	CMP Y, #$04
	BNE CODE_08F2
	POP X
	MOV A, ($A0)+y
	MOV $0220+x, A
	INC Y
	MOV A, ($A0)+y
	MOV $0228+x, A
CODE_090C:
	RET

CODE_090D:
	MOV $A3, A
	MOV A, $10+x
	AND A, #$F8
	OR A, $A3
	MOV $10+x, A
	RET

CODE_0918:
	BBS7 $B0, CODE_091D
	MOV $C4, A
CODE_091D:
	RET

CODE_091E:
	MOV $0210+x, A
	RET

CODE_0922:
	MOV $0218+x, A
	RET

CODE_0926:
	MOV $0128+x, A
	RET

CODE_092A:
	MOV Y, #$30
	BRA CODE_0938

CODE_092E:
	MOV Y, #$38
	BRA CODE_0938

CODE_0932:
	MOV Y, #$40
	BRA CODE_0938

CODE_0936:
	MOV Y, #$48
CODE_0938:
	MOV $A3, A
	MOV $A0, Y
	MOV A, X
	CLRC
	ADC A, $A0
	MOV Y, A
	MOV $A1, #$00
	MOV $A0, #$00
	CMP $A7, #$12
	BCS CODE_095D
	MOV A, ($A0)+y
	BEQ CODE_0957
	DEC A
	MOV ($A0)+y, A
	BEQ CODE_0976
	BRA CODE_0969

CODE_0957:
	MOV A, $A3
	MOV ($A0)+y, A
	BRA CODE_0969

CODE_095D:
	MOV A, ($A0)+y
	DEC A
	BNE CODE_0976
	MOV ($A0)+y, A
	MOV A, $A3
	CALL CODE_0982
CODE_0969:
	CALL CODE_0831
CODE_096C:
	PUSH A
	CALL CODE_0831
	MOV $00+x, A
	POP A
	MOV $08+x, A
	RET

CODE_0976:
	MOV A, #$02
	CLRC
	ADC A, $00+x
	MOV $00+x, A
	BCC CODE_0981
	INC $08+x
CODE_0981:
	RET

CODE_0982:
	MOV $A3, A
	MOV A, $10+x
	AND A, #$97
	OR A, $A3
	MOV $10+x, A
	RET

CODE_098D:
	POP A
	POP A
	POP A
	POP A
	BBS7 $B0, CODE_09A7
	MOV A, #$00
	MOV $08+x, A
	MOV $00+x, A
	MOV $0250+x, A
	BBS7 $B9, CODE_09A6
	CALL CODE_0425
	OR $BB, $B3
CODE_09A6:
	RET

CODE_09A7:
	AND $B8, $B4
	AND $B7, $B4
CODE_09AD:
	MOV A, #$00
	MOV $0250+x, A
	CALL CODE_0425
	OR $B6, $B3
CODE_09B8:
	PUSH X
	MOV A, X
	SETC
	SBC A, #$50
	MOV X, A
	MOV A, $0250+x
	BEQ CODE_09D0
	OR $BD, $B3
	BBS6 $B0, CODE_09D0
	MOV A, $10+x
	BPL CODE_09D0
	OR $BA, $B3
CODE_09D0:
	POP X
	RET

CODE_09D2:
	CLRC
	ADC A, #$80
	MOV $0248+x, A
	RET

CODE_09D9:
	BBS7 $B0, CODE_09E2
	MOV Y, A
	CALL CODE_0BA9
	MOV $C3, A
CODE_09E2:
	RET

CODE_09E3:
	PUSH A
	CALL CODE_0831
	POP Y
	CMP Y, #$03
	BNE CODE_09FA
	XCN A
	MOV $A3, A
	MOV A, $0100+x
	AND A, #$EF
	OR A, $A3
	MOV $0100+x, A
	RET

CODE_09FA:
	PUSH A
	MOV A, #$08
	MUL YA
	MOV $A4, X
	CLRC
	ADC A, $A4
	MOV Y, A
	POP A
	MOV $0108+y, A
	RET

CODE_0A09:
	CALL CODE_0831
	MOV Y, #$08
	MUL YA
	CMP A, $CB
	BEQ CODE_0A6D
	MOV $CB, A
CODE_0A15:
	PUSH X
	MOV X, A
	MOV Y, #!REGISTER_DSP_MainLeftVolume
	MOV A, GOOFT_DATA_0D10+x
	CALL CODE_0CD6
	MOV Y, #!REGISTER_DSP_MainRightVolume
	MOV A, GOOFT_DATA_0D10+$01+x
	CALL CODE_0CD6
	MOV A, GOOFT_DATA_0D10+$02+x
	MOV $CE, A
	MOV A, GOOFT_DATA_0D10+$03+x
	MOV $CF, A
	CALL CODE_0A6E
	MOV Y, #!REGISTER_DSP_EchoBufferStartOffset
	MOV A, GOOFT_DATA_0D10+$04+x
	CALL CODE_0CD6
	MOV A, #!REGISTER_DSP_EchoDelay
	MOV !REGISTER_SPC700_DSPRegisterIndex, A
	MOV A, !REGISTER_SPC700_ReadWriteToDSPRegister
	AND A, #$0F
	INC A
	EOR A, #$FF
	BBC7 $CD, CODE_0A4F
	CLRC
	ADC A, $CD
CODE_0A4F:
	MOV $CD, A
	MOV A, GOOFT_DATA_0D15+x
	MOV !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV A, #$20
	CLRC
	ADC A, $CC
	MOV $CC, A
	MOV Y, #!REGISTER_DSP_EchoFeedback
	MOV A, GOOFT_DATA_0D15+$01+x
	CALL CODE_0CD6
	MOV A, GOOFT_DATA_0D15+$02+x
	CALL CODE_0A87
	POP X
CODE_0A6D:
	RET

CODE_0A6E:
	MOV Y, #$03
CODE_0A70:
	MOV A, DATA_0A84-$01+y
	MOV !REGISTER_SPC700_DSPRegisterIndex, A
	MOV A, #$00
	MOV !REGISTER_SPC700_ReadWriteToDSPRegister, A
	DBNZ Y, CODE_0A70
	MOV Y, #!REGISTER_DSP_DSPStatusFlags
	MOV A, #$20
	JMP CODE_0CD6

DATA_0A84:
	db !REGISTER_DSP_EchoLeftVolume,!REGISTER_DSP_EchoRightVolume,!REGISTER_DSP_EchoEnable

CODE_0A87:
	PUSH X
	MOV Y, #$08
	MUL YA
	MOV X, A
	MOV Y, #$0F
CODE_0A8E:
	MOV A, DATA_0A9E+x
	CALL CODE_0CD6
	INC X
	MOV A, Y
	CLRC
	ADC A, #$10
	MOV Y, A
	BPL CODE_0A8E
	POP X
	RET

DATA_0A9E:
	db $7F,$00,$00,$00,$00,$00,$00,$00,$58,$BF,$DB,$F0,$FE,$07,$0C,$0C
	db $0C,$21,$2B,$2B,$13,$FE,$F3,$F9,$34,$33,$00,$D9,$E5,$01,$FC,$EB

CODE_0ABE:
	AND A, #$01
	LSR A
	BCC CODE_0AC5
	MOV A, $B3
CODE_0AC5:
	BBS7 $B0, CODE_0AD0
	AND $BC, $B4
	OR A, $BC
	MOV $BC, A
	RET

CODE_0AD0:
	AND $B7, $B4
	OR A, $B7
	MOV $B7, A
	RET

CODE_0AD8:
	OR A, #$A0
	MOV $0240+x, A
	RET

CODE_0ADE:
	SETP
	MOV A, $18+x
	CLRC
	ADC A, $20+x
	MOV $20+x, A
	BCC CODE_0AEF
	MOV A, $00+x
	CLRC
	ADC A, #$40
	MOV $00+x, A
CODE_0AEF:
	MOV A, $00+x
	MOV $A4, A
	BBC0 $A4, CODE_0B28
	MOV $A1, #$00
	MOV A, $28+x
	ASL A
	MOV $A0, A
	MOV A, $40+x
	MOV $A3, A
	MOV A, $48+x
	MOV $A2, A
	MOV Y, $30+x
	MOV A, $38+x
	BBS1 $A4, CODE_0B17
	SUBW YA, $A0
	BCC CODE_0B1D
	CMPW YA, $A2
	BCC CODE_0B1D
	BRA CODE_0B24

CODE_0B17:
	ADDW YA, $A0
	CMPW YA, $A2
	BCC CODE_0B24
CODE_0B1D:
	MOV A, $A4
	DEC A
	MOV $00+x, A
	MOVW YA, $A2
CODE_0B24:
	MOV $30+x, Y
	MOV $38+x, A
CODE_0B28:
	MOV A, $00B9
	BPL CODE_0B2F
	CLRP
	RET

CODE_0B2F:
	CALL CODE_0BF1
CODE_0B32:
	MOV Y, $10+x
	MOV A, $00+x
	ASL A
	ASL A
	MOV A, $20+x
	BCS CODE_0B3E
	EOR A, #$FF
CODE_0B3E:
	MUL YA
	MOVW $A2, YA
	MOV Y, #$7E
	MOV A, #$81
	SUBW YA, $A2
	CALL CODE_0BAB
	MOV Y, A
	CLRP
	BBS7 $B0, CODE_0B62
	MOV A, $C3
	MUL YA
	PUSH Y
	MOVW YA, $C9
	BBS7 $C6, CODE_0B5D
	MOV Y, #$FF
	MOV A, Y
	SUBW YA, $C9
CODE_0B5D:
	CALL CODE_0BA3
	POP Y
	MUL YA
CODE_0B62:
	MOV A, $0230+x
	MUL YA
	MOV $A3, Y
	BBC5 $B0, CODE_0B6F
	MOV A, #$80
	BRA CODE_0B72

CODE_0B6F:
	MOV A, $0248+x
CODE_0B72:
	MOV Y, #$14
	MUL YA
	MOVW $A0, YA
	MOV $A5, #$01
CODE_0B7A:
	MOV Y, $A1
	MOV A, DATA_0BDB+$01+y
	SETC
	SBC A, DATA_0BDB+y
	MOV Y, $A0
	MUL YA
	MOV A, Y
	MOV Y, $A1
	CLRC
	ADC A, DATA_0BDB+y
	MOV Y, $A3
	MUL YA
	MOV A, Y
	MOV Y, $A5
	CALL CODE_0CCB
	MOV Y, #$14
	MOV A, #$00
	SUBW YA, $A0
	MOVW $A0, YA
	DEC $A5
	BPL CODE_0B7A
	RET

CODE_0BA3:
	MOV $A1, Y
	MOV Y, #$04
	BRA CODE_0BAF

CODE_0BA9:
	MOV A, #$FF
CODE_0BAB:
	MOV $A1, Y
	MOV Y, #$03
CODE_0BAF:
	LSR $A1
	ROR A
	DBNZ Y, CODE_0BAF
	MOV $A0, A
	MOV Y, $A1
	MOV A, DATA_0BCA+$01+y
	SETC
	SBC A, DATA_0BCA+y
CODE_0BC0:
	MOV Y, $A0
	MUL YA
	MOV A, Y
	MOV Y, $A1
	CLRC
	ADC A, DATA_0BCA+y
	RET

DATA_0BCA:
	db $00,$0C,$19,$26,$33,$40,$4C,$59,$66,$73,$80,$8C,$99,$B3,$CC,$E6
	db $FF

DATA_0BDB:
	db $00,$01,$03,$07,$0D,$15,$1E,$29,$34,$42,$51,$5E,$67,$6E,$73,$77
	db $7A,$7C,$7D,$7E,$7F,$7F

CODE_0BF1:
	MOV A, $00+x
	AND A, #$01
	OR A, $08+x
	BNE CODE_0C04
	MOV A, $00B0
	BMI CODE_0C03
	MOV A, $00C5
	BNE CODE_0C08
CODE_0C03:
	RET

CODE_0C04:
	MOV A, $08+x
	BNE CODE_0C0E
CODE_0C08:
	MOV Y, $30+x
	MOV A, $38+x
	BRA CODE_0C3D

CODE_0C0E:
	ASL A
	MOV Y, #$0C
	MUL YA
	MOVW $A0, YA
	MOV A, $00+x
	PUSH P
	ASL A
	ASL A
	MOV A, $20+x
	BCC CODE_0C1F
	EOR A, #$FF
CODE_0C1F:
	PUSH A
	MOV Y, $A0
	MUL YA
	MOV $A0, Y
	POP A
	MOV Y, $A1
	MUL YA
	MOV $A1, #$00
	ADDW YA, $A0
	MOVW $A0, YA
	MOV Y, $30+x
	MOV A, $38+x
	POP P
	BMI CODE_0C3B
	ADDW YA, $A0
	BRA CODE_0C3D

CODE_0C3B:
	SUBW YA, $A0
CODE_0C3D:
	CLRP
	BBS7 $B0, CODE_0C49
	MOV $A1, $C5
	MOV $A0, #$00
	ADDW YA, $A0
CODE_0C49:
	SETP
	DEC Y
	MOV $A1, Y
	MOV $A0, A
	MOV A, Y
	MOV Y, #$00
	SETC
	SBC A, #$34
	BCS CODE_0C60
	MOV A, $A1
	SETC
	SBC A, #$13
	BCS CODE_0C64
	DEC Y
	ASL A
CODE_0C60:
	ADDW YA, $A0
	MOVW $A0, YA
CODE_0C64:
	PUSH X
	MOV A, $A1
	ASL A
	MOV Y, #$00
	MOV X, #$18
	DIV YA, X
	MOV X, A
	MOV A, DATA_0CDD+$01+y
	MOV $A3, A
	MOV A, DATA_0CDD+y
	MOV $A2, A
	MOV A, DATA_0CDD+$03+y
	PUSH A
	MOV A, DATA_0CDD+$02+y
	POP Y
	SUBW YA, $A2
	MOV Y, $A0
	MUL YA
	MOV A, Y
	MOV Y, #$00
	ADDW YA, $A2
	MOV $A1, Y
	ASL A
	ROL $A1
CODE_0C8F:
	CMP X, #$08
	BEQ CODE_0C99
	LSR $A1
	ROR A
	INC X
	BRA CODE_0C8F

CODE_0C99:
	MOV $A0, A
	POP X
	MOV A, $0228+x
	MOV Y, $A1
	MUL YA
	MOVW $A2, YA
	MOV A, $0228+x
	MOV Y, $A0
	MUL YA
	PUSH Y
	MOV A, $0220+x
	MOV Y, $A0
	MUL YA
	ADDW YA, $A2
	MOVW $A2, YA
	MOV A, $0220+x
	MOV Y, $A1
	MUL YA
	MOV Y, A
	POP A
	ADDW YA, $A2
	AND A, #$F0
	PUSH Y
	MOV Y, #$02
	CALL CODE_0CCB
	POP A
	INC Y
	BRA CODE_0CD6

CODE_0CCB:
	PUSH A
	MOV $A6, Y
	MOV A, X
	XCN A
	AND A, #$70
	OR A, $A6
	MOV Y, A
	POP A
CODE_0CD6:
	MOV !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV !REGISTER_SPC700_ReadWriteToDSPRegister, A
	RET

DATA_0CDD:
	db $5F,$08,$DE,$08,$65,$09,$F4,$09,$8C,$0A,$2C,$0B,$D6,$0B,$8B,$0C
	db $4A,$0D,$14,$0E,$EA,$0E,$CD,$0F,$BE,$10
namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_GOOFT_SoundEffectBank(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_SoundEffectBank

DATA_4000:
	db (DATA_4002_End-DATA_4002)/$02

DATA_4001:
	db $56

DATA_4002:
	db $0000>>8,$0000
	db DATA_4068>>8,DATA_4068
	db DATA_40A0>>8,DATA_40A0
	db DATA_40E1>>8,DATA_40E1
	db DATA_410D>>8,DATA_410D
	db DATA_413A>>8,DATA_413A
	db DATA_4164>>8,DATA_4164
	db DATA_4194>>8,DATA_4194
	db DATA_41CA>>8,DATA_41CA
	db DATA_41F9>>8,DATA_41F9
	db DATA_422F>>8,DATA_422F
	db DATA_4264>>8,DATA_4264
	db DATA_4298>>8,DATA_4298
	db DATA_42E6>>8,DATA_42E6
	db DATA_4319>>8,DATA_4319
	db DATA_4349>>8,DATA_4349
	db DATA_438B>>8,DATA_438B
	db DATA_43EF>>8,DATA_43EF
	db DATA_4434>>8,DATA_4434
	db DATA_4476>>8,DATA_4476
	db DATA_44B5>>8,DATA_44B5
	db DATA_44DF>>8,DATA_44DF
	db DATA_4514>>8,DATA_4514
	db DATA_456E>>8,DATA_456E
	db DATA_4596>>8,DATA_4596
	db DATA_45F4>>8,DATA_45F4
	db DATA_463C>>8,DATA_463C
	db DATA_4678>>8,DATA_4678
	db DATA_46C9>>8,DATA_46C9
	db DATA_46F7>>8,DATA_46F7
	db DATA_473E>>8,DATA_473E
	db DATA_4778>>8,DATA_4778
	db DATA_47F5>>8,DATA_47F5
	db DATA_482A>>8,DATA_482A
	db DATA_4862>>8,DATA_4862
	db DATA_488F>>8,DATA_488F
	db DATA_48DB>>8,DATA_48DB
	db DATA_4910>>8,DATA_4910
	db DATA_497C>>8,DATA_497C
	db DATA_49A8>>8,DATA_49A8
	db DATA_49D8>>8,DATA_49D8
	db DATA_4A03>>8,DATA_4A03
	db DATA_4A8C>>8,DATA_4A8C
	db DATA_4AC7>>8,DATA_4AC7
	db DATA_4B0B>>8,DATA_4B0B
	db DATA_4B4D>>8,DATA_4B4D
	db DATA_4B8E>>8,DATA_4B8E
	db DATA_4C18>>8,DATA_4C18
	db DATA_4C45>>8,DATA_4C45
	db DATA_4CC2>>8,DATA_4CC2
	db DATA_4D16>>8,DATA_4D16
.End:

DATA_4068:
	incbin "SoundEffects/SFX01_Whistle.bin"

DATA_40A0:
	incbin "SoundEffects/SFX02_Break.bin"

DATA_40E1:
	incbin "SoundEffects/SFX03_ConfirmSelection.bin"

DATA_410D:
	incbin "SoundEffects/SFX04_Unknown.bin"

DATA_413A:
	incbin "SoundEffects/SFX05_OpenCastleDoor.bin"

DATA_4164:
	incbin "SoundEffects/SFX06_MoveSelection.bin"

DATA_4194:
	incbin "SoundEffects/SFX07_PressSwitch.bin"

DATA_41CA:
	incbin "SoundEffects/SFX08_CannonShoot.bin"

DATA_41F9:
	incbin "SoundEffects/SFX09_Explosion.bin"

DATA_422F:
	incbin "SoundEffects/SFX0A_RingBell.bin"

DATA_4264:
	incbin "SoundEffects/SFX0B_Hurt.bin"

DATA_4298:
	incbin "SoundEffects/SFX0C_UnlockDoor.bin"

DATA_42E6:
	incbin "SoundEffects/SFX0D_LostLife.bin"

DATA_4319:
	incbin "SoundEffects/SFX0E_ObjectFellInPit.bin"

DATA_4349:
	incbin "SoundEffects/SFX0F_WaterRipple.bin"

DATA_438B:
	incbin "SoundEffects/SFX10_ExtraLife.bin"

DATA_43EF:
	incbin "SoundEffects/SFX11_Unknown.bin"

DATA_4434:
	incbin "SoundEffects/SFX12_DefeatEnemy.bin"

DATA_4476:
	incbin "SoundEffects/SFX13_BreakMirror.bin"

DATA_44B5:
	incbin "SoundEffects/SFX14_MovingMinecart.bin"

DATA_44DF:
	incbin "SoundEffects/SFX15_Waterfall.bin"

DATA_4514:
	incbin "SoundEffects/SFX16_Waves.bin"

DATA_456E:
	incbin "SoundEffects/SFX17_HitWallWithGrapple.bin"

DATA_4596:
	incbin "SoundEffects/SFX18_HitWallWithBlock.bin"

DATA_45F4:
	incbin "SoundEffects/SFX19_RockBounce.bin"

DATA_463C:
	incbin "SoundEffects/SFX1A_Wrong.bin"

DATA_4678:
	incbin "SoundEffects/SFX1B_Dig.bin"

DATA_46C9:
	incbin "SoundEffects/SFX1C_CollectFruit.bin"

DATA_46F7:
	incbin "SoundEffects/SFX1D_StunWithGrapple.bin"

DATA_473E:
	incbin "SoundEffects/SFX1E_BuildCastleBridge.bin"

DATA_4778:
	incbin "SoundEffects/SFX1F_GotItem.bin"

DATA_47F5:
	incbin "SoundEffects/SFX20_CloseDoor.bin"

DATA_482A:
	incbin "SoundEffects/SFX21_OpenGate.bin"

DATA_4862:
	incbin "SoundEffects/SFX22_FireShoot.bin"

DATA_488F:
	incbin "SoundEffects/SFX23_FireBugSwing.bin"

DATA_48DB:
	incbin "SoundEffects/SFX24_KeelhaulPeteSpin.bin"

DATA_4910:
	incbin "SoundEffects/SFX25_Earthquake.bin"

DATA_497C:
	incbin "SoundEffects/SFX26_ThrowBones.bin"

DATA_49A8:
	incbin "SoundEffects/SFX27_RapRecoil.bin"

DATA_49D8:
	incbin "SoundEffects/SFX28_CaughtByHook.bin"

DATA_4A03:
	incbin "SoundEffects/SFX29_Unknown.bin"

DATA_4A8C:
	incbin "SoundEffects/SFX2A_HurtSkeleton.bin"

DATA_4AC7:
	incbin "SoundEffects/SFX2B_KeelhaulPeteShoot.bin"

DATA_4B0B:
	incbin "SoundEffects/SFX2C_KeelhaulPeteLand.bin"

DATA_4B4D:
	incbin "SoundEffects/SFX2D_BreakArmor.bin"

DATA_4B8E:
	incbin "SoundEffects/SFX2E_ExtraContinue.bin"

DATA_4C18:
	incbin "SoundEffects/SFX2F_CatchThrownItem.bin"

DATA_4C45:
	incbin "SoundEffects/SFX30_DestroyCannon.bin"

DATA_4CC2:
	incbin "SoundEffects/SFX31_Pause.bin"

DATA_4D16:
	incbin "SoundEffects/SFX32_Pause.bin"

	%FREE_BYTES(NULLROM, 2, $FF)
namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_GOOFT_GlobalSampleBank(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_GlobalSampleBank

Ptrs:
	dw DATA_50E6	:	dw DATA_50E6+$014D
	dw DATA_5698	:	dw DATA_5698+$0000
	dw DATA_5D34	:	dw DATA_5D34+$00A2
	dw DATA_5E66	:	dw DATA_5E66+$022E
	dw DATA_5E66	:	dw DATA_5E66+$022E
	dw DATA_60A6	:	dw DATA_60A6+$0000
	dw DATA_6979	:	dw DATA_6979+$00C6
	dw DATA_6A63	:	dw DATA_6A63+$001B
	dw DATA_6AA2	:	dw DATA_6AA2+$0129
	dw DATA_6BEF	:	dw DATA_6BEF+$09D8
	dw DATA_6BEF	:	dw DATA_6BEF+$09D8
	dw DATA_75EB	:	dw DATA_75EB+$001B
	dw DATA_7618	:	dw DATA_7618+$001B
	dw DATA_763C	:	dw DATA_763C+$0036
	dw DATA_7684	:	dw DATA_7684+$001B
	dw DATA_7B70	:	dw DATA_7B70+$0000
	dw DATA_7FDE	:	dw DATA_7FDE+$014D
	dw DATA_7FDE	:	dw DATA_7FDE+$014D
	dw DATA_826F	:	dw DATA_826F+$026D
	dw DATA_826F	:	dw DATA_826F+$026D
	dw DATA_8F68	:	dw DATA_8F68+$04DA
	dw DATA_94E4	:	dw DATA_94E4+$0384
	dw DATA_9BAD	:	dw DATA_9BAD+$040B

DATA_505C:
	db $00,$FF,$F1,$B8,$03,$30
	db $01,$FF,$E0,$B8,$07,$A8
	db $02,$FF,$E6,$B8,$10,$00
	db $03,$F4,$E0,$B8,$02,$00
	db $04,$FF,$E0,$B8,$02,$00
	db $05,$FF,$E0,$B8,$07,$A8
	db $06,$FF,$EE,$B8,$04,$00
	db $07,$FF,$F0,$B8,$04,$00
	db $08,$FF,$E0,$B8,$04,$00
	db $09,$87,$C0,$B8,$04,$00
	db $0A,$FF,$E0,$B8,$04,$00
	db $0B,$FF,$E0,$B8,$02,$00
	db $0C,$FF,$E0,$B8,$01,$00
	db $0D,$FF,$E0,$B8,$02,$00
	db $0E,$FF,$E0,$B8,$03,$20
	db $0F,$FF,$E0,$B8,$07,$A8
	db $10,$8B,$CC,$B8,$24,$00
	db $11,$8F,$AC,$B8,$24,$00
	db $12,$F4,$E0,$B8,$03,$00
	db $13,$FF,$E0,$B8,$03,$00
	db $14,$FF,$E0,$B8,$12,$00
	db $15,$FF,$E0,$B8,$02,$A0
	db $16,$FF,$E0,$B8,$04,$00

DATA_50E6:
	incbin "Samples/00.brr"

DATA_5698:
	incbin "Samples/01.brr"

DATA_5D34:
	incbin "Samples/02.brr"

DATA_5E66:
	incbin "Samples/03.brr"

DATA_60A6:
	incbin "Samples/04.brr"

DATA_6979:
	incbin "Samples/05.brr"

DATA_6A63:
	incbin "Samples/06.brr"

DATA_6AA2:
	incbin "Samples/07.brr"

DATA_6BEF:
	incbin "Samples/08.brr"

DATA_75EB:
	incbin "Samples/09.brr"

DATA_7618:
	incbin "Samples/0A.brr"

DATA_763C:
	incbin "Samples/0B.brr"

DATA_7684:
	incbin "Samples/0C.brr"

DATA_7B70:
	incbin "Samples/0D.brr"

DATA_7FDE:
	incbin "Samples/0E.brr"

DATA_826F:
	incbin "Samples/0F.brr"

DATA_8F68:
	incbin "Samples/10.brr"

DATA_94E4:
	incbin "Samples/11.brr"

DATA_9BAD:
	incbin "Samples/12.brr"

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_GOOFT_Music_Capcom(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

Capcom:
	incbin "Music/Capcom.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_ToTheSouth(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

ToTheSouth:
	incbin "Music/ToTheSouth.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_Illusion(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

Illusion:
	incbin "Music/Illusion.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_LoseMyWay(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

LoseMyWay:
	incbin "Music/LoseMyWay.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_SeaRobber(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

SeaRobber:
	incbin "Music/SeaRobber.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_LetsStart(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

LetsStart:
	incbin "Music/LetsStart.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_Break(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

Break:
	incbin "Music/Break.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_Map(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

Map:
	incbin "Music/Map.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_GoOn(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

GoOn:
	incbin "Music/GoOn.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_TheEnd(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

TheEnd:
	incbin "Music/TheEnd.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_GoofyOrMax(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

GoofyOrMax:
	incbin "Music/GoofyOrMax.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_FightFight(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

FightFight:
	incbin "Music/FightFight.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_Satisfied(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

Satisfied:
	incbin "Music/Satisfied.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_Flashback(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

Flashback:
	incbin "Music/Flashback.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_Hamlet(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

Hamlet:
	incbin "Music/Hamlet.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_FightABattle(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

FightABattle:
	incbin "Music/FightABattle.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_StaffRoll(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

StaffRoll:
	incbin "Music/StaffRoll.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_GameOver(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

GameOver:
	incbin "Music/GameOver.bin"
namespace off
base off
endmacro

;---------------------------------------------------------------------------

macro SPC700_GOOFT_Music_Rest(Base)
%InsertMacroAtXPosition(<Base>)
namespace GOOFT_Music

Rest:
	incbin "Music/Rest.bin"
namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################
