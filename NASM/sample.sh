#!/bin/sh

set -e

function help {
  echo "$1: Uses g++ and objconv to convert a C program to nasm"
  echo "usage: $1 <sourcefile.c>"
  exit 0
}

[ -z "$1" ] || [ "$1" == "-h" ] && help "$(basename "$0")"

C_FILE="$1"
O_FILE="$C_FILE.o"
NASM_FILE="$C_FILE.nasm"
NASM_O_FILE="$NASM_FILE.o"
EXEC_FILE="$C_FILE.run"
g++ -m64 -fno-pie -c -g -o "$O_FILE" "$C_FILE"
# g++ -m64 -fPIC -c -g -o "$O_FILE" "$C_FILE"
./objconv -fnasm "$O_FILE" "$NASM_FILE"
sed -i '' -e 's|st(0)|st0  |g' "$NASM_FILE"
sed -i '' -e 's|noexecute|         |g' "$NASM_FILE"
sed -i '' -e 's|execute|       |g' "$NASM_FILE"
sed -i '' -e 's|: function||g' "$NASM_FILE"
sed -i '' -e 's|?_|L_|g' "$NASM_FILE"
sed -n -i '' -e '/SECTION .eh_frame/q;p' "$NASM_FILE"
sed -i '' -e 's|;.*||g' "$NASM_FILE"
sed -i '' -e 's/^M//g' "$NASM_FILE"
sed -i '' -e 's|\s\+$||g' "$NASM_FILE"
sed -i '' -e 's|align=1||g' "$NASM_FILE"
echo 'Nasm file generated in '"$NASM_FILE"
nasm -f elf64 -o "$NASM_O_FILE" "$NASM_FILE"
g++ -m64 -lm -o "$EXEC_FILE"  "$NASM_O_FILE"
echo 'Successfully compiled '"$NASM_FILE" to "$EXEC_FILE"
