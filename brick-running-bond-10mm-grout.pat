;-----------------------------------------------------------------------------
; Brick Running Bond - 10mm Grout/Mortar Joints
; For use as a Revit Custom Fill Pattern (Model pattern)
;
; Geometry assumed:
;   Brick size (actual)   : 215mm long x 65mm high
;   Grout/mortar joint    : 10mm
;   Course height (H)     : 65 + 10 = 75mm   (vertical repeat of bed joints)
;   Module length (L)     : 215 + 10 = 225mm (horizontal repeat of head joints)
;   Bond type              : Running bond (each course offset by half a module,
;                            L/2 = 112.5mm)
;
; How to import in Revit:
;   Manage tab > Additional Settings > Fill Patterns > New...
;     - Pattern Type: Model
;     - Custom > Import... > select this .pat file
;     - Import units: Metric (mm) - values below are in millimeters
;
; Note: Revit fill patterns are simple line/dash patterns - there is no true
; "line weight" in the pattern geometry itself. The 10mm grout joint is
; represented by the module spacing math above (75mm course height / 225mm
; brick module), not by a thick stroke. If you instead want the grout lines
; drawn as an actual 10mm-wide double-line band, ask and I can generate that
; variant instead.
;-----------------------------------------------------------------------------
;%UNITS=MM
*Brick_RunningBond_10mmGrout,Brick running bond, 215x65mm brick, 10mm grout joints
;%TYPE=MODEL
0,0,0,0,75
90,0,0,0,225,75,-75
90,112.5,75,0,225,75,-75
