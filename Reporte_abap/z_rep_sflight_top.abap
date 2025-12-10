************************************************************************
* Z_REP_SFLIGHT_TOP - TOP Include - Declaraciones globales
************************************************************************

TABLES: sflight.

TYPES: BEGIN OF ty_sflight,
         carrid    TYPE sflight-carrid,
         connid    TYPE sflight-connid,
         fldate    TYPE sflight-fldate,
         price     TYPE sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc,
       END OF ty_sflight.

DATA: gt_sflight TYPE TABLE OF ty_sflight,
      gs_sflight TYPE ty_sflight.

DATA: go_container TYPE REF TO cl_gui_custom_container,
      go_alv       TYPE REF TO cl_gui_alv_grid.

DATA: gt_fieldcat TYPE lvc_t_fcat,
      gs_fieldcat TYPE lvc_s_fcat.
