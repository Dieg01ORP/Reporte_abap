************************************************************************
* Z_REP_SFLIGHT_F01 - Subrutinas del reporte (Fieldcatalog, ALV)
************************************************************************

*-------------------------------------------------------------*
* Construcción del Fieldcatalog
*-------------------------------------------------------------*
FORM build_fieldcat.

  PERFORM add_field USING 'CARRID'    'Aerolínea'.
  PERFORM add_field USING 'CONNID'    'Nro. Vuelo'.
  PERFORM add_field USING 'FLDATE'    'Fecha'.
  PERFORM add_field USING 'PLANETYPE' 'Avión'.
  PERFORM add_field USING 'PRICE'     'Precio'.
  PERFORM add_field USING 'CURRENCY'  'Moneda'.
  PERFORM add_field USING 'SEATSMAX'  'Capacidad'.
  PERFORM add_field USING 'SEATSOCC'  'Ocupación'.

ENDFORM.

*-------------------------------------------------------------*
* Añadir campo al ALV
*-------------------------------------------------------------*
FORM add_field USING p_field p_text.

  CLEAR gs_fieldcat.
  gs_fieldcat-fieldname = p_field.
  gs_fieldcat-coltext   = p_text.

  APPEND gs_fieldcat TO gt_fieldcat.

ENDFORM.

*-------------------------------------------------------------*
* Mostrar ALV Grid
*-------------------------------------------------------------*
FORM show_alv.

  IF go_container IS INITIAL.

    CREATE OBJECT go_container
      EXPORTING container_name = 'ALV_CONT'.

    CREATE OBJECT go_alv
      EXPORTING i_parent = go_container.

    PERFORM build_fieldcat.

    CALL METHOD go_alv->set_table_for_first_display
      CHANGING
        it_outtab       = gt_sflight
        it_fieldcatalog = gt_fieldcat.

  ENDIF.

ENDFORM.
