.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
prompt1 BYTE "Enter the number of pennis",0
prompt2 BYTE "Enter the number  nickles ",0
prompt3 BYTE "Enter the number  of demis ",0
prompt4 BYTE "Enter the number  of qurters ",0
prompt5 BYTE "Enter the number of  fifty-precent-coins ",0
prompt6 BYTE "Enter the number dollars",0
;----------------------------
 coins dword ?
 pennis dword ?
 nickles dword ?
 demis dword ?
 qurters dword ?
 fifty dword ?
 dollar dword ?
 ;-----------------------
 nic dword 5
 dem dword 10 
 qur dword 25
 fif  dword 50
 doll dword 100
 ;--------------------------
 sum dword ?

 res dword ?
 inp BYTE 40 DUP(?),0
 reslut1 BYTE "the number of dollars = ",0
 reslut2 BYTe "THE NUMBER OF coins = ",0
.CODE
MainProc PROC
mov sum,0
input prompt1,inp,40
atod inp
mov pennis,eax
add sum,eax
input prompt2,inp,40
atod inp
mul nic
add sum,eax
mov nickles ,eax
input prompt3,inp,40
atod inp
mul dem
mov demis ,eax
add sum,eax
input prompt4,inp,40
atod inp
mul qur
add sum,eax
mov qurters ,eax
input prompt5,inp,40
atod inp
mul fif
mov fifty ,eax
add sum,eax
input prompt6,inp,40
atod inp
mul doll
mov dollar ,eax
add sum,eax
mov edx,0
mov eax,sum
div doll
dtoa res,eax
dtoa coins,edx
output reslut1,res
output reslut2,coins
mov eax,0
ret
MainProc ENDP
END