.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
prompt1 BYTE "Enter width of rectangle",0
prompt2 BYTE "Enter length of rectangle ",0

 num1 dword ?
 num2 dword ?
 a BYTE ?
 inp BYTE 40 DUP(?),0
 reslut BYTE "the reslut = ",0
res dword ?
.CODE
MainProc PROC
mov a,2
input prompt1,inp,40
atod inp
mov num1,eax
input prompt2,inp,40
atod inp
add eax,num1
mul a
mov num2 ,eax
dtoa res,eax
output reslut,res
mov eax,0
ret
MainProc ENDP
END
