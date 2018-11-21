VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Co
        SIGNAL S
        SIGNAL A
        SIGNAL B
        SIGNAL Ci
        PORT Output Co
        PORT Output S
        PORT Input A
        PORT Input B
        PORT Input Ci
    END NETLIST
    BEGIN SHEET 1 1900 1344
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        BEGIN BRANCH Co
            WIRE 1520 400 1648 400
        END BRANCH
        IOMARKER 1648 400 Co R0 28
        BEGIN BRANCH S
            WIRE 1520 880 1648 880
        END BRANCH
        IOMARKER 1648 880 S R0 28
        BEGIN BRANCH A
            WIRE 224 480 416 480
        END BRANCH
        BEGIN BRANCH B
            WIRE 224 624 416 624
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 224 768 416 768
        END BRANCH
        IOMARKER 224 480 A R180 28
        IOMARKER 224 624 B R180 28
        IOMARKER 224 768 Ci R180 28
    END SHEET
END SCHEMATIC
