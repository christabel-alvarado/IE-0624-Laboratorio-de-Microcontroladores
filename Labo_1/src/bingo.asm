;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"bingo.c"
	list	p=12f683
	radix dec
	include "p12f683.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__mulint
	extern	__modsint
	extern	_rand
	extern	_TRISIO
	extern	_GPIO
	extern	_GPIObits
	extern	__gptrput2
	extern	__gptrget2
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_inicializar_array
	global	_repetido

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0070
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_bingo_0	udata
r0x103D	res	1
r0x103C	res	1
r0x103E	res	1
r0x103F	res	1
r0x1041	res	1
r0x1040	res	1
r0x1034	res	1
r0x1033	res	1
r0x1032	res	1
r0x1035	res	1
r0x1036	res	1
r0x1037	res	1
r0x1038	res	1
r0x1039	res	1
r0x103A	res	1
r0x1026	res	1
r0x1025	res	1
r0x1024	res	1
r0x1028	res	1
r0x1027	res	1
r0x1029	res	1
r0x102A	res	1
r0x102B	res	1
r0x102C	res	1
r0x102D	res	1
r0x102E	res	1
r0x1031	res	1
r0x1030	res	1
_main_ssd_65537_34	res	16
_main_nums_generados_65537_34	res	20
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; initialized absolute data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_bingo	code
;***
;  pBlock Stats: dbName = M
;***
;has an exit
;functions called:
;   _inicializar_array
;   _rand
;   __modsint
;   _repetido
;   __mulint
;   _inicializar_array
;   _inicializar_array
;   _rand
;   __modsint
;   _repetido
;   __mulint
;   _inicializar_array
;11 compiler assigned registers:
;   r0x103C
;   r0x103D
;   r0x103E
;   STK01
;   STK00
;   r0x103F
;   STK02
;   r0x1040
;   r0x1041
;   r0x1042
;   STK03
;; Starting pCode block
S_bingo__main	code
_main:
; 2 exit points
;	.line	11; "bingo.c"	TRISIO = 0b00100000;		// Pone todos los pines como salidas excepto el  5
	MOVLW	0x20
	BANKSEL	_TRISIO
	MOVWF	_TRISIO
;	.line	12; "bingo.c"	GPIO = 0x00;				// Pone todos los pines en bajo
	BANKSEL	_GPIO
	CLRF	_GPIO
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
;	.line	15; "bingo.c"	unsigned char ssd[16]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,
	MOVLW	0x3f
	BANKSEL	_main_ssd_65537_34
	MOVWF	(_main_ssd_65537_34 + 0)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x06
	MOVWF	(_main_ssd_65537_34 + 1)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x5b
	MOVWF	(_main_ssd_65537_34 + 2)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x4f
	MOVWF	(_main_ssd_65537_34 + 3)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x66
	MOVWF	(_main_ssd_65537_34 + 4)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x6d
	MOVWF	(_main_ssd_65537_34 + 5)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x7d
	MOVWF	(_main_ssd_65537_34 + 6)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x07
	MOVWF	(_main_ssd_65537_34 + 7)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x7f
	MOVWF	(_main_ssd_65537_34 + 8)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x6f
	MOVWF	(_main_ssd_65537_34 + 9)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x77
	MOVWF	(_main_ssd_65537_34 + 10)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x7c
	MOVWF	(_main_ssd_65537_34 + 11)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x39
	MOVWF	(_main_ssd_65537_34 + 12)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x5e
	MOVWF	(_main_ssd_65537_34 + 13)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x79
	MOVWF	(_main_ssd_65537_34 + 14)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x71
	MOVWF	(_main_ssd_65537_34 + 15)
;	.line	18; "bingo.c"	inicializar_array(nums_generados);
	MOVLW	high (_main_nums_generados_65537_34 + 0)
	BANKSEL	r0x103C
	MOVWF	r0x103C
	MOVLW	(_main_nums_generados_65537_34 + 0)
	MOVWF	r0x103D
	CLRF	r0x103E
	MOVF	r0x103D,W
	MOVWF	STK01
	MOVF	r0x103C,W
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_inicializar_array
	CALL	_inicializar_array
	PAGESEL	$
;	.line	19; "bingo.c"	int cont = 0;
	BANKSEL	r0x103D
	CLRF	r0x103D
	CLRF	r0x103C
_00113_DS_:
;	.line	23; "bingo.c"	if (GP5 == 1) // Si se detecta que se presionó el botón
	BANKSEL	r0x103E
	CLRF	r0x103E
	BANKSEL	_GPIObits
	BTFSS	_GPIObits,5
	GOTO	_00001_DS_
	BANKSEL	r0x103E
	INCF	r0x103E,F
_00001_DS_:
	BANKSEL	r0x103E
	MOVF	r0x103E,W
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00113_DS_
_00105_DS_:
;	.line	26; "bingo.c"	random_int = rand() % (9 - 0 + 1) + 0;; // Genera un número aleatorio
	PAGESEL	_rand
	CALL	_rand
	PAGESEL	$
	BANKSEL	r0x103F
	MOVWF	r0x103F
	MOVF	STK00,W
	MOVWF	r0x103E
	MOVLW	0x0a
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVF	r0x103E,W
	MOVWF	STK00
	MOVF	r0x103F,W
	PAGESEL	__modsint
	CALL	__modsint
	PAGESEL	$
	BANKSEL	r0x103F
	MOVWF	r0x103F
	MOVF	STK00,W
	MOVWF	r0x103E
;	.line	27; "bingo.c"	} while (repetido (nums_generados, random_int));
	MOVLW	high (_main_nums_generados_65537_34 + 0)
	MOVWF	r0x1040
	MOVLW	(_main_nums_generados_65537_34 + 0)
	MOVWF	r0x1041
;;1	CLRF	r0x1042
	MOVF	r0x103E,W
	MOVWF	STK03
	MOVF	r0x103F,W
	MOVWF	STK02
	MOVF	r0x1041,W
	MOVWF	STK01
	MOVF	r0x1040,W
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_repetido
	CALL	_repetido
	PAGESEL	$
	BANKSEL	r0x1040
	MOVWF	r0x1040
	MOVF	STK00,W
	MOVWF	r0x1041
	IORWF	r0x1040,W
	BTFSS	STATUS,2
	GOTO	_00105_DS_
;	.line	29; "bingo.c"	nums_generados[cont] = random_int;
	MOVF	r0x103D,W
	MOVWF	STK02
	MOVF	r0x103C,W
	MOVWF	STK01
	MOVLW	0x02
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mulint
	CALL	__mulint
	PAGESEL	$
	BANKSEL	r0x1040
	MOVWF	r0x1040
	MOVF	STK00,W
	MOVWF	r0x1041
	ADDLW	(_main_nums_generados_65537_34 + 0)
	MOVWF	r0x1041
	MOVF	r0x1040,W
	BTFSC	STATUS,0
	INCFSZ	r0x1040,W
	ADDLW	high (_main_nums_generados_65537_34 + 0)
	MOVWF	r0x1040
	MOVF	r0x1041,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1040
	BTFSC	r0x1040,0
	BSF	STATUS,7
	MOVF	r0x103E,W
	BANKSEL	INDF
	MOVWF	INDF
	INCF	FSR,F
	BANKSEL	r0x103F
	MOVF	r0x103F,W
	BANKSEL	INDF
	MOVWF	INDF
;	.line	30; "bingo.c"	cont++;
	BANKSEL	r0x103D
	INCF	r0x103D,F
	BTFSC	STATUS,2
	INCF	r0x103C,F
;	.line	31; "bingo.c"	if (cont == 10) {
	MOVF	r0x103D,W
	XORLW	0x0a
	BTFSS	STATUS,2
	GOTO	_00113_DS_
	MOVF	r0x103C,W
	XORLW	0x00
	BTFSS	STATUS,2
	GOTO	_00113_DS_
;	.line	32; "bingo.c"	cont = 0; // Reinicia el contador
	CLRF	r0x103D
	CLRF	r0x103C
;	.line	33; "bingo.c"	inicializar_array(nums_generados);
	MOVLW	high (_main_nums_generados_65537_34 + 0)
	MOVWF	r0x103F
	MOVLW	(_main_nums_generados_65537_34 + 0)
	MOVWF	r0x103E
	CLRF	r0x1041
	MOVF	r0x103E,W
	MOVWF	STK01
	MOVF	r0x103F,W
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_inicializar_array
	CALL	_inicializar_array
	PAGESEL	$
	GOTO	_00113_DS_
;	.line	41; "bingo.c"	}
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget2
;   __gptrget2
;18 compiler assigned registers:
;   r0x1024
;   STK00
;   r0x1025
;   STK01
;   r0x1026
;   STK02
;   r0x1027
;   STK03
;   r0x1028
;   r0x1029
;   r0x102A
;   r0x102B
;   r0x102C
;   r0x102D
;   r0x102E
;   r0x102F
;   r0x1030
;   r0x1031
;; Starting pCode block
S_bingo__repetido	code
_repetido:
; 2 exit points
;	.line	49; "bingo.c"	int repetido(unsigned int arr[], int num) {
	BANKSEL	r0x1024
	MOVWF	r0x1024
	MOVF	STK00,W
	MOVWF	r0x1025
	MOVF	STK01,W
	MOVWF	r0x1026
	MOVF	STK02,W
	MOVWF	r0x1027
	MOVF	STK03,W
	MOVWF	r0x1028
;	.line	50; "bingo.c"	for (int i = 0; i < 10; i++) {
	CLRF	r0x1029
	CLRF	r0x102A
	CLRF	r0x102B
	CLRF	r0x102C
;;signed compare: left < lit(0xA=10), size=2, mask=ffff
_00142_DS_:
	BANKSEL	r0x102A
	MOVF	r0x102A,W
	ADDLW	0x80
	ADDLW	0x80
	BTFSS	STATUS,2
	GOTO	_00158_DS_
	MOVLW	0x0a
	SUBWF	r0x1029,W
_00158_DS_:
	BTFSC	STATUS,0
	GOTO	_00140_DS_
;;genSkipc:3307: created from rifx:0x7ffc814b8580
;	.line	51; "bingo.c"	if (arr[i] == num) {
	BANKSEL	r0x102B
	MOVF	r0x102B,W
	ADDWF	r0x1026,W
	MOVWF	r0x102D
	MOVF	r0x1025,W
	MOVWF	r0x102E
	MOVF	r0x102C,W
	BTFSC	STATUS,0
	INCFSZ	r0x102C,W
	ADDWF	r0x102E,F
;;104	MOVF	r0x1024,W
;;102	MOVWF	r0x102F
	MOVF	r0x102D,W
	MOVWF	STK01
	MOVF	r0x102E,W
	MOVWF	STK00
;;103	MOVF	r0x102F,W
	MOVF	r0x1024,W
	PAGESEL	__gptrget2
	CALL	__gptrget2
	PAGESEL	$
	BANKSEL	r0x1030
	MOVWF	r0x1030
	MOVF	STK00,W
	MOVWF	r0x1031
;;106	MOVF	r0x1028,W
	MOVF	r0x1027,W
	MOVWF	r0x102E
;;105	MOVF	r0x102D,W
	MOVF	r0x1028,W
	MOVWF	r0x102D
	XORWF	r0x1031,W
	BTFSS	STATUS,2
	GOTO	_00143_DS_
	MOVF	r0x102E,W
	XORWF	r0x1030,W
	BTFSS	STATUS,2
	GOTO	_00143_DS_
;	.line	52; "bingo.c"	return 1; // El número es repetido
	MOVLW	0x01
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00144_DS_
_00143_DS_:
;	.line	50; "bingo.c"	for (int i = 0; i < 10; i++) {
	MOVLW	0x02
	BANKSEL	r0x102B
	ADDWF	r0x102B,F
	BTFSC	STATUS,0
	INCF	r0x102C,F
	INCF	r0x1029,F
	BTFSC	STATUS,2
	INCF	r0x102A,F
	GOTO	_00142_DS_
_00140_DS_:
;	.line	55; "bingo.c"	return 0; // El número no es repetido
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
_00144_DS_:
;	.line	56; "bingo.c"	}
	RETURN	
; exit point of _repetido

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrput2
;   __gptrput2
;14 compiler assigned registers:
;   r0x1032
;   STK00
;   r0x1033
;   STK01
;   r0x1034
;   r0x1035
;   r0x1036
;   r0x1037
;   r0x1038
;   r0x1039
;   r0x103A
;   r0x103B
;   STK02
;   STK03
;; Starting pCode block
S_bingo__inicializar_array	code
_inicializar_array:
; 2 exit points
;	.line	43; "bingo.c"	void inicializar_array(unsigned int arr[]) {
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVF	STK00,W
	MOVWF	r0x1033
	MOVF	STK01,W
	MOVWF	r0x1034
;	.line	44; "bingo.c"	for (int i = 0; i < 10; i++) {
	CLRF	r0x1035
	CLRF	r0x1036
	CLRF	r0x1037
	CLRF	r0x1038
;;signed compare: left < lit(0xA=10), size=2, mask=ffff
_00120_DS_:
	BANKSEL	r0x1036
	MOVF	r0x1036,W
	ADDLW	0x80
	ADDLW	0x80
	BTFSS	STATUS,2
	GOTO	_00133_DS_
	MOVLW	0x0a
	SUBWF	r0x1035,W
_00133_DS_:
	BTFSC	STATUS,0
	GOTO	_00122_DS_
;;genSkipc:3307: created from rifx:0x7ffc814b8580
;	.line	45; "bingo.c"	arr[i] = 10;  // Fuera del rango de 0-9
	BANKSEL	r0x1037
	MOVF	r0x1037,W
	ADDWF	r0x1034,W
	MOVWF	r0x1039
	MOVF	r0x1033,W
	MOVWF	r0x103A
	MOVF	r0x1038,W
	BTFSC	STATUS,0
	INCFSZ	r0x1038,W
	ADDWF	r0x103A,F
;;101	MOVF	r0x1032,W
;;99	MOVWF	r0x103B
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x0a
	MOVWF	STK03
	MOVF	r0x1039,W
	MOVWF	STK01
	MOVF	r0x103A,W
	MOVWF	STK00
;;100	MOVF	r0x103B,W
	MOVF	r0x1032,W
	PAGESEL	__gptrput2
	CALL	__gptrput2
	PAGESEL	$
;	.line	44; "bingo.c"	for (int i = 0; i < 10; i++) {
	MOVLW	0x02
	BANKSEL	r0x1037
	ADDWF	r0x1037,F
	BTFSC	STATUS,0
	INCF	r0x1038,F
	INCF	r0x1035,F
	BTFSC	STATUS,2
	INCF	r0x1036,F
	GOTO	_00120_DS_
_00122_DS_:
;	.line	47; "bingo.c"	}
	RETURN	
; exit point of _inicializar_array


;	code size estimation:
;	  258+   44 =   302 instructions (  692 byte)

	end
