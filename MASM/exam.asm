include io32.inc
.code
start:
	call readc
	cmp al,'A'
	jb done
	cmp al,'Z'
	ja done
	add al,32
	call dispcrlf
	call dispc
done:
	call dispcrlf
	exit 0
	end start