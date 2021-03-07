#AT&T 
EXIT_NR  = 1
READ_NR  = 3
WRITE_NR = 4

STDOUT = 1
EXIT_CODE_SUCCESS = 0


.text
msg: .ascii "Hello, world!\n"
msgLen = . - msg


.global _start

_start:

mov $WRITE_NR, %eax
mov $STDOUT  , %ebx
mov $msg     , %ecx
mov $msgLen  , %edx
int $0x80


mov $EXIT_NR          , %eax
mov $EXIT_CODE_SUCCESS, %ebx
int $0x80
