01  WS-AREA. 
    05  WS-COUNT PIC 9(4) VALUE 0. 
    05  WS-TABLE OCCURS 100 TIMES. 
       10  WS-TABLE-ENTRY PIC X(80). 

* Added a check to prevent accessing beyond the upper bound 
IF WS-COUNT >= 1 AND WS-COUNT <= 100 THEN 
    MOVE 'Data' TO WS-TABLE(WS-COUNT)-ENTRY
END-IF

*Now the program safely handles the array index by checking the boundaries