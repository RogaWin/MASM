include io32.inc
.code
start:
	call readc
	call dispcrlf
	call dispbb
	call dispcrlf
	and al,7fh
	jnp next
	or al,80h
next:
	call dispbb
	call dispcrlf
	exit 0
	end start