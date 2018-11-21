VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A
        SIGNAL B
        SIGNAL Ci
        SIGNAL Co
        PORT Input A
        PORT Input B
        PORT Input Ci
        PORT Output Co
    END NETLIST
    BEGIN SHEET 1 1900 1344
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        BEGIN BRANCH A
            WIRE 224 560 416 560
        END BRANCH
        BEGIN BRANCH B
            WIRE 224 704 416 704
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 224 848 416 848
        END BRANCH
        IOMARKER 224 560 A R180 28
        IOMARKER 224 704 B R180 28
        IOMARKER 224 848 Ci R180 28
        BEGIN BRANCH Co
            WIRE 1552 688 1680 688
        END BRANCH
        IOMARKER 1680 688 Co R0 28
    END SHEET
END SCHEMATIC
