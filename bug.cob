01  WS-AREA. 
    05  WS-COUNT PIC 9(4) VALUE 0. 
    05  WS-TABLE OCCURS 100 TIMES. 
       10  WS-TABLE-ENTRY PIC X(80). 

* In this code, WS-TABLE is declared with OCCURS 100 TIMES.
* The program fails to check the upper bound during table access,
* potentially causing a subscript out-of-range error when WS-COUNT exceeds 99.