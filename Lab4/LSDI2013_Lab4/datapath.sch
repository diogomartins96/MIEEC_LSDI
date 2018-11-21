VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_6(7:0)
        SIGNAL B(7:0)
        SIGNAL A(7:0)
        SIGNAL I5(7:0)
        SIGNAL I7(7:0)
        SIGNAL I6(7:0)
        SIGNAL I7(0)
        SIGNAL I7(7:1)
        SIGNAL FLAGS(2)
        SIGNAL I6(3:0)
        SIGNAL X(7:0)
        SIGNAL I5(0)
        SIGNAL I5(7:1)
        SIGNAL FLAGS(3:0)
        SIGNAL XLXN_94
        SIGNAL reset
        SIGNAL SEL(2:0)
        SIGNAL CE(1:0)
        SIGNAL OPR(2:0)
        SIGNAL clock
        SIGNAL I6(7:4)
        PORT Output B(7:0)
        PORT Output A(7:0)
        PORT Input X(7:0)
        PORT Output FLAGS(3:0)
        PORT Input reset
        PORT Input SEL(2:0)
        PORT Input CE(1:0)
        PORT Input OPR(2:0)
        PORT Input clock
        BEGIN BLOCKDEF lsdalu
            TIMESTAMP 2011 11 29 15 15 17
            RECTANGLE N 64 -340 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -316 64 -292 
            LINE N 64 -304 0 -304 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -92 384 -68 
            LINE N 320 -80 384 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF mux81
            TIMESTAMP 2011 12 1 9 26 51
            RECTANGLE N 0 -556 64 -532 
            LINE N 64 -544 0 -544 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 320 -568 64 -632 
            LINE N 64 -632 64 0 
            LINE N 64 0 320 -56 
            LINE N 320 -56 320 -568 
            RECTANGLE N 320 -332 384 -308 
            LINE N 320 -320 384 -320 
            LINE N 208 16 208 -32 
            LINE N 220 16 220 -32 
            LINE N 220 16 196 16 
            LINE N 196 16 196 -28 
            LINE N 196 -28 220 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF dec24
            TIMESTAMP 2011 12 1 12 10 44
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 320 -32 384 -32 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF reg4b
            TIMESTAMP 2011 12 1 12 24 28
            LINE N 64 -160 0 -160 
            LINE N 64 -32 0 -32 
            LINE N 64 -96 0 -96 
            LINE N 64 -108 112 -96 
            LINE N 112 -96 64 -84 
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF reg8b
            TIMESTAMP 2011 12 1 12 21 51
            LINE N 64 -32 0 -32 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -108 112 -96 
            LINE N 112 -96 64 -84 
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF buf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 64 0 128 -32 
            LINE N 128 -32 64 -64 
            LINE N 64 -64 64 0 
        END BLOCKDEF
        BEGIN BLOCK XLXI_20 mux81
            PIN I0(7:0)
            PIN I1(7:0)
            PIN I2(7:0)
            PIN I3(7:0)
            PIN I4(7:0) X(7:0)
            PIN I5(7:0) I5(7:0)
            PIN I6(7:0) I6(7:0)
            PIN I7(7:0) I7(7:0)
            PIN Y(7:0) B(7:0)
            PIN SEL(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_38(6:0) gnd
            PIN G I7(7:1)
        END BLOCK
        BEGIN BLOCK XLXI_47 buf
            PIN I FLAGS(2)
            PIN O I7(0)
        END BLOCK
        BEGIN BLOCK XLXI_42(3:0) gnd
            PIN G I6(7:4)
        END BLOCK
        BEGIN BLOCK VCC(3:0) vcc
            PIN P I6(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_29 vcc
            PIN P I5(0)
        END BLOCK
        BEGIN BLOCK GND1(6:0) gnd
            PIN G I5(7:1)
        END BLOCK
        BEGIN BLOCK XLXI_23 reg8b
            PIN ck
            PIN reset
            PIN enable
            PIN D(7:0)
            PIN Q(7:0) A(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_24 reg8b
            PIN ck
            PIN reset
            PIN enable
            PIN D(7:0)
            PIN Q(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_25 reg8b
            PIN ck
            PIN reset
            PIN enable
            PIN D(7:0)
            PIN Q(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_26 reg8b
            PIN ck
            PIN reset
            PIN enable
            PIN D(7:0)
            PIN Q(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 lsdalu
            PIN OPR(2:0)
            PIN A(7:0)
            PIN B(7:0)
            PIN R(7:0) XLXN_6(7:0)
            PIN FLAGS(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_22 reg4b
            PIN ck
            PIN reset
            PIN enable XLXN_94
            PIN D(3:0)
            PIN Q(3:0) FLAGS(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_76 vcc
            PIN P XLXN_94
        END BLOCK
        BEGIN BLOCK XLXI_21 dec24
            PIN CE(1:0) CE(1:0)
            PIN Y3
            PIN Y0
            PIN Y1
            PIN Y2
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH I5(7:0)
            WIRE 1152 1856 1152 2000
            WIRE 1152 1856 1424 1856
            WIRE 1424 1856 1824 1856
            BEGIN DISPLAY 1428 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH I7(7:0)
            WIRE 1696 1984 1696 2352
            WIRE 1696 1984 1824 1984
            BEGIN DISPLAY 1696 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH I6(7:0)
            WIRE 1488 1920 1488 2080
            WIRE 1488 1920 1600 1920
            WIRE 1600 1920 1824 1920
            BEGIN DISPLAY 1596 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_20 1824 2080 R0
        END INSTANCE
        BEGIN DISPLAY 1780 1840 TEXT 1
            FONT 32 "Arial"
            TEXTCOLOR 255 0 0
        END DISPLAY
        BEGIN DISPLAY 1772 1904 TEXT 15
            FONT 32 "Arial"
            TEXTCOLOR 255 0 0
        END DISPLAY
        BEGIN BRANCH I7(0)
            WIRE 1568 2288 1584 2288
            BEGIN DISPLAY 1584 2288 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_38(6:0) 1456 2464 R0
        BEGIN BRANCH I7(7:1)
            WIRE 1520 2336 1584 2336
            BEGIN DISPLAY 1584 2336 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH FLAGS(2)
            WIRE 1312 2288 1344 2288
            BEGIN DISPLAY 1312 2288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_47 1344 2320 R0
        BEGIN DISPLAY 1176 2332 TEXT "(flag CARRY)"
            FONT 24 "Arial"
        END DISPLAY
        BEGIN BRANCH I6(3:0)
            WIRE 1312 2000 1312 2016
            WIRE 1312 2016 1376 2016
            BEGIN DISPLAY 1376 2016 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_42(3:0) 1248 2192 R0
        INSTANCE VCC(3:0) 1248 2000 R0
        BEGIN DISPLAY 1780 1968 TEXT C
            FONT 32 "Arial"
            TEXTCOLOR 255 0 0
        END DISPLAY
        BEGIN BRANCH X(7:0)
            WIRE 288 1792 1824 1792
        END BRANCH
        INSTANCE XLXI_29 896 1920 R0
        BEGIN BRANCH I5(0)
            WIRE 960 1920 960 1936
            WIRE 960 1936 1024 1936
            BEGIN DISPLAY 1024 1936 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH I5(7:1)
            WIRE 960 1984 1024 1984
            BEGIN DISPLAY 1024 1984 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE GND1(6:0) 896 2112 R0
        BEGIN INSTANCE XLXI_23 1072 464 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_24 1072 864 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_25 1072 1264 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_26 1072 1664 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 2336 1120 R0
        END INSTANCE
        BEGIN BRANCH FLAGS(3:0)
            WIRE 3264 1312 3312 1312
        END BRANCH
        INSTANCE XLXI_76 2640 1344 R0
        BEGIN BRANCH XLXN_94
            WIRE 2704 1344 2704 1376
            WIRE 2704 1376 2880 1376
        END BRANCH
        BEGIN DISPLAY 2828 1360 TEXT 1
            FONT 32 "Arial"
            TEXTCOLOR 255 0 0
        END DISPLAY
        BEGIN INSTANCE XLXI_21 224 528 R0
        END INSTANCE
        IOMARKER 320 2624 clock R180 28
        IOMARKER 320 2688 reset R180 28
        IOMARKER 3280 1760 B(7:0) R0 28
        IOMARKER 3248 240 A(7:0) R0 28
        BEGIN INSTANCE XLXI_22 2880 1536 R0
        END INSTANCE
        IOMARKER 3312 1312 FLAGS(3:0) R0 28
        BEGIN BRANCH CE(1:0)
            WIRE 192 304 224 304
        END BRANCH
        IOMARKER 192 304 CE(1:0) R180 28
        BEGIN DISPLAY 1304 404 TEXT A
            FONT 60 "Arial"
            TEXTCOLOR 0 0 0
        END DISPLAY
        BEGIN DISPLAY 1292 808 TEXT R1
            FONT 60 "Arial"
            TEXTCOLOR 0 0 0
        END DISPLAY
        BEGIN DISPLAY 1292 1208 TEXT R2
            FONT 60 "Arial"
            TEXTCOLOR 0 0 0
        END DISPLAY
        BEGIN DISPLAY 1292 1608 TEXT R3
            FONT 60 "Arial"
            TEXTCOLOR 0 0 0
        END DISPLAY
        IOMARKER 320 2496 SEL(2:0) R180 28
        IOMARKER 320 2560 OPR(2:0) R180 28
        BEGIN BRANCH clock
            WIRE 320 2624 2704 2624
        END BRANCH
        BEGIN BRANCH reset
            WIRE 320 2688 2800 2688
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 1456 240 3248 240
        END BRANCH
        BEGIN BRANCH SEL(2:0)
            WIRE 320 2496 512 2496
        END BRANCH
        BEGIN BRANCH OPR(2:0)
            WIRE 320 2560 512 2560
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 2208 1760 3280 1760
        END BRANCH
        BEGIN BRANCH XLXN_6(7:0)
            WIRE 992 112 2784 112
            WIRE 2784 112 2784 896
            WIRE 992 112 992 1440
            WIRE 2720 896 2784 896
        END BRANCH
        IOMARKER 288 1792 X(7:0) R180 28
        BEGIN BRANCH I6(7:4)
            WIRE 1312 2064 1376 2064
            BEGIN DISPLAY 1376 2064 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
