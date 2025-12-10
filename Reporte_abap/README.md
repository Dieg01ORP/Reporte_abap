# Z_REP_SFLIGHT - Reporte ABAP modularizado

Repositorio con un ejemplo de reporte ABAP modularizado en includes:
- `z_rep_sflight.abap`        : Programa principal (INCLUDEs)
- `z_rep_sflight_top.abap`    : TOP include (declaraciones globales)
- `z_rep_sflight_sel.abap`    : Include de selección (selection-screen)
- `z_rep_sflight_f01.abap`    : Include con subrutinas (fieldcatalog, ALV)
- `z_rep_sflight_main.abap`   : Include con la lógica principal (SELECT, pantalla)

## Cómo usar

### 1) Subir a GitHub
Simplemente sube estos archivos a tu repositorio (por ejemplo en `src/`).

### 2) Importar a SAP
Los programas ABAP deben crearse desde SE38 o SE80 en el sistema SAP:
- Crea un nuevo programa Z (ej: `Z_REP_SFLIGHT`) y pega el contenido de `z_rep_sflight.abap`.
- Crea includes en el mismo nombre con los sufijos: `_TOP`, `_SEL`, `_F01`, `_MAIN`.
  - En SE38, usa el botón *Goto -> Include -> Create* o crea objetos INCLUDE en SE80.
- Crea la pantalla 100 en SE51:
  - Añade un *Custom Control* con nombre `ALV_CONT`.
  - Crea un GUI status `STATUS100` con botones BACK / EXIT / CANC.
  - Crea un title `TIT100`.

### 3) Ejecutar
Desde SE38, ejecuta el programa Z con F8. Ingresa la aerolínea (CARRID) y fecha si aplica.

## Notas
- Estos archivos son solo código fuente; **no se ejecutan fuera de SAP**.
- El ALV usa `CL_GUI_ALV_GRID` y control custom, por lo que requiere SAPGUI (dynpro).
- Puedes adaptar el código para SALV o una versión OO si lo prefieres.

--- 
Generado por ChatGPT — si necesitas que te entregue todo en un solo ZIP o que lo suba a un repositorio con commits ejemplo, dímelo y lo preparo.
