.model small
.stack 100h
.data
msg db 10,13, 'Enter a value $'
msg2 db 10,13, 'the largest is: $'
x db ?
y db ?
z db ?
.code
main proc
mov Ax, @data
mov ds, Ax
mov AH, 9h


lea dx, msg
int 21h
mov AH, 1h
int 21h
mov y, AL
mov AH, 9h

lea dx, msg
int 21h
mov AH, 1h
int 21h
mov z , AL
mov AH, 9h


lea dx, msg
int 21h
mov AH, 1h
int 21h
mov x, AL
mov AH, 9h
lea dx, msg2
int 21h

mov dl, x
cmp dl,y
JG next
mov dl, y
next:
cmp dl, z
JG next2
mov dl, z
next2:
mov AH, 2h
int 21h
mov AH, 04ch
int 21h
main endp
end main
