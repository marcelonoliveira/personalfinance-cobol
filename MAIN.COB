       IDENTIFICATION DIVISION.
           PROGRAM-ID. MAIN.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WRK-TITLE.
               05 WRK-APP      PIC X(19) VALUE 'PERSONAL FINANCE - '.
               05 WRK-MODULE   PIC X(61).
           01 WRK-COMMAND      PIC X(01).
           01 WRK-MENU-MAIN.
               05 WRK-MENU-CAD PIC X(12) VALUE ' (C)ADASTRO '.
               05 WRK-MENU-REL PIC X(14) VALUE ' (R)ELATORIOS '.
               05 WRK-MENU-EXT PIC X(08) VALUE ' (S)AIR '.
       SCREEN SECTION.
           01 SCR-MAIN.
               05 BLANK SCREEN.
               05 SCR-HEADER.
                   10 LINE 01 COLUMN 01 PIC X(80) FROM WRK-TITLE
                           BACKGROUND-COLOR 1.
               05 SCR-MESSAGE.
                   10 LINE 23 COLUMN 01 ERASE EOL BACKGROUND-COLOR 1.
                   10 LINE 24 COLUMN 01 ERASE EOL BACKGROUND-COLOR 1.
           01 SCR-MENU.
               05 LINE 02 COLUMN 01 PIC X(80) FROM WRK-MENU-MAIN
                   BACKGROUND-COLOR 1.
               05 LINE 24 COLUMN 80 USING WRK-COMMAND.
       PROCEDURE DIVISION.
       0000-MAIN SECTION.
           PERFORM 1000-START.
           PERFORM 2000-PROCCESS.
           PERFORM 9000-END.
           STOP RUN.
       1000-START SECTION.
           MOVE 'START' TO WRK-MODULE.
           DISPLAY SCR-MAIN.
           ACCEPT SCR-MENU.
       2000-PROCCESS SECTION.
           CONTINUE.
       9000-END SECTION.
           CONTINUE.
