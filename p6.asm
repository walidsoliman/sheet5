.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
prompt1 BYTE "Enter frist grade ",0
prompt2 BYTE "Enter weight of frist grade ",0
prompt3 BYTE "Enter the second gtrade ",0
prompt4 BYTE "Enter weight of second grade ",0
prompt5 BYTE "Enter third grade ",0
prompt6 BYTE "Enter weight of third grade ",0
prompt7 BYTE "Enter fourth grade ",0
prompt8 BYTE "Enter weight of fourth  grade ",0
;------------------------------
 grade1 dword ?
 grade2 dword ?
 grade3 dword ?
 grade4 dword ?
 ;--------------
 mode1 dword ?
 mode2 dword ?
 mode3 dword ?
 mode4 dword ?
;---------------
 sum dword  ?
 sumofweight  dword ?
 aver dword ?
  inp BYTE 40 DUP(?),0
  reslut BYTE "weighted sum = ",0
  reslut2 Byte " sum of weighted",0
  averg BYTE " average =",0

  res1 dword ?
  res2 dword ?
  res3 dword ?
.CODE
MainProc PROC
mov sum,0
mov sumofweight,0

input prompt1,inp,40
atod inp
mov grade1,eax
input prompt2,inp,40
atod inp
add sumofweight,eax
mul grade1
add sum,eax

input prompt3,inp,40
atod inp
mov grade2,eax
input prompt4,inp,40
atod inp
add sumofweight,eax
mul grade2
add sum,eax

input prompt5,inp,40
atod inp
mov grade3,eax
input prompt6,inp,40
atod inp
add sumofweight,eax
mul grade3
add sum,eax

input prompt7,inp,40
atod inp
mov grade4,eax
input prompt8,inp,40
atod inp
add sumofweight,eax
mul grade4
add sum,eax
 
 mov eax,sum
 dtoa res1,eax
 output  reslut,res1

 mov eax,sumofweight
 dtoa res2,eax
 output  reslut2,res2
 mov eax,sumofweight
 
 atod sum
 atod sumofweight
 mov edx,0
 mov eax,sum
 div sumofweight
dtoa aver,eax
 output averg,aver
mov eax,0
ret

MainProc ENDP
END