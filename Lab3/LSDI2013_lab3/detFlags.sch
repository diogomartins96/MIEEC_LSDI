VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Co
        SIGNAL ZERO
        SIGNAL R(7:0)
        SIGNAL sA
        SIGNAL sB
        SIGNAL OVFL
        SIGNAL SINAL
        SIGNAL CARRY
        SIGNAL OPR(2:0)
        PORT Input Co
        PORT Output ZERO
        PORT Input R(7:0)
        PORT Input sA
        PORT Input sB
        PORT Output OVFL
        PORT Output SINAL
        PORT Output CARRY
        PORT Input OPR(2:0)
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH Co
            WIRE 128 688 304 688
        END BRANCH
        BEGIN BRANCH ZERO
            WIRE 2880 304 3088 304
        END BRANCH
        IOMARKER 3088 576 SINAL R0 28
        BEGIN BRANCH SINAL
            WIRE 2896 576 3088 576
        END BRANCH
        IOMARKER 160 272 R(7:0) R180 28
        BEGIN BRANCH R(7:0)
            WIRE 160 272 304 272
        END BRANCH
        IOMARKER 144 2128 sA R180 28
        IOMARKER 3088 304 ZERO R0 28
        IOMARKER 128 688 Co R180 28
        IOMARKER 144 1728 sB R180 28
        BEGIN BRANCH sB
            WIRE 144 1728 304 1728
        END BRANCH
        BEGIN BRANCH sA
            WIRE 144 2128 320 2128
        END BRANCH
        BEGIN BRANCH CARRY
            WIRE 2912 912 3104 912
        END BRANCH
        IOMARKER 3104 912 CARRY R0 28
        IOMARKER 3120 1488 OVFL R0 28
        BEGIN BRANCH OVFL
            WIRE 2928 1488 3120 1488
        END BRANCH
        BEGIN BRANCH OPR(2:0)
            WIRE 208 1040 304 1040
        END BRANCH
        IOMARKER 208 1040 OPR(2:0) R180 28
    END SHEET
END SCHEMATIC
