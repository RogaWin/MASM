include io32.inc
.data
	msg byte 'Hello,Assembly!',13,10,0
.code
start:
	mov eax, offset msg
	call dispmsg
	exit 0;
end start
