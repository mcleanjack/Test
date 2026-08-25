;-----------------------------------------------------------------------------
; Glass Grid - 300mm Square Grid Surface Pattern
; For use as a Revit Custom Fill Pattern (Model pattern), layered on a
; transparent Glazing material to get perfectly crisp grid lines that stay
; sharp at any zoom level, regardless of texture/render resolution.
;
; Geometry: simple 300mm x 300mm square grid, two perpendicular line
; families (horizontal and vertical), both continuous (solid) lines.
; Adjust the "300" values below if your actual module differs.
;
; How to import in Revit:
;   Manage tab > Additional Settings > Fill Patterns > New...
;     - Pattern Type: Model
;     - Custom > Import... > select this .pat file
;     - Import units: Metric (mm)
;
; How to use:
;   Open your glass material > Graphics tab > Surface Pattern (and/or Cut
;   Pattern) > set Pattern to "Glass_Grid_300mm" and pick a line colour/
;   weight (e.g. a dark charcoal to match the diffuse texture, or any
;   colour you want the grid to read as in non-rendered views). This
;   pattern draws on top of the material independently of its Appearance
;   Asset, so it stays crisp even when the underlying glass is fully
;   transparent in a render.
;-----------------------------------------------------------------------------
; Includes both a Model and a Drafting definition of the same grid, since
; Revit's importer only lists patterns matching the Pattern Type radio
; button selected in the New Pattern dialog - pick whichever matches your
; use: Model scales with the true wall/panel size, Drafting stays a fixed
; size on the sheet regardless of view scale.
;%UNITS=MM
*Glass_Grid_300mm,300mm square grid for glazing surface pattern
;%TYPE=MODEL
0,0,0,0,300
90,0,0,0,300

*Glass_Grid_300mm_Drafting,300mm square grid for glazing surface pattern (drafting)
;%TYPE=DRAFTING
0,0,0,0,300
90,0,0,0,300
