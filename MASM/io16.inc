.nolist    ; Do not list following content

;filename: io16.inc
;A include file used with io16.lib for DOS

	.model small
	.686
	.stack

exit	MACRO dwexitcode
	mov ax,4c00h+dwexitcode
	int 21h
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
	includelib io16.lib

.list