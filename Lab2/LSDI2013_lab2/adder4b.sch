VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Co
        SIGNAL Ci
        SIGNAL A0
        SIGNAL A1
        SIGNAL A2
        SIGNAL A3
        SIGNAL B0
        SIGNAL B1
        SIGNAL B2
        SIGNAL B3
        SIGNAL S0
        SIGNAL S1
        SIGNAL S2
        SIGNAL S3
        PORT Output Co
        PORT Input Ci
        PORT Input A0
        PORT Input A1
        PORT Input A2
        PORT Input A3
        PORT Input B0
        PORT Input B1
        PORT Input B2
        PORT Input B3
        PORT Output S0
        PORT Output S1
        PORT Output S2
        PORT Output S3
    END NETLIST
    BEGIN SHEET 1 1900 1344
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        BEGIN BRANCH Co
            WIRE 1680 1248 1744 1248
        END BRANCH
        IOMARKER 1744 1248 Co R0 28
        BEGIN BRANCH Ci
            WIRE 128 80 192 80
        END BRANCH
        BEGIN BRANCH A0
            WIRE 128 176 192 176
        END BRANCH
        BEGIN BRANCH A1
            WIRE 128 240 192 240
        END BRANCH
        BEGIN BRANCH A2
            WIRE 128 304 192 304
        END BRANCH
        BEGIN BRANCH A3
            WIRE 128 368 192 368
        END BRANCH
        BEGIN BRANCH B0
            WIRE 128 464 192 464
        END BRANCH
        BEGIN BRANCH B1
            WIRE 128 528 192 528
        END BRANCH
        BEGIN BRANCH B2
            WIRE 128 592 192 592
        END BRANCH
        BEGIN BRANCH B3
            WIRE 128 656 192 656
        END BRANCH
        IOMARKER 128 80 Ci R180 28
        IOMARKER 128 176 A0 R180 28
        IOMARKER 128 240 A1 R180 28
        IOMARKER 128 304 A2 R180 28
        IOMARKER 128 368 A3 R180 28
        IOMARKER 128 464 B0 R180 28
        IOMARKER 128 528 B1 R180 28
        IOMARKER 128 592 B2 R180 28
        IOMARKER 128 656 B3 R180 28
        BEGIN BRANCH S0
            WIRE 1680 944 1744 944
        END BRANCH
        BEGIN BRANCH S1
            WIRE 1680 1008 1744 1008
        END BRANCH
        BEGIN BRANCH S2
            WIRE 1680 1072 1744 1072
        END BRANCH
        BEGIN BRANCH S3
            WIRE 1680 1136 1744 1136
        END BRANCH
        IOMARKER 1744 944 S0 R0 28
        IOMARKER 1744 1008 S1 R0 28
        IOMARKER 1744 1072 S2 R0 28
        IOMARKER 1744 1136 S3 R0 28
    END SHEET
END SCHEMATIC
