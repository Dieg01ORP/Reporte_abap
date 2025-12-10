************************************************************************
* Z_REP_SFLIGHT_SEL - Include para parámetros de selección
************************************************************************

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.
PARAMETERS: p_carrid TYPE sflight-carrid OBLIGATORY.
PARAMETERS: p_date   TYPE sflight-fldate DEFAULT sy-datum.
SELECTION-SCREEN END OF BLOCK b1.

TEXT-001 = 'Criterios de selección'.
