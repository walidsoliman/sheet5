.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
prompt1 BYTE "Enter frist  grade",0
prompt2 BYTE "Enter second grade ",0
prompt3 BYTE "Enter third grade ",0
prompt4 BYTE "Enter fourth grade ",0

 grade1 dword ?
 grade2 dword ?
 grade3 dword ?
 grade4 dword ?
 sum dword ?
 mode dword 4
 inp BYTE 40 DUP(?),0
 reslut BYTE "the sum = ",0
 averag BYTE " the averg = ",0
res dword ?
aver dword ?
.CODE
MainProc PROC
mov sum,0

input prompt1,inp,40
atod inp
mov grade1,eax
add sum,eax

input prompt2,inp,40
atod inp
mov grade2,eax
add sum,eax

input prompt3,inp,40
atod inp
mov grade3,eax
add sum,eax

input prompt4,inp,40
atod inp
mov grade4,eax
add sum,eax
mov eax,sum
dtoa res,eax
mov edx,0
mov eax,sum
output reslut,res
div mode
dtoa aver,eax
output averag,aver
mov res,0
ret
MainProc ENDP
END
