.nolist

;filename: io32.inc
;A include file used with io32.lib for Windows Console

	.686
	.model flat,stdcall

	option casemap:none
	includelib bin\kernel32.lib

ExitProcess proto,:DWORD
exit	MACRO dwexitcode
	invoke ExitProcess,dwexitcode
	ENDM

;declare procedures for inputting and outputting charactor or string
	extern readc:near,readmsg:near
	extern dispc:near,dispmsg:near,dispcrlf:near
;declare procedures for inputting and outputting binary number
	extern readbb:near,readbw:near,readbd:near
	extern dispbb:near,dispbw:near,dispbd:near
;declare procedures for inputting and outputting hexadecimal number
	extern readhb:near,readhw:near,readhd:near
	extern disphb:near,disphw:near,disphd:near
;declare procedures for inputting and outputting unsigned integer number
	extern readuib:near,readuiw:near,readuid:near
	extern dispuib:near,dispuiw:near,dispuid:near
;declare procedures for inputting and outputting signed integer number
	extern readsib:near,readsiw:near,readsid:near
	extern dispsib:near,dispsiw:near,dispsid:near
;declare procedures for outputting registers
	extern disprb:near,disprw:near,disprd:near,disprf:near
;declare I/O libraries
	includelib io32.lib

.list