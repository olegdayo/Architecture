






global _ZN10BaseMatrixC1Ev
global _ZN10BaseMatrixC2Ev
global _ZN10BaseMatrixC1Ei
global _ZN10BaseMatrixC2Ei
global _ZN10BaseMatrix7getSizeEv
global _ZN10BaseMatrix3OutEP8_IO_FILE
global _ZN14DiagonalMatrixC1Ev
global _ZN14DiagonalMatrixC2Ev
global _ZN14DiagonalMatrixC1Ei
global _ZN14DiagonalMatrixC2Ei
global _ZN14DiagonalMatrix4ReadEP8_IO_FILE
global _ZN14DiagonalMatrix10RandomReadEv
global _ZN14DiagonalMatrix3OutEP8_IO_FILE
global _ZN14DiagonalMatrix10getAverageEv
global _ZN21LowerTriangularMatrixC1Ev
global _ZN21LowerTriangularMatrixC2Ev
global _ZN21LowerTriangularMatrixC1Ei
global _ZN21LowerTriangularMatrixC2Ei
global _ZN21LowerTriangularMatrix4ReadEP8_IO_FILE
global _ZN21LowerTriangularMatrix10RandomReadEv
global _ZN21LowerTriangularMatrix3OutEP8_IO_FILE
global _ZN21LowerTriangularMatrix10getAverageEv
global _ZN6MatrixC1Ev
global _ZN6MatrixC2Ev
global _ZN6MatrixC1Ei
global _ZN6MatrixC2Ei
global _ZN6Matrix4ReadEP8_IO_FILE
global _ZN6Matrix10RandomReadEv
global _ZN6Matrix3OutEP8_IO_FILE
global _ZN6Matrix10getAverageEv
global _ZN9ContainerC1Ev
global _ZN9ContainerC2Ev
global _ZN9ContainerC1Ei
global _ZN9ContainerC2Ei
global _ZN9Container3AddEiP8_IO_FILE
global _ZN9Container2InEP8_IO_FILE
global _ZN9Container8RandomInEi
global _ZN9Container3OutEP8_IO_FILE
global _ZN9Container4SortEv
global main
global _ZTV6Matrix
global _ZTV21LowerTriangularMatrix
global _ZTV14DiagonalMatrix
global _ZTV10BaseMatrix
global _ZTI6Matrix
global _ZTS6Matrix
global _ZTI21LowerTriangularMatrix
global _ZTS21LowerTriangularMatrix
global _ZTI14DiagonalMatrix
global _ZTS14DiagonalMatrix
global _ZTI10BaseMatrix
global _ZTS10BaseMatrix

extern __cxa_atexit
extern _ZNSt8ios_base4InitD1Ev
extern __dso_handle
extern _ZNSt8ios_base4InitC1Ev
extern _ZTVN10__cxxabiv117__class_type_infoE
extern _ZTVN10__cxxabiv120__si_class_type_infoE
extern __cxa_pure_virtual
extern _Unwind_Resume
extern _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
extern atoi
extern printf
extern difftime
extern rewind
extern ftell
extern fseek
extern fclose
extern puts
extern _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
extern _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
extern fopen
extern strcmp
extern srand
extern time
extern clock
extern _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
extern __gxx_personality_v0
extern __stack_chk_fail
extern _Znwj
extern fputc
extern rand
extern __isoc99_fscanf
extern fprintf


SECTION .text   align=2

_ZN10BaseMatrixC1Ev:

_ZN10BaseMatrixC2Ev:
        push    ebp
        mov     ebp, esp
        mov     edx, _ZTV10BaseMatrix+8H
        mov     eax, dword [ebp+8H]
        mov     dword [eax], edx
        mov     eax, dword [ebp+8H]
        mov     dword [eax+4H], 0
        mov     eax, dword [ebp+8H]
        mov     dword [eax+4H], 0
        nop
        pop     ebp
        ret


_ZN10BaseMatrixC1Ei:

_ZN10BaseMatrixC2Ei:
        push    ebp
        mov     ebp, esp
        mov     edx, _ZTV10BaseMatrix+8H
        mov     eax, dword [ebp+8H]
        mov     dword [eax], edx
        mov     eax, dword [ebp+8H]
        mov     dword [eax+4H], 0
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp+0CH]
        mov     dword [eax+4H], edx
        nop
        pop     ebp
        ret


        nop

_ZN10BaseMatrix7getSizeEv:
        push    ebp
        mov     ebp, esp
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+4H]
        pop     ebp
        ret


        nop

_ZN10BaseMatrix3OutEP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+4H]
        sub     esp, 4
        push    eax
        push    L_089
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        nop
        leave
        ret


        nop

_ZN14DiagonalMatrixC1Ev:

_ZN14DiagonalMatrixC2Ev:
        push    ebp
        mov     ebp, esp
        sub     esp, 16
        mov     eax, dword [ebp+8H]
        push    eax
        call    _ZN10BaseMatrixC2Ev
        add     esp, 4
        mov     edx, _ZTV14DiagonalMatrix+8H
        mov     eax, dword [ebp+8H]
        mov     dword [eax], edx
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], 0
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], 0
        mov     dword [ebp-4H], 0
        jmp     L_002

L_001:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-4H]
        fldz
        fstp    dword [eax+edx*4+0CH]
        add     dword [ebp-4H], 1
L_002:  cmp     dword [ebp-4H], 999
        jle     L_001
        nop
        nop
        leave
        ret


_ZN14DiagonalMatrixC1Ei:

_ZN14DiagonalMatrixC2Ei:
        push    ebp
        mov     ebp, esp
        sub     esp, 16
        mov     eax, dword [ebp+8H]
        push    eax
        call    _ZN10BaseMatrixC2Ev
        add     esp, 4
        mov     edx, _ZTV14DiagonalMatrix+8H
        mov     eax, dword [ebp+8H]
        mov     dword [eax], edx
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], 0
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp+0CH]
        mov     dword [eax+8H], edx
        mov     dword [ebp-4H], 0
        jmp     L_004

L_003:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-4H]
        fldz
        fstp    dword [eax+edx*4+0CH]
        add     dword [ebp-4H], 1
L_004:  cmp     dword [ebp-4H], 999
        jle     L_003
        nop
        nop
        leave
        ret


        nop

_ZN14DiagonalMatrix4ReadEP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     dword [ebp-0CH], 0
        jmp     L_006

L_005:  mov     eax, dword [ebp-0CH]
        lea     edx, [eax*4]
        mov     eax, dword [ebp+8H]
        add     eax, edx
        add     eax, 12
        sub     esp, 4
        push    eax
        push    L_090
        push    dword [ebp+0CH]
        call    __isoc99_fscanf
        add     esp, 16
        add     dword [ebp-0CH], 1
L_006:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-0CH], eax
        jl      L_005
        nop
        nop
        leave
        ret


_ZN14DiagonalMatrix10RandomReadEv:
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        call    rand
        mov     ecx, eax
        mov     edx, 1374389535
        mov     eax, ecx
        imul    edx
        mov     eax, edx
        sar     eax, 5
        mov     edx, ecx
        sar     edx, 31
        sub     eax, edx
        imul    edx, eax, 100
        mov     eax, ecx
        sub     eax, edx
        lea     edx, [eax+1H]
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], edx
        mov     dword [ebp-0CH], 0
        jmp     L_008

L_007:  call    rand
        mov     dword [ebp-1CH], eax
        fild    dword [ebp-1CH]
        fld     dword [L_123]
        fdivp   st1, st0
        fld     dword [L_124]
        fdivp   st1, st0
        fstp    dword [ebp-1CH]
        call    rand
        mov     dword [ebp-20H], eax
        fild    dword [ebp-20H]
        fmul    dword [ebp-1CH]
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-0CH]
        fstp    dword [eax+edx*4+0CH]
        add     dword [ebp-0CH], 1
L_008:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-0CH], eax
        jl      L_007
        nop
        nop
        leave
        ret


_ZN14DiagonalMatrix3OutEP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        push    eax
        push    L_091
        push    L_092
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        add     eax, 12
        mov     eax, dword [eax]
        sub     esp, 12
        push    dword [ebp+8H]
        call    eax
        add     esp, 16
        sub     esp, 12
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_093
        push    L_094
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 32
        sub     esp, 4
        push    L_095
        push    L_096
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        mov     dword [ebp-10H], 0
        jmp     L_014

L_009:  mov     dword [ebp-0CH], 0
        jmp     L_013

L_010:  mov     eax, dword [ebp-10H]
        cmp     eax, dword [ebp-0CH]
        jnz     L_011
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-10H]
        fld     dword [eax+edx*4+0CH]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_097
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        jmp     L_012

L_011:  sub     esp, 4
        push    L_098
        push    L_099
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
L_012:  add     dword [ebp-0CH], 1
L_013:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-0CH], eax
        jl      L_010
        sub     esp, 8
        push    dword [ebp+0CH]
        push    10
        call    fputc
        add     esp, 16
        add     dword [ebp-10H], 1
L_014:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-10H], eax
        jl      L_009
        nop
        nop
        leave
        ret


        nop

_ZN14DiagonalMatrix10getAverageEv:
        push    ebp
        mov     ebp, esp
        sub     esp, 20
        fldz
        fstp    dword [ebp-8H]
        mov     dword [ebp-4H], 0
        jmp     L_016

L_015:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-4H]
        fld     dword [eax+edx*4+0CH]
        fld     dword [ebp-8H]
        faddp   st1, st0
        fstp    dword [ebp-8H]
        add     dword [ebp-4H], 1
L_016:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-4H], eax
        jl      L_015
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        mov     dword [ebp-14H], eax
        fild    dword [ebp-14H]
        fld     dword [ebp-8H]
        fdivrp  st1, st0
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        mov     dword [ebp-14H], eax
        fild    dword [ebp-14H]
        fdivp   st1, st0
        leave
        ret


_ZN21LowerTriangularMatrixC1Ev:

_ZN21LowerTriangularMatrixC2Ev:
        push    ebp
        mov     ebp, esp
        sub     esp, 16
        mov     eax, dword [ebp+8H]
        push    eax
        call    _ZN10BaseMatrixC2Ev
        add     esp, 4
        mov     edx, _ZTV21LowerTriangularMatrix+8H
        mov     eax, dword [ebp+8H]
        mov     dword [eax], edx
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], 0
        mov     eax, dword [ebp+8H]
        mov     dword [eax+0CH], 0
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], 0
        mov     eax, dword [ebp+8H]
        mov     dword [eax+0CH], 0
        mov     dword [ebp-4H], 0
        jmp     L_018

L_017:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-4H]
        add     edx, 4
        fldz
        fstp    dword [eax+edx*4]
        add     dword [ebp-4H], 1
L_018:  cmp     dword [ebp-4H], 599999
        jle     L_017
        nop
        nop
        leave
        ret


_ZN21LowerTriangularMatrixC1Ei:

_ZN21LowerTriangularMatrixC2Ei:
        push    ebp
        mov     ebp, esp
        sub     esp, 16
        mov     eax, dword [ebp+8H]
        push    eax
        call    _ZN10BaseMatrixC2Ev
        add     esp, 4
        mov     edx, _ZTV21LowerTriangularMatrix+8H
        mov     eax, dword [ebp+8H]
        mov     dword [eax], edx
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], 0
        mov     eax, dword [ebp+8H]
        mov     dword [eax+0CH], 0
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp+0CH]
        mov     dword [eax+8H], edx
        mov     eax, dword [ebp+0CH]
        add     eax, 1
        imul    eax, dword [ebp+0CH]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax, 1
        mov     edx, eax
        mov     eax, dword [ebp+8H]
        mov     dword [eax+0CH], edx
        mov     dword [ebp-4H], 0
        jmp     L_020

L_019:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-4H]
        add     edx, 4
        fldz
        fstp    dword [eax+edx*4]
        add     dword [ebp-4H], 1
L_020:  cmp     dword [ebp-4H], 599999
        jle     L_019
        nop
        nop
        leave
        ret


_ZN21LowerTriangularMatrix4ReadEP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     dword [ebp-0CH], 0
        jmp     L_022

L_021:  mov     eax, dword [ebp-0CH]
        add     eax, 4
        lea     edx, [eax*4]
        mov     eax, dword [ebp+8H]
        add     eax, edx
        sub     esp, 4
        push    eax
        push    L_090
        push    dword [ebp+0CH]
        call    __isoc99_fscanf
        add     esp, 16
        add     dword [ebp-0CH], 1
L_022:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+0CH]
        cmp     dword [ebp-0CH], eax
        jl      L_021
        nop
        nop
        leave
        ret


_ZN21LowerTriangularMatrix10RandomReadEv:
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], 0
        call    rand
        mov     ecx, eax
        mov     edx, 1374389535
        mov     eax, ecx
        imul    edx
        mov     eax, edx
        sar     eax, 5
        mov     edx, ecx
        sar     edx, 31
        sub     eax, edx
        imul    edx, eax, 100
        mov     eax, ecx
        sub     eax, edx
        lea     edx, [eax+1H]
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], edx
        mov     eax, dword [ebp+8H]
        mov     edx, dword [eax+8H]
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        add     eax, 1
        imul    eax, edx
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax, 1
        mov     edx, eax
        mov     eax, dword [ebp+8H]
        mov     dword [eax+0CH], edx
        mov     dword [ebp-0CH], 0
        jmp     L_024

L_023:  call    rand
        mov     dword [ebp-1CH], eax
        fild    dword [ebp-1CH]
        fld     dword [L_123]
        fdivp   st1, st0
        fld     dword [L_124]
        fdivp   st1, st0
        fstp    dword [ebp-1CH]
        call    rand
        mov     dword [ebp-20H], eax
        fild    dword [ebp-20H]
        fmul    dword [ebp-1CH]
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-0CH]
        add     edx, 4
        fstp    dword [eax+edx*4]
        add     dword [ebp-0CH], 1
L_024:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+0CH]
        cmp     dword [ebp-0CH], eax
        jl      L_023
        nop
        nop
        leave
        ret


        nop

_ZN21LowerTriangularMatrix3OutEP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        push    eax
        push    L_091
        push    L_092
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        add     eax, 12
        mov     eax, dword [eax]
        sub     esp, 12
        push    dword [ebp+8H]
        call    eax
        add     esp, 16
        sub     esp, 12
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_093
        push    L_094
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 32
        sub     esp, 4
        push    L_100
        push    L_096
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        mov     dword [ebp-14H], 0
        mov     dword [ebp-10H], 0
        jmp     L_030

L_025:  mov     dword [ebp-0CH], 0
        jmp     L_029

L_026:  mov     eax, dword [ebp-10H]
        cmp     eax, dword [ebp-0CH]
        jge     L_027
        sub     esp, 4
        push    L_098
        push    L_099
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        jmp     L_028

L_027:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-14H]
        add     edx, 4
        fld     dword [eax+edx*4]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_097
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        add     dword [ebp-14H], 1
L_028:  add     dword [ebp-0CH], 1
L_029:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-0CH], eax
        jl      L_026
        sub     esp, 8
        push    dword [ebp+0CH]
        push    10
        call    fputc
        add     esp, 16
        add     dword [ebp-10H], 1
L_030:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-10H], eax
        jl      L_025
        nop
        nop
        leave
        ret


_ZN21LowerTriangularMatrix10getAverageEv:
        push    ebp
        mov     ebp, esp
        sub     esp, 20
        fldz
        fstp    dword [ebp-8H]
        mov     dword [ebp-4H], 0
        jmp     L_032

L_031:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-4H]
        add     edx, 4
        fld     dword [eax+edx*4]
        fld     dword [ebp-8H]
        faddp   st1, st0
        fstp    dword [ebp-8H]
        add     dword [ebp-4H], 1
L_032:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+0CH]
        cmp     dword [ebp-4H], eax
        jl      L_031
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        mov     dword [ebp-14H], eax
        fild    dword [ebp-14H]
        fld     dword [ebp-8H]
        fdivrp  st1, st0
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        mov     dword [ebp-14H], eax
        fild    dword [ebp-14H]
        fdivp   st1, st0
        leave
        ret


_ZN6MatrixC1Ev:

_ZN6MatrixC2Ev:
        push    ebp
        mov     ebp, esp
        sub     esp, 16
        mov     eax, dword [ebp+8H]
        push    eax
        call    _ZN10BaseMatrixC2Ev
        add     esp, 4
        mov     edx, _ZTV6Matrix+8H
        mov     eax, dword [ebp+8H]
        mov     dword [eax], edx
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], 0
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], 0
        mov     dword [ebp-8H], 0
        jmp     L_036

L_033:  mov     dword [ebp-4H], 0
        jmp     L_035

L_034:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-8H]
        imul    ecx, edx, 1000
        mov     edx, dword [ebp-4H]
        add     edx, ecx
        fldz
        fstp    dword [eax+edx*4+0CH]
        add     dword [ebp-4H], 1
L_035:  cmp     dword [ebp-4H], 999
        jle     L_034
        add     dword [ebp-8H], 1
L_036:  cmp     dword [ebp-8H], 999
        jle     L_033
        nop
        nop
        leave
        ret


        nop

_ZN6MatrixC1Ei:

_ZN6MatrixC2Ei:
        push    ebp
        mov     ebp, esp
        sub     esp, 16
        mov     eax, dword [ebp+8H]
        push    eax
        call    _ZN10BaseMatrixC2Ev
        add     esp, 4
        mov     edx, _ZTV6Matrix+8H
        mov     eax, dword [ebp+8H]
        mov     dword [eax], edx
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], 0
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp+0CH]
        mov     dword [eax+8H], edx
        mov     dword [ebp-8H], 0
        jmp     L_040

L_037:  mov     dword [ebp-4H], 0
        jmp     L_039

L_038:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-8H]
        imul    ecx, edx, 1000
        mov     edx, dword [ebp-4H]
        add     edx, ecx
        fldz
        fstp    dword [eax+edx*4+0CH]
        add     dword [ebp-4H], 1
L_039:  cmp     dword [ebp-4H], 999
        jle     L_038
        add     dword [ebp-8H], 1
L_040:  cmp     dword [ebp-8H], 999
        jle     L_037
        nop
        nop
        leave
        ret


_ZN6Matrix4ReadEP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     dword [ebp-10H], 0
        jmp     L_044

L_041:  mov     dword [ebp-0CH], 0
        jmp     L_043

L_042:  mov     eax, dword [ebp-10H]
        imul    edx, eax, 1000
        mov     eax, dword [ebp-0CH]
        add     eax, edx
        lea     edx, [eax*4]
        mov     eax, dword [ebp+8H]
        add     eax, edx
        add     eax, 12
        sub     esp, 4
        push    eax
        push    L_090
        push    dword [ebp+0CH]
        call    __isoc99_fscanf
        add     esp, 16
        add     dword [ebp-0CH], 1
L_043:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-0CH], eax
        jl      L_042
        add     dword [ebp-10H], 1
L_044:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-10H], eax
        jl      L_041
        nop
        nop
        leave
        ret


        nop

_ZN6Matrix10RandomReadEv:
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        call    rand
        mov     ecx, eax
        mov     edx, 1374389535
        mov     eax, ecx
        imul    edx
        mov     eax, edx
        sar     eax, 5
        mov     edx, ecx
        sar     edx, 31
        sub     eax, edx
        imul    edx, eax, 100
        mov     eax, ecx
        sub     eax, edx
        lea     edx, [eax+1H]
        mov     eax, dword [ebp+8H]
        mov     dword [eax+8H], edx
        mov     dword [ebp-10H], 0
        jmp     L_048

L_045:  mov     dword [ebp-0CH], 0
        jmp     L_047

L_046:  call    rand
        mov     dword [ebp-1CH], eax
        fild    dword [ebp-1CH]
        fld     dword [L_123]
        fdivp   st1, st0
        fld     dword [L_124]
        fdivp   st1, st0
        fstp    dword [ebp-1CH]
        call    rand
        mov     dword [ebp-20H], eax
        fild    dword [ebp-20H]
        fmul    dword [ebp-1CH]
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-10H]
        imul    ecx, edx, 1000
        mov     edx, dword [ebp-0CH]
        add     edx, ecx
        fstp    dword [eax+edx*4+0CH]
        add     dword [ebp-0CH], 1
L_047:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-0CH], eax
        jl      L_046
        add     dword [ebp-10H], 1
L_048:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-10H], eax
        jl      L_045
        nop
        nop
        leave
        ret


        nop

_ZN6Matrix3OutEP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        push    eax
        push    L_091
        push    L_092
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        add     eax, 12
        mov     eax, dword [eax]
        sub     esp, 12
        push    dword [ebp+8H]
        call    eax
        add     esp, 16
        sub     esp, 12
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_093
        push    L_094
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 32
        sub     esp, 4
        push    L_101
        push    L_096
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        mov     dword [ebp-10H], 0
        jmp     L_052

L_049:  mov     dword [ebp-0CH], 0
        jmp     L_051

L_050:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-10H]
        imul    ecx, edx, 1000
        mov     edx, dword [ebp-0CH]
        add     edx, ecx
        fld     dword [eax+edx*4+0CH]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_097
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        add     dword [ebp-0CH], 1
L_051:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-0CH], eax
        jl      L_050
        sub     esp, 8
        push    dword [ebp+0CH]
        push    10
        call    fputc
        add     esp, 16
        add     dword [ebp-10H], 1
L_052:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-10H], eax
        jl      L_049
        nop
        nop
        leave
        ret


_ZN6Matrix10getAverageEv:
        push    ebp
        mov     ebp, esp
        sub     esp, 20
        fldz
        fstp    dword [ebp-0CH]
        mov     dword [ebp-8H], 0
        jmp     L_056

L_053:  mov     dword [ebp-4H], 0
        jmp     L_055

L_054:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-8H]
        imul    ecx, edx, 1000
        mov     edx, dword [ebp-4H]
        add     edx, ecx
        fld     dword [eax+edx*4+0CH]
        fld     dword [ebp-0CH]
        faddp   st1, st0
        fstp    dword [ebp-0CH]
        add     dword [ebp-4H], 1
L_055:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-4H], eax
        jl      L_054
        add     dword [ebp-8H], 1
L_056:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        cmp     dword [ebp-8H], eax
        jl      L_053
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        mov     dword [ebp-14H], eax
        fild    dword [ebp-14H]
        fld     dword [ebp-0CH]
        fdivrp  st1, st0
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        mov     dword [ebp-14H], eax
        fild    dword [ebp-14H]
        fdivp   st1, st0
        leave
        ret


        nop

_ZN9ContainerC1Ev:

_ZN9ContainerC2Ev:
        push    ebp
        mov     ebp, esp
        mov     eax, dword [ebp+8H]
        mov     dword [eax], 0
        nop
        pop     ebp
        ret


        nop

_ZN9ContainerC1Ei:

_ZN9ContainerC2Ei:
        push    ebp
        mov     ebp, esp
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp+0CH]
        mov     dword [eax], edx
        nop
        pop     ebp
        ret


_ZN9Container3AddEiP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        push    ebx
        sub     esp, 36
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp+10H]
        mov     dword [ebp-20H], eax

        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        sub     esp, 4
        lea     eax, [ebp-18H]
        push    eax
        push    L_089
        push    dword [ebp-20H]
        call    __isoc99_fscanf
        add     esp, 16
        sub     esp, 4
        lea     eax, [ebp-14H]
        push    eax
        push    L_089
        push    dword [ebp-20H]
        call    __isoc99_fscanf
        add     esp, 16
        mov     eax, dword [ebp-18H]
        test    eax, eax
        jnz     L_057
        sub     esp, 12
        push    4000012
        call    _Znwj
        add     esp, 16
        mov     ebx, eax
        mov     eax, dword [ebp-14H]
        sub     esp, 8
        push    eax
        push    ebx
        call    _ZN6MatrixC1Ei
        add     esp, 16
        mov     dword [ebp-10H], ebx
        jmp     L_059

L_057:  mov     eax, dword [ebp-18H]
        cmp     eax, 1
        jnz     L_058
        sub     esp, 12
        push    4012
        call    _Znwj
        add     esp, 16
        mov     ebx, eax
        mov     eax, dword [ebp-14H]
        sub     esp, 8
        push    eax
        push    ebx
        call    _ZN14DiagonalMatrixC1Ei
        add     esp, 16
        mov     dword [ebp-10H], ebx
        jmp     L_059

L_058:  mov     eax, dword [ebp-18H]
        cmp     eax, 2
        jnz     L_060
        sub     esp, 12
        push    2400016
        call    _Znwj
        add     esp, 16
        mov     ebx, eax
        mov     eax, dword [ebp-14H]
        sub     esp, 8
        push    eax
        push    ebx
        call    _ZN21LowerTriangularMatrixC1Ei
        add     esp, 16
        mov     dword [ebp-10H], ebx
L_059:  mov     eax, dword [ebp-10H]
        mov     eax, dword [eax]
        mov     eax, dword [eax]
        sub     esp, 8
        push    dword [ebp-20H]
        push    dword [ebp-10H]
        call    eax
        add     esp, 16
        mov     eax, dword [ebp-1CH]
        mov     edx, dword [ebp+0CH]
        mov     ecx, dword [ebp-10H]
        mov     dword [eax+edx*4+4H], ecx
        jmp     L_061

L_060:  nop
L_061:  mov     eax, dword [ebp-0CH]

        sub     eax, dword [gs:14H]
        jz      L_062
        call    __stack_chk_fail
L_062:  mov     ebx, dword [ebp-4H]
        leave
        ret


        nop

_ZN9Container2InEP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     dword [ebp-0CH], 0
        jmp     L_064

L_063:  sub     esp, 4
        push    dword [ebp+0CH]
        push    dword [ebp-0CH]
        push    dword [ebp+8H]
        call    _ZN9Container3AddEiP8_IO_FILE
        add     esp, 16
        add     dword [ebp-0CH], 1
L_064:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        cmp     dword [ebp-0CH], eax
        jl      L_063
        nop
        nop
        leave
        ret


        nop

_ZN9Container8RandomInEi:
        push    ebp
        mov     ebp, esp
        push    ebx
        sub     esp, 20
        mov     dword [ebp-10H], 0
        jmp     L_069

L_065:  call    rand
        mov     ecx, eax
        mov     edx, 1431655766
        mov     eax, ecx
        imul    edx
        mov     ebx, ecx
        sar     ebx, 31
        mov     eax, edx
        sub     eax, ebx
        mov     dword [ebp-0CH], eax
        mov     edx, dword [ebp-0CH]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        sub     ecx, eax
        mov     edx, ecx
        mov     dword [ebp-0CH], edx
        cmp     dword [ebp-0CH], 0
        jnz     L_066
        sub     esp, 12
        push    4000012
        call    _Znwj
        add     esp, 16
        mov     ebx, eax
        sub     esp, 8
        push    0
        push    ebx
        call    _ZN6MatrixC1Ei
        add     esp, 16
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-10H]
        mov     dword [eax+edx*4+4H], ebx
        jmp     L_068

L_066:  cmp     dword [ebp-0CH], 1
        jnz     L_067
        sub     esp, 12
        push    4012
        call    _Znwj
        add     esp, 16
        mov     ebx, eax
        sub     esp, 8
        push    0
        push    ebx
        call    _ZN14DiagonalMatrixC1Ei
        add     esp, 16
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-10H]
        mov     dword [eax+edx*4+4H], ebx
        jmp     L_068

L_067:  sub     esp, 12
        push    2400016
        call    _Znwj
        add     esp, 16
        mov     ebx, eax
        sub     esp, 8
        push    0
        push    ebx
        call    _ZN21LowerTriangularMatrixC1Ei
        add     esp, 16
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-10H]
        mov     dword [eax+edx*4+4H], ebx
L_068:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-10H]
        mov     eax, dword [eax+edx*4+4H]
        mov     eax, dword [eax]
        add     eax, 4
        mov     eax, dword [eax]
        mov     edx, dword [ebp+8H]
        mov     ecx, dword [ebp-10H]
        mov     edx, dword [edx+ecx*4+4H]
        sub     esp, 12
        push    edx
        call    eax
        add     esp, 16
        add     dword [ebp-10H], 1
L_069:  mov     eax, dword [ebp-10H]
        cmp     eax, dword [ebp+0CH]
        jl      L_065
        nop
        nop
        mov     ebx, dword [ebp-4H]
        leave
        ret


_ZN9Container3OutEP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        sub     esp, 4
        push    eax
        push    L_102
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        sub     esp, 4
        push    L_103
        push    L_104
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        mov     dword [ebp-0CH], 0
        jmp     L_071

L_070:  sub     esp, 4
        push    L_105
        push    L_104
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-0CH]
        mov     eax, dword [eax+edx*4+4H]
        mov     eax, dword [eax]
        add     eax, 8
        mov     eax, dword [eax]
        mov     edx, dword [ebp+8H]
        mov     ecx, dword [ebp-0CH]
        mov     edx, dword [edx+ecx*4+4H]
        sub     esp, 8
        push    dword [ebp+0CH]
        push    edx
        call    eax
        add     esp, 16
        sub     esp, 4
        push    L_105
        push    L_104
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        add     dword [ebp-0CH], 1
L_071:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        cmp     dword [ebp-0CH], eax
        jl      L_070
        sub     esp, 4
        push    L_103
        push    L_104
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        nop
        leave
        ret


_ZN9Container4SortEv:
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        mov     dword [ebp-18H], 0
        jmp     L_076

L_072:  mov     eax, dword [ebp-18H]
        mov     dword [ebp-14H], eax
        mov     eax, dword [ebp-18H]
        add     eax, 1
        mov     dword [ebp-10H], eax
        jmp     L_075

L_073:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-10H]
        mov     eax, dword [eax+edx*4+4H]
        mov     eax, dword [eax]
        add     eax, 12
        mov     eax, dword [eax]
        mov     edx, dword [ebp+8H]
        mov     ecx, dword [ebp-10H]
        mov     edx, dword [edx+ecx*4+4H]
        sub     esp, 12
        push    edx
        call    eax
        add     esp, 16
        fstp    dword [ebp-1CH]
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-14H]
        mov     eax, dword [eax+edx*4+4H]
        mov     eax, dword [eax]
        add     eax, 12
        mov     eax, dword [eax]
        mov     edx, dword [ebp+8H]
        mov     ecx, dword [ebp-14H]
        mov     edx, dword [edx+ecx*4+4H]
        sub     esp, 12
        push    edx
        call    eax
        add     esp, 16
        fld     dword [ebp-1CH]
        fxch    st1
        fcomip  st0  , st1
        fstp    st0
        seta    al
        test    al, al
        jz      L_074
        mov     eax, dword [ebp-10H]
        mov     dword [ebp-14H], eax
L_074:  add     dword [ebp-10H], 1
L_075:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        cmp     dword [ebp-10H], eax
        jl      L_073
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-14H]
        mov     eax, dword [eax+edx*4+4H]
        mov     dword [ebp-0CH], eax
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-18H]
        mov     ecx, dword [eax+edx*4+4H]
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-14H]
        mov     dword [eax+edx*4+4H], ecx
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-18H]
        mov     ecx, dword [ebp-0CH]
        mov     dword [eax+edx*4+4H], ecx
        add     dword [ebp-18H], 1
L_076:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        sub     eax, 1
        cmp     dword [ebp-18H], eax
        jl      L_072
        nop
        nop
        leave
        ret


main:
        lea     ecx, [esp+4H]
        and     esp, 0FFFFFFF0H
        push    dword [ecx-4H]
        push    ebp
        mov     ebp, esp
        push    ebx
        push    ecx
        sub     esp, 96
        mov     ebx, ecx
        mov     eax, dword [ebx+4H]
        mov     dword [ebp-5CH], eax

        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        sub     esp, 12
        lea     eax, [ebp-24H]
        push    eax
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
        add     esp, 16
        call    clock
        mov     dword [ebp-48H], eax
        sub     esp, 12
        push    0
        call    time
        add     esp, 16
        sub     esp, 12
        push    eax
        call    srand
        add     esp, 16
        cmp     dword [ebx], 4
        jne     L_083
        mov     eax, dword [ebp-5CH]
        add     eax, 4
        mov     eax, dword [eax]
        sub     esp, 8
        push    L_106
        push    eax
        call    strcmp
        add     esp, 16
        test    eax, eax
        jne     L_080
        mov     eax, dword [ebp-5CH]
        add     eax, 8
        mov     eax, dword [eax]
        sub     esp, 8
        push    L_107
        push    eax
        call    fopen
        add     esp, 16
        mov     dword [ebp-34H], eax
        mov     eax, dword [ebp-5CH]
        add     eax, 12
        mov     eax, dword [eax]
        sub     esp, 8
        push    L_108
        push    eax
        call    fopen
        add     esp, 16
        mov     dword [ebp-30H], eax
        cmp     dword [ebp-34H], 0
        jz      L_077
        cmp     dword [ebp-30H], 0
        jnz     L_078
L_077:  sub     esp, 8
        push    L_109
        lea     eax, [ebp-24H]
        push    eax
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
        add     esp, 16
        sub     esp, 12
        lea     eax, [ebp-24H]
        push    eax
        call    _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
        add     esp, 16
        sub     esp, 12
        push    eax
        call    puts
        add     esp, 16
        sub     esp, 12
        push    dword [ebp-34H]
        call    fclose
        add     esp, 16
        sub     esp, 12
        push    dword [ebp-30H]
        call    fclose
        add     esp, 16
        mov     ebx, 0
        jmp     L_085

L_078:  sub     esp, 4
        push    2
        push    0
        push    dword [ebp-34H]
        call    fseek
        add     esp, 16
        sub     esp, 12
        push    dword [ebp-34H]
        call    ftell
        add     esp, 16
        mov     dword [ebp-2CH], eax
        cmp     dword [ebp-2CH], 0
        jnz     L_079
        sub     esp, 8
        push    L_110
        lea     eax, [ebp-24H]
        push    eax
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
        add     esp, 16
        sub     esp, 12
        lea     eax, [ebp-24H]
        push    eax
        call    _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
        add     esp, 16
        sub     esp, 12
        push    eax
        call    puts
        add     esp, 16
        mov     ebx, 0
        jmp     L_085

L_079:  sub     esp, 12
        push    dword [ebp-34H]
        call    rewind
        add     esp, 16
        sub     esp, 4
        lea     eax, [ebp-4CH]
        push    eax
        push    L_111
        push    dword [ebp-34H]
        call    __isoc99_fscanf
        add     esp, 16
        sub     esp, 12
        push    4004
        call    _Znwj
        add     esp, 16
        mov     ebx, eax
        mov     eax, dword [ebp-4CH]
        sub     esp, 8
        push    eax
        push    ebx
        call    _ZN9ContainerC1Ei
        add     esp, 16
        mov     dword [ebp-28H], ebx
        sub     esp, 12
        push    L_112
        call    puts
        add     esp, 16
        sub     esp, 8
        push    dword [ebp-34H]
        push    dword [ebp-28H]
        call    _ZN9Container2InEP8_IO_FILE
        add     esp, 16
        sub     esp, 12
        push    L_113
        call    puts
        add     esp, 16
        sub     esp, 8
        push    dword [ebp-30H]
        push    dword [ebp-28H]
        call    _ZN9Container3OutEP8_IO_FILE
        add     esp, 16
        sub     esp, 12
        push    dword [ebp-28H]
        call    _ZN9Container4SortEv
        add     esp, 16
        sub     esp, 12
        push    L_114
        call    puts
        add     esp, 16
        sub     esp, 4
        push    L_115
        push    L_104
        push    dword [ebp-30H]
        call    fprintf
        add     esp, 16
        sub     esp, 8
        push    dword [ebp-30H]
        push    dword [ebp-28H]
        call    _ZN9Container3OutEP8_IO_FILE
        add     esp, 16
        sub     esp, 12
        push    dword [ebp-34H]
        call    fclose
        add     esp, 16
        sub     esp, 12
        push    dword [ebp-30H]
        call    fclose
        add     esp, 16
        call    clock
        mov     dword [ebp-38H], eax
        sub     esp, 8
        push    dword [ebp-48H]
        push    dword [ebp-38H]
        call    difftime
        add     esp, 16
        fstp    qword [ebp-68H]
        cvttsd2si ecx, qword [ebp-68H]
        mov     edx, 274877907
        mov     eax, ecx
        imul    edx
        mov     eax, edx
        sar     eax, 6
        sar     ecx, 31
        mov     edx, ecx
        sub     eax, edx
        sub     esp, 8
        push    eax
        push    L_116
        call    printf
        add     esp, 16
        jmp     L_084

L_080:  mov     eax, dword [ebp-5CH]
        add     eax, 4
        mov     eax, dword [eax]
        sub     esp, 8
        push    L_117
        push    eax
        call    strcmp
        add     esp, 16
        test    eax, eax
        jne     L_082
        call    rand
        mov     ebx, eax
        mov     eax, dword [ebp-5CH]
        add     eax, 8
        mov     eax, dword [eax]
        sub     esp, 12
        push    eax
        call    atoi
        add     esp, 16
        mov     ecx, eax
        mov     eax, ebx
        cdq
        idiv    ecx
        mov     ecx, edx
        mov     eax, ecx
        add     eax, 1
        mov     dword [ebp-44H], eax
        mov     eax, dword [ebp-5CH]
        add     eax, 12
        mov     eax, dword [eax]
        sub     esp, 8
        push    L_108
        push    eax
        call    fopen
        add     esp, 16
        mov     dword [ebp-40H], eax
        cmp     dword [ebp-40H], 0
        jnz     L_081
        sub     esp, 8
        push    L_109
        lea     eax, [ebp-24H]
        push    eax
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
        add     esp, 16
        sub     esp, 12
        lea     eax, [ebp-24H]
        push    eax
        call    _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
        add     esp, 16
        sub     esp, 12
        push    eax
        call    puts
        add     esp, 16
        sub     esp, 12
        push    dword [ebp-40H]
        call    fclose
        add     esp, 16
        mov     ebx, 0
        jmp     L_085

L_081:  sub     esp, 12
        push    4004
        call    _Znwj
        add     esp, 16
        mov     ebx, eax
        sub     esp, 8
        push    dword [ebp-44H]
        push    ebx
        call    _ZN9ContainerC1Ei
        add     esp, 16
        mov     dword [ebp-3CH], ebx
        sub     esp, 12
        push    L_112
        call    puts
        add     esp, 16
        sub     esp, 8
        push    dword [ebp-44H]
        push    dword [ebp-3CH]
        call    _ZN9Container8RandomInEi
        add     esp, 16
        sub     esp, 12
        push    L_118
        call    puts
        add     esp, 16
        sub     esp, 8
        push    dword [ebp-40H]
        push    dword [ebp-3CH]
        call    _ZN9Container3OutEP8_IO_FILE
        add     esp, 16
        sub     esp, 12
        push    dword [ebp-3CH]
        call    _ZN9Container4SortEv
        add     esp, 16
        sub     esp, 12
        push    L_114
        call    puts
        add     esp, 16
        sub     esp, 4
        push    L_115
        push    L_104
        push    dword [ebp-40H]
        call    fprintf
        add     esp, 16
        sub     esp, 8
        push    dword [ebp-40H]
        push    dword [ebp-3CH]
        call    _ZN9Container3OutEP8_IO_FILE
        add     esp, 16
        sub     esp, 12
        push    dword [ebp-40H]
        call    fclose
        add     esp, 16
        call    clock
        mov     dword [ebp-38H], eax
        sub     esp, 8
        push    dword [ebp-48H]
        push    dword [ebp-38H]
        call    difftime
        add     esp, 16
        fstp    qword [ebp-68H]
        cvttsd2si ecx, qword [ebp-68H]
        mov     edx, 274877907
        mov     eax, ecx
        imul    edx
        mov     eax, edx
        sar     eax, 6
        sar     ecx, 31
        mov     edx, ecx
        sub     eax, edx
        sub     esp, 8
        push    eax
        push    L_116
        call    printf
        add     esp, 16
        jmp     L_084

L_082:  mov     eax, dword [ebp-5CH]
        add     eax, 4
        mov     eax, dword [eax]
        sub     esp, 8
        push    eax
        push    L_119
        call    printf
        add     esp, 16
        jmp     L_084

L_083:  sub     esp, 12
        push    L_120
        call    puts
        add     esp, 16
        sub     esp, 8
        push    4
        push    L_121
        call    printf
        add     esp, 16
        sub     esp, 8
        push    dword [ebx]
        push    L_122
        call    printf
        add     esp, 16
L_084:  mov     ebx, 0
L_085:  sub     esp, 12
        lea     eax, [ebp-24H]
        push    eax
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
        add     esp, 16
        mov     eax, ebx
        mov     edx, dword [ebp-0CH]

        sub     edx, dword [gs:14H]
        jz      L_087
        jmp     L_086


        mov     ebx, eax
        sub     esp, 12
        lea     eax, [ebp-24H]
        push    eax
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
        add     esp, 16
        mov     eax, ebx
        sub     esp, 12
        push    eax
        call    _Unwind_Resume
L_086:  call    __stack_chk_fail
L_087:  lea     esp, [ebp-8H]
        pop     ecx
        pop     ebx
        pop     ebp
        lea     esp, [ecx-4H]
        ret


_Z41__static_initialization_and_destruction_0ii:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        cmp     dword [ebp+8H], 1
        jnz     L_088
        cmp     dword [ebp+0CH], 65535
        jnz     L_088
        sub     esp, 12
        push    _ZStL8__ioinit
        call    _ZNSt8ios_base4InitC1Ev
        add     esp, 16
        sub     esp, 4
        push    __dso_handle
        push    _ZStL8__ioinit
        push    _ZNSt8ios_base4InitD1Ev
        call    __cxa_atexit
        add     esp, 16
L_088:  nop
        leave
        ret

_GLOBAL__sub_I__ZN10BaseMatrixC2Ev:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        sub     esp, 8
        push    65535
        push    1
        call    _Z41__static_initialization_and_destruction_0ii
        add     esp, 16
        leave
        ret


SECTION .data   


SECTION .bss    

_ZStL8__ioinit:
        resb    1


SECTION .rodata align=4

L_089:
        db 25H, 64H, 0AH, 00H

L_090:
        db 25H, 66H, 00H

L_091:
        db 53H, 69H, 7AH, 65H, 00H

L_092:
        db 25H, 73H, 3AH, 20H, 25H, 64H, 0AH, 00H

L_093:
        db 41H, 76H, 65H, 72H, 61H, 67H, 65H, 00H

L_094:
        db 25H, 73H, 3AH, 20H, 25H, 66H, 0AH, 00H

L_095:
        db 44H, 69H, 61H, 67H, 6FH, 6EH, 61H, 6CH
        db 20H, 6DH, 61H, 74H, 72H, 69H, 78H, 00H

L_096:
        db 25H, 73H, 3AH, 0AH, 00H

L_097:
        db 25H, 66H, 20H, 00H

L_098:
        db 30H, 00H

L_099:
        db 25H, 73H, 20H, 00H

L_100:
        db 4CH, 6FH, 77H, 65H, 72H, 2DH, 74H, 72H
        db 69H, 61H, 6EH, 67H, 75H, 6CH, 61H, 72H
        db 20H, 6DH, 61H, 74H, 72H, 69H, 78H, 00H

L_101:
        db 4DH, 61H, 74H, 72H, 69H, 78H, 00H

L_102:
        db 43H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H
        db 72H, 20H, 73H, 69H, 7AH, 65H, 3AH, 20H
        db 25H, 64H, 0AH, 00H, 00H, 00H

L_103:
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        db 00H

L_104:
        db 25H, 73H, 0AH, 00H

L_105:
        db 0AH, 00H

L_106:
        db 2DH, 66H, 00H

L_107:
        db 72H, 00H

L_108:
        db 77H, 00H, 00H, 00H

L_109:
        db 46H, 69H, 6CH, 65H, 73H, 20H, 63H, 61H
        db 6EH, 6EH, 6FH, 74H, 20H, 62H, 65H, 20H
        db 66H, 6FH, 75H, 6EH, 64H, 20H, 6FH, 72H
        db 20H, 6FH, 70H, 65H, 6EH, 65H, 64H, 21H
        db 00H

L_110:
        db 54H, 68H, 65H, 20H, 69H, 6EH, 70H, 75H
        db 74H, 20H, 66H, 69H, 6CH, 65H, 20H, 69H
        db 73H, 20H, 65H, 6DH, 70H, 74H, 79H, 21H
        db 00H

L_111:
        db 25H, 64H, 00H

L_112:
        db 43H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H
        db 72H, 20H, 68H, 61H, 73H, 20H, 62H, 65H
        db 65H, 6EH, 20H, 63H, 72H, 65H, 61H, 74H
        db 65H, 64H, 2EH, 00H

L_113:
        db 43H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H
        db 72H, 20H, 68H, 61H, 73H, 20H, 62H, 65H
        db 65H, 6EH, 20H, 66H, 69H, 6CH, 6CH, 65H
        db 64H, 2EH, 00H

L_114:
        db 43H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H
        db 72H, 20H, 68H, 61H, 73H, 20H, 62H, 65H
        db 65H, 6EH, 20H, 73H, 6FH, 72H, 74H, 65H
        db 64H, 2EH, 00H

L_115:
        db 4EH, 6FH, 77H, 20H, 63H, 6FH, 6EH, 74H
        db 61H, 69H, 6EH, 65H, 72H, 20H, 69H, 73H
        db 20H, 73H, 6FH, 72H, 74H, 65H, 64H, 21H
        db 00H

L_116:
        db 54H, 69H, 6DH, 65H, 72H, 3AH, 20H, 25H
        db 64H, 6DH, 73H, 0AH, 00H

L_117:
        db 2DH, 6EH, 00H

L_118:
        db 43H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H
        db 72H, 20H, 68H, 61H, 73H, 20H, 62H, 65H
        db 65H, 6EH, 20H, 72H, 61H, 6EH, 64H, 6FH
        db 6DH, 6CH, 79H, 20H, 66H, 69H, 6CH, 6CH
        db 65H, 64H, 2EH, 00H

L_119:
        db 55H, 6EH, 6BH, 6EH, 6FH, 77H, 6EH, 20H
        db 61H, 72H, 67H, 75H, 6DH, 65H, 6EH, 74H
        db 3AH, 20H, 25H, 73H, 0AH, 00H

L_120:
        db 57H, 72H, 6FH, 6EH, 67H, 20H, 6EH, 75H
        db 6DH, 62H, 65H, 72H, 20H, 6FH, 66H, 20H
        db 61H, 72H, 67H, 75H, 6DH, 65H, 6EH, 74H
        db 73H, 21H, 00H

L_121:
        db 4EH, 65H, 65H, 64H, 65H, 64H, 3AH, 20H
        db 25H, 64H, 0AH, 00H

L_122:
        db 47H, 6FH, 74H, 3AH, 20H, 25H, 64H, 0AH
        db 00H, 00H, 00H

L_123:  dd 4F000000H

L_124:  dd 49742400H


SECTION .gcc_except_table 

        db 0FFH, 0FFH, 01H, 0CH, 90H, 01H, 0ABH, 08H
        db 0E2H, 09H, 00H, 0F9H, 09H, 05H, 00H, 00H


SECTION .rodata._ZTV6Matrix align=4

_ZTV6Matrix:
        db 00H, 00H, 00H, 00H
        dd _ZTI6Matrix
        dd _ZN6Matrix4ReadEP8_IO_FILE
        dd _ZN6Matrix10RandomReadEv
        dd _ZN6Matrix3OutEP8_IO_FILE
        dd _ZN6Matrix10getAverageEv


SECTION .rodata._ZTV21LowerTriangularMatrix align=4

_ZTV21LowerTriangularMatrix:
        db 00H, 00H, 00H, 00H
        dd _ZTI21LowerTriangularMatrix
        dd _ZN21LowerTriangularMatrix4ReadEP8_IO_FILE
        dd _ZN21LowerTriangularMatrix10RandomReadEv
        dd _ZN21LowerTriangularMatrix3OutEP8_IO_FILE
        dd _ZN21LowerTriangularMatrix10getAverageEv


SECTION .rodata._ZTV14DiagonalMatrix align=4

_ZTV14DiagonalMatrix:
        db 00H, 00H, 00H, 00H
        dd _ZTI14DiagonalMatrix
        dd _ZN14DiagonalMatrix4ReadEP8_IO_FILE
        dd _ZN14DiagonalMatrix10RandomReadEv
        dd _ZN14DiagonalMatrix3OutEP8_IO_FILE
        dd _ZN14DiagonalMatrix10getAverageEv


SECTION .rodata._ZTV10BaseMatrix align=4

_ZTV10BaseMatrix:
        db 00H, 00H, 00H, 00H
        dd _ZTI10BaseMatrix
        dd __cxa_pure_virtual
        dd __cxa_pure_virtual
        dd __cxa_pure_virtual
        dd __cxa_pure_virtual


SECTION .rodata._ZTI6Matrix align=4

_ZTI6Matrix:
        dd _ZTVN10__cxxabiv120__si_class_type_infoE+8H
        dd _ZTS6Matrix
        dd _ZTI10BaseMatrix


SECTION .rodata._ZTS6Matrix align=4

_ZTS6Matrix:
        dq 0078697274614D36H


SECTION .rodata._ZTI21LowerTriangularMatrix align=4

_ZTI21LowerTriangularMatrix:
        dd _ZTVN10__cxxabiv120__si_class_type_infoE+8H
        dd _ZTS21LowerTriangularMatrix
        dd _ZTI10BaseMatrix


SECTION .rodata._ZTS21LowerTriangularMatrix align=4

_ZTS21LowerTriangularMatrix:
        db 32H, 31H, 4CH, 6FH, 77H, 65H, 72H, 54H
        db 72H, 69H, 61H, 6EH, 67H, 75H, 6CH, 61H
        db 72H, 4DH, 61H, 74H, 72H, 69H, 78H, 00H


SECTION .rodata._ZTI14DiagonalMatrix align=4

_ZTI14DiagonalMatrix:
        dd _ZTVN10__cxxabiv120__si_class_type_infoE+8H
        dd _ZTS14DiagonalMatrix
        dd _ZTI10BaseMatrix


SECTION .rodata._ZTS14DiagonalMatrix align=4

_ZTS14DiagonalMatrix:
        db 31H, 34H, 44H, 69H, 61H, 67H, 6FH, 6EH
        db 61H, 6CH, 4DH, 61H, 74H, 72H, 69H, 78H
        db 00H


SECTION .rodata._ZTI10BaseMatrix align=4

_ZTI10BaseMatrix:
        dd _ZTVN10__cxxabiv117__class_type_infoE+8H
        dd _ZTS10BaseMatrix


SECTION .rodata._ZTS10BaseMatrix align=4

_ZTS10BaseMatrix:
        db 31H, 30H, 42H, 61H, 73H, 65H, 4DH, 61H
        db 74H, 72H, 69H, 78H, 00H


SECTION .init_array align=4

        dd _GLOBAL__sub_I__ZN10BaseMatrixC2Ev


SECTION .note.gnu.property align=4

        db 04H, 00H, 00H, 00H, 18H, 00H, 00H, 00H
        db 05H, 00H, 00H, 00H, 47H, 4EH, 55H, 00H
        db 02H, 00H, 01H, 0C0H, 04H, 00H, 00H, 00H
        db 01H, 00H, 00H, 00H, 01H, 00H, 01H, 0C0H
        db 04H, 00H, 00H, 00H, 03H, 00H, 00H, 00H


