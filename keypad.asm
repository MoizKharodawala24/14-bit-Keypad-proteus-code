org 00h
mov dptr, #seve
mov a,#0ffh
mov p1,#00h
mov p3,#00h


start:mov p2,#0ffh
	clr p2.3
	jb p2.2,next2
	mov a,#02h
	acall disp
	mov a,#02h
	inc a
	acall disp1
next2:jb p2.1,next3
	mov a,#04h
	acall disp
	mov a,#04h
	inc a
	acall disp1
next3:jb p2.0,next4
	mov a,#06h
	acall disp
	mov a,#06h
	inc a
	acall disp1
next4:setb p2.3
	clr p2.4
	jb p2.2,next5
	mov a,#08h
	acall disp
	mov a,#08h
	inc a
	acall disp1
next5:jb p2.1,next6
	mov a,#0ah
	acall disp
	mov a,#0ah
	inc a
	acall disp1
next6:jb p2.0,next7
	mov a,#0ch
	acall disp
	mov a,#0ch
	inc a
	acall disp1
next7:setb p2.4
	clr p2.5
	jb p2.2,next8
	mov a,#0eh
	acall disp
	mov a,#0eh
	inc a
	acall disp1
next8:jb p2.1,next9
	mov a,#010h
	acall disp
	mov a,#010h
	inc a
	acall disp1
next9:jb p2.0,dash
	mov a,#012h
	acall disp
	mov a,#012h
	inc a
	acall disp1
dash:setb p2.5
	clr p2.6
	jb p2.2,next0
	mov a,#014h
	acall disp
	mov a,#014h
	inc a
	acall disp1
next0:jb p2.1,nextll
	mov a,#00h
	acall disp
	mov a,#00h
	inc a
	acall disp1
nextll:jb p2.0,l1
	mov a,#016h
	acall disp
	mov a,#016h
	inc a
	acall disp1
	l1:ljmp start

disp:setb p1.7
	movc a,@a+dptr
	mov p1,a
	ret
disp1:movc a,@a+dptr
	mov p3,a
	ret
	
seve: db 3fh,00h, 00h,11h, 1bh,44h, 0fh,44h, 26h,44h, 2dh,44h, 3dh,44h, 07h,00h, 3fh,44h, 2fh,44h, 40h,7fh, 36h,00h 
end