.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
prompt1 BYTE "Enter number1",0
prompt2 BYTE "Enter number2",0
prompt3 BYTE "Enter number3",0
 num1 dword ?
 num2 dword ?
 num3 dword ?

 a BYTE 2
 inp BYTE 40 DUP(?),0
 reslut BYTE "the reslut = ",0
res dword ?
.CODE
MainProc PROC

input prompt1,inp,40
atod inp
mov num1,eax
input prompt2,inp,40
atod inp
add eax,num1
mul a
mov num2 ,eax

input prompt3,inp,40
atod inp
add eax,num2
dtoa res,eax
output reslut,res
mov eax,0
ret
MainProc ENDP
END