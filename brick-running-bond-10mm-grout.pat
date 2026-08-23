;-----------------------------------------------------------------------------
; Brick Running Bond - 10mm WIDE DOUBLE-LINE Grout/Mortar Joints
; For use as a Revit Custom Fill Pattern (Model pattern)
;
; Geometry assumed:
;   Brick size (actual)   : 230mm long x 76mm high
;   Grout/mortar joint    : 10mm (drawn as a true 10mm-wide band - two
;                            parallel lines 10mm apart at every joint,
;                            not a single centerline)
;   Course height (H)     : 76 + 10 = 86mm   (vertical repeat of bed joints)
;   Module length (L)     : 230 + 10 = 240mm (horizontal repeat of head joints)
;   Bond type              : Running bond (each course offset by half a
;                            module, L/2 = 120mm)
;
; How to import in Revit:
;   Manage tab > Additional Settings > Fill Patterns > New...
;     - Pattern Type: pick MODEL to get "Brick_RunningBond_10mmGrout" below,
;       or DRAFTING to get "Brick_RunningBond_10mmGrout_Drafting" - Revit's
;       importer only lists patterns matching the type radio button you
;       have selected, so this file includes both so it works either way.
;     - Custom > Import... > select this .pat file
;     - Import units: Metric (mm) - values below are in millimeters
;
; Model vs. Drafting: use Model for a true-scale material/surface pattern
; that scales with the actual geometry (e.g. a wall's real brick coursing).
; Use Drafting for a fixed on-sheet hatch (e.g. a filled region in a 2D
; detail) that stays a constant size regardless of model changes.
;
; Line families (identical geometry in both definitions below):
;   1-2) Horizontal bed-joint band: two continuous horizontal lines, 10mm
;        apart, repeating every 86mm (course height) - forms the 10mm-wide
;        band at every horizontal mortar joint.
;   3-6) Vertical head-joint bands: two pairs of dashed vertical lines
;        (each pair 10mm apart = the band width), each dash on for one
;        course height (86mm) and off for one course height, repeating
;        every 240mm (module). The second pair is offset by half a module
;        (120mm) in x and one course (86mm) in y to stagger the joints
;        for a proper running bond.
;-----------------------------------------------------------------------------
;%UNITS=MM
*Brick_RunningBond_10mmGrout,Brick running bond, 230x76mm brick, 10mm wide double-line grout bands
;%TYPE=MODEL
0,0,0,0,86
0,0,10,0,86
90,0,0,0,240,86,-86
90,10,0,0,240,86,-86
90,120,86,0,240,86,-86
90,130,86,0,240,86,-86

*Brick_RunningBond_10mmGrout_Drafting,Brick running bond, 230x76mm brick, 10mm wide double-line grout bands (drafting)
;%TYPE=DRAFTING
0,0,0,0,86
0,0,10,0,86
90,0,0,0,240,86,-86
90,10,0,0,240,86,-86
90,120,86,0,240,86,-86
90,130,86,0,240,86,-86
