************************************************************************
* Z_REP_SFLIGHT_MAIN - Lógica principal del reporte
************************************************************************

START-OF-SELECTION.

  SELECT carrid
         connid
         fldate
         planetype
         price
         currency
         seatsmax
         seatsocc
    FROM sflight
    INTO TABLE gt_sflight
    WHERE carrid = p_carrid
      AND fldate >= p_date.

  IF sy-subrc <> 0.
    MESSAGE 'No se encontraron datos con los criterios ingresados'
       TYPE 'I'.
    EXIT.
  ENDIF.

END-OF-SELECTION.

  CALL SCREEN 100.

************************************************************************
* Módulos de la pantalla ALV
************************************************************************

MODULE status_0100 OUTPUT.
  SET PF-STATUS 'STATUS100'.
  SET TITLEBAR 'TIT100'.

  PERFORM show_alv.
ENDMODULE.

MODULE user_command_0100 INPUT.
  CASE sy-ucomm.
    WHEN 'BACK' OR 'EXIT' OR 'CANC'.
      LEAVE PROGRAM.
  ENDCASE.
ENDMODULE.
