; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

lorom
;!ROMVer = $0000						; Note: This is set within the batch script
!SMRPG_U = $0001
!SMRPG_E = $0002
!SMRPG_J = $0004
!SMRPG_F = $0008
!SMRPG_G = $0010

org $008000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl CompressedFilesPointersStart,(CompressedFilesPointersEnd-CompressedFilesPointersStart)/$0C
	dl UnknownDataPointersStart,(UnknownDataPointersEnd-UnknownDataPointersStart)/$0C
	dl SPCDataPointersStart,(SPCDataPointersEnd-SPCDataPointersStart)/$0C
	;dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $8FD400,$8FD640,GFX_Sprite_BarrelThrowingNative,GFX_Sprite_BarrelThrowingNativeEnd
	dl $8FD640,$8FFB20,GFX_Sprite_KeelhaulPete,GFX_Sprite_KeelhaulPeteEnd
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedFilesPointersStart:
	dl $8C8000,$8C9574,GFX_Sprite_Global1,GFX_Sprite_Global1End
	dl $8C9574,$8DC55C,GFX_Sprite_Global2,GFX_Sprite_Global2End
	dl $8DC55C,$8DD18F,GFX_Sprite_Global3,GFX_Sprite_Global3End
	dl $8DD18F,$8E96CC,GFX_Sprite_Global4,GFX_Sprite_Global4End
CompressedFilesPointersEnd:

;--------------------------------------------------------------------

UnknownDataPointersStart:
	dl $85C000,$85C3A1,DATA_85C000,DATA_85C000End
	dl $85C3A1,$85D7D8,DATA_85C3A1,DATA_85C3A1End
	dl $85D7D8,$85FBE7,DATA_85D7D8,DATA_85D7D8End
	dl $85FBE7,$86A217,DATA_85FBE7,DATA_85FBE7End
	dl $86A217,$86CD46,DATA_86A217,DATA_86A217End
	dl $86CD46,$879277,DATA_86CD46,DATA_86CD46End
	dl $879277,$87C521,DATA_879277,DATA_879277End
	dl $87C521,$87E54B,DATA_87C521,DATA_87C521End
	dl $87E54B,$87F124,DATA_87E54B,DATA_87E54BEnd
	dl $87F124,$888B68,DATA_87F124,DATA_87F124End
	dl $888B68,$888EA2,DATA_888B68,DATA_888B68End
	dl $888EA2,$889588,DATA_888EA2,DATA_888EA2End
	dl $889588,$88CBC1,DATA_889588,DATA_889588End
	dl $88CBC1,$88F138,DATA_88CBC1,DATA_88CBC1End
	dl $88F138,$88FDFE,DATA_88F138,DATA_88F138End
	dl $89D280,$89D4FE,DATA_89D280,DATA_89D280End
	dl $89D4FE,$89D880,DATA_89D4FE,DATA_89D4FEEnd
	dl $89D880,$89DDC0,DATA_89D880,DATA_89D880End
	dl $89DDC0,$89DEB0,DATA_89DDC0,DATA_89DDC0End
	dl $89DEB0,$89E2CD,DATA_89DEB0,DATA_89DEB0End
	dl $89E2CD,$89E5C9,DATA_89E2CD,DATA_89E2CDEnd
	dl $89E5C9,$89E8C8,DATA_89E5C9,DATA_89E5C9End
	dl $89E8C8,$89ED44,DATA_89E8C8,DATA_89E8C8End
	dl $89ED44,$89F055,DATA_89ED44,DATA_89ED44End
	dl $8E96CC,$8E9AFB,DATA_8E96CC,DATA_8E96CCEnd
	dl $8E9AFB,$8E9E54,DATA_8E9AFB,DATA_8E9AFBEnd
	dl $8E9E54,$8EA2C0,DATA_8E9E54,DATA_8E9E54End
	dl $8EA2C0,$8EA6E1,DATA_8EA2C0,DATA_8EA2C0End
	dl $8EA6E1,$8EAAE0,DATA_8EA6E1,DATA_8EA6E1End
	dl $8EAAE0,$8EADB9,DATA_8EAAE0,DATA_8EAAE0End
	dl $8EADB9,$8EB47A,DATA_8EADB9,DATA_8EADB9End
	dl $8EB47A,$8EBA95,DATA_8EB47A,DATA_8EB47AEnd
	dl $8EBA95,$8EBDBB,DATA_8EBA95,DATA_8EBA95End
	dl $8EBDBB,$8EC310,DATA_8EBDBB,DATA_8EBDBBEnd
	dl $8EC310,$8EC77F,DATA_8EC310,DATA_8EC310End
	dl $8EC77F,$8ECBE2,DATA_8EC77F,DATA_8EC77FEnd
	dl $8ECBE2,$8ED0C0,DATA_8ECBE2,DATA_8ECBE2End
	dl $8ED0C0,$8ED568,DATA_8ED0C0,DATA_8ED0C0End
	dl $8ED568,$8EDA29,DATA_8ED568,DATA_8ED568End
	dl $8EDA29,$8EDD0F,DATA_8EDA29,DATA_8EDA29End
	dl $8EDD0F,$8EE0A9,DATA_8EDD0F,DATA_8EDD0FEnd
	dl $8EE0A9,$8EE54D,DATA_8EE0A9,DATA_8EE0A9End
	dl $8EE54D,$8EE8C9,DATA_8EE54D,DATA_8EE54DEnd
	dl $8EE8C9,$8EEB3F,DATA_8EE8C9,DATA_8EE8C9End
	dl $8EEB3F,$8EF10A,DATA_8EEB3F,DATA_8EEB3FEnd
	dl $8EF10A,$8EF719,DATA_8EF10A,DATA_8EF10AEnd
	dl $8EF719,$8EFD6B,DATA_8EF719,DATA_8EF719End
	dl $8EFD6B,$8F8346,DATA_8EFD6B,DATA_8EFD6BEnd
	dl $8F8346,$8F88BB,DATA_8F8346,DATA_8F8346End
	dl $8F88BB,$8F8E5E,DATA_8F88BB,DATA_8F88BBEnd
	dl $8F8E5E,$8F93A6,DATA_8F8E5E,DATA_8F8E5EEnd
	dl $8F93A6,$8F99B2,DATA_8F93A6,DATA_8F93A6End
	dl $8F99B2,$8F9FF8,DATA_8F99B2,DATA_8F99B2End
	dl $8F9FF8,$8FA508,DATA_8F9FF8,DATA_8F9FF8End
	dl $8FA508,$8FA731,DATA_8FA508,DATA_8FA508End
	dl $8FA731,$8FA837,DATA_8FA731,DATA_8FA731End
	dl $8FA837,$8FAE4B,DATA_8FA837,DATA_8FA837End
	dl $8FAE4B,$8FB2DC,DATA_8FAE4B,DATA_8FAE4BEnd
	dl $8FB2DC,$8FB5BE,DATA_8FB2DC,DATA_8FB2DCEnd
UnknownDataPointersEnd:

;--------------------------------------------------------------------

SPCDataPointersStart:
	dl $848ABD,$849826,DATA_848ABD,DATA_848ABDEnd
	dl $849826,$84E80B,DATA_849826,DATA_849826End
	dl $84E80B,$84E983,DATA_84E80B,DATA_84E80BEnd
	dl $84E983,$84EDCB,DATA_84E983,DATA_84E983End
	dl $84EDCB,$84F0BB,DATA_84EDCB,DATA_84EDCBEnd
	dl $84F0BB,$84F36D,DATA_84F0BB,DATA_84F0BBEnd
	dl $84F36D,$84F8E1,DATA_84F36D,DATA_84F36DEnd
	dl $84F8E1,$84FC3D,DATA_84F8E1,DATA_84F8E1End
	dl $84FC3D,$84FE59,DATA_84FC3D,DATA_84FC3DEnd
	dl $84FE59,$84FFDB,DATA_84FE59,DATA_84FE59End
	dl $84FFDB,$858169,DATA_84FFDB,DATA_84FFDBEnd
	dl $858169,$858659,DATA_858169,DATA_858169End
	dl $858659,$858A0F,DATA_858659,DATA_858659End
	dl $858A0F,$858E45,DATA_858A0F,DATA_858A0FEnd
	dl $858E45,$858F4B,DATA_858E45,DATA_858E45End
	dl $858F4B,$8595D9,DATA_858F4B,DATA_858F4BEnd
	dl $8595D9,$8599AD,DATA_8595D9,DATA_8595D9End
	dl $8599AD,$859ECF,DATA_8599AD,DATA_8599ADEnd
	dl $859ECF,$85A46F,DATA_859ECF,DATA_859ECFEnd
	dl $85A46F,$85A5AB,DATA_85A46F,DATA_85A46FEnd
	dl $85A5AB,$85A795,DATA_85A5AB,DATA_85A5ABEnd
SPCDataPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_Sprite_BarrelThrowingNative:
	db "GFX_Sprite_BarrelThrowingNative.bin"
GFX_Sprite_BarrelThrowingNativeEnd:
GFX_Sprite_KeelhaulPete:
	db "GFX_Sprite_KeelhaulPete.bin"
GFX_Sprite_KeelhaulPeteEnd:

;--------------------------------------------------------------------

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

;--------------------------------------------------------------------

DATA_85C000:
	db "DATA_85C000.bin"
DATA_85C000End:
DATA_85C3A1:
	db "DATA_85C3A1.bin"
DATA_85C3A1End:
DATA_85D7D8:
	db "DATA_85D7D8.bin"
DATA_85D7D8End:
DATA_85FBE7:
	db "DATA_85FBE7.bin"
DATA_85FBE7End:
DATA_86A217:
	db "DATA_86A217.bin"
DATA_86A217End:
DATA_86CD46:
	db "DATA_86CD46.bin"
DATA_86CD46End:
DATA_879277:
	db "DATA_879277.bin"
DATA_879277End:
DATA_87C521:
	db "DATA_87C521.bin"
DATA_87C521End:
DATA_87E54B:
	db "DATA_87E54B.bin"
DATA_87E54BEnd:
DATA_87F124:
	db "DATA_87F124.bin"
DATA_87F124End:
DATA_888B68:
	db "DATA_888B68.bin"
DATA_888B68End:
DATA_888EA2:
	db "DATA_888EA2.bin"
DATA_888EA2End:
DATA_889588:
	db "DATA_889588.bin"
DATA_889588End:
DATA_88CBC1:
	db "DATA_88CBC1.bin"
DATA_88CBC1End:
DATA_88F138:
	db "DATA_88F138.bin"
DATA_88F138End:
DATA_89D280:
	db "DATA_89D280.bin"
DATA_89D280End:
DATA_89D4FE:
	db "DATA_89D4FE.bin"
DATA_89D4FEEnd:
DATA_89D880:
	db "DATA_89D880.bin"
DATA_89D880End:
DATA_89DDC0:
	db "DATA_89DDC0.bin"
DATA_89DDC0End:
DATA_89DEB0:
	db "DATA_89DEB0.bin"
DATA_89DEB0End:
DATA_89E2CD:
	db "DATA_89E2CD.bin"
DATA_89E2CDEnd:
DATA_89E5C9:
	db "DATA_89E5C9.bin"
DATA_89E5C9End:
DATA_89E8C8:
	db "DATA_89E8C8.bin"
DATA_89E8C8End:
DATA_89ED44:
	db "DATA_89ED44.bin"
DATA_89ED44End:
DATA_8E96CC:
	db "DATA_8E96CC.bin"
DATA_8E96CCEnd:
DATA_8E9AFB:
	db "DATA_8E9AFB.bin"
DATA_8E9AFBEnd:
DATA_8E9E54:
	db "DATA_8E9E54.bin"
DATA_8E9E54End:
DATA_8EA2C0:
	db "DATA_8EA2C0.bin"
DATA_8EA2C0End:
DATA_8EA6E1:
	db "DATA_8EA6E1.bin"
DATA_8EA6E1End:
DATA_8EAAE0:
	db "DATA_8EAAE0.bin"
DATA_8EAAE0End:
DATA_8EADB9:
	db "DATA_8EADB9.bin"
DATA_8EADB9End:
DATA_8EB47A:
	db "DATA_8EB47A.bin"
DATA_8EB47AEnd:
DATA_8EBA95:
	db "DATA_8EBA95.bin"
DATA_8EBA95End:
DATA_8EBDBB:
	db "DATA_8EBDBB.bin"
DATA_8EBDBBEnd:
DATA_8EC310:
	db "DATA_8EC310.bin"
DATA_8EC310End:
DATA_8EC77F:
	db "DATA_8EC77F.bin"
DATA_8EC77FEnd:
DATA_8ECBE2:
	db "DATA_8ECBE2.bin"
DATA_8ECBE2End:
DATA_8ED0C0:
	db "DATA_8ED0C0.bin"
DATA_8ED0C0End:
DATA_8ED568:
	db "DATA_8ED568.bin"
DATA_8ED568End:
DATA_8EDA29:
	db "DATA_8EDA29.bin"
DATA_8EDA29End:
DATA_8EDD0F:
	db "DATA_8EDD0F.bin"
DATA_8EDD0FEnd:
DATA_8EE0A9:
	db "DATA_8EE0A9.bin"
DATA_8EE0A9End:
DATA_8EE54D:
	db "DATA_8EE54D.bin"
DATA_8EE54DEnd:
DATA_8EE8C9:
	db "DATA_8EE8C9.bin"
DATA_8EE8C9End:
DATA_8EEB3F:
	db "DATA_8EEB3F.bin"
DATA_8EEB3FEnd:
DATA_8EF10A:
	db "DATA_8EF10A.bin"
DATA_8EF10AEnd:
DATA_8EF719:
	db "DATA_8EF719.bin"
DATA_8EF719End:
DATA_8EFD6B:
	db "DATA_8EFD6B.bin"
DATA_8EFD6BEnd:
DATA_8F8346:
	db "DATA_8F8346.bin"
DATA_8F8346End:
DATA_8F88BB:
	db "DATA_8F88BB.bin"
DATA_8F88BBEnd:
DATA_8F8E5E:
	db "DATA_8F8E5E.bin"
DATA_8F8E5EEnd:
DATA_8F93A6:
	db "DATA_8F93A6.bin"
DATA_8F93A6End:
DATA_8F99B2:
	db "DATA_8F99B2.bin"
DATA_8F99B2End:
DATA_8F9FF8:
	db "DATA_8F9FF8.bin"
DATA_8F9FF8End:
DATA_8FA508:
	db "DATA_8FA508.bin"
DATA_8FA508End:
DATA_8FA731:
	db "DATA_8FA731.bin"
DATA_8FA731End:
DATA_8FA837:
	db "DATA_8FA837.bin"
DATA_8FA837End:
DATA_8FAE4B:
	db "DATA_8FAE4B.bin"
DATA_8FAE4BEnd:
DATA_8FB2DC:
	db "DATA_8FB2DC.bin"
DATA_8FB2DCEnd:

;--------------------------------------------------------------------

DATA_848ABD:
	db "DATA_848ABD.bin"
DATA_848ABDEnd:
DATA_849826:
	db "DATA_849826.bin"
DATA_849826End:
DATA_84E80B:
	db "DATA_84E80B.bin"
DATA_84E80BEnd:
DATA_84E983:
	db "DATA_84E983.bin"
DATA_84E983End:
DATA_84EDCB:
	db "DATA_84EDCB.bin"
DATA_84EDCBEnd:
DATA_84F0BB:
	db "DATA_84F0BB.bin"
DATA_84F0BBEnd:
DATA_84F36D:
	db "DATA_84F36D.bin"
DATA_84F36DEnd:
DATA_84F8E1:
	db "DATA_84F8E1.bin"
DATA_84F8E1End:
DATA_84FC3D:
	db "DATA_84FC3D.bin"
DATA_84FC3DEnd:
DATA_84FE59:
	db "DATA_84FE59.bin"
DATA_84FE59End:
DATA_84FFDB:
	db "DATA_84FFDB.bin"
DATA_84FFDBEnd:
DATA_858169:
	db "DATA_858169.bin"
DATA_858169End:
DATA_858659:
	db "DATA_858659.bin"
DATA_858659End:
DATA_858A0F:
	db "DATA_858A0F.bin"
DATA_858A0FEnd:
DATA_858E45:
	db "DATA_858E45.bin"
DATA_858E45End:
DATA_858F4B:
	db "DATA_858F4B.bin"
DATA_858F4BEnd:
DATA_8595D9:
	db "DATA_8595D9.bin"
DATA_8595D9End:
DATA_8599AD:
	db "DATA_8599AD.bin"
DATA_8599ADEnd:
DATA_859ECF:
	db "DATA_859ECF.bin"
DATA_859ECFEnd:
DATA_85A46F:
	db "DATA_85A46F.bin"
DATA_85A46FEnd:
DATA_85A5AB:
	db "DATA_85A5AB.bin"
DATA_85A5ABEnd:

;--------------------------------------------------------------------

;--------------------------------------------------------------------
