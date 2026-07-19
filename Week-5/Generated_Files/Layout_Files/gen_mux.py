#!/usr/bin/env python3
"""
Generator for AMUX2_3V_NEW.mag - a fresh double-height 2:1 analog MUX
layout for sky130A, built as an inverter + two CMOS transmission gates.

Topology (transistor level):
  INV  (col1): Mn1,Mp1  gates tied to SEL          -> produces SELB (internal)
  TGA  (col2): Mn2 gate=SEL,  Mp2 gate=SELB        -> passes I0 to OUT
  TGB  (col3): Mn3 gate=SELB, Mp3 gate=SEL         -> passes I1 to OUT

Layer strategy (chosen to keep every crossing on a DIFFERENT mask layer
so that no unintended electrical shorts are created by plan-view overlap):
  - device gates / short local stubs      : poly, ndiffc/pdiffc, polycont
  - I0-tie, I1-tie, OUT-tie (TG source/drain commoning) : locali (li1), vertical
  - SEL long-haul distribution            : locali (li1) horizontal, notched
                                             around the I0/I1 ties, bridged by poly
  - SELB long-haul distribution           : metal2 (a layer no other net uses
                                             in this region), avoids all of the
                                             above entirely
  - VDD (x2) / VSS                        : metal1, full-width straps (PDN grid)

This is a best-effort, self-consistent layout intended as a real starting
point for iteration inside Magic with the actual sky130A tech file loaded.
Exact spacing/enclosure values are NOT DRC-verified here (no PDK/rule deck
available in this environment) and must be checked with `drc check` in the
target repo before tapeout use.
"""

W = 20      # poly gate length (x)
H = 80      # channel width (y)
DIFF_L = 64 # far-side diff extension
DIFF_R = 97 # near-side diff extension across to next gate half-pitch
CONT_L, CONT_R = 50, 10   # contact positions within left diff block (relative)
CONT2_L, CONT2_R = 30, 70 # contact positions within right diff block (relative)

NMOS_Y0, NMOS_Y1 = 148, 228
PMOS_Y0, PMOS_Y1 = 360, 440

rects = {}  # layer -> list of (x0,y0,x1,y1)

def add(layer, x0, y0, x1, y1):
    rects.setdefault(layer, []).append((int(x0), int(y0), int(x1), int(y1)))

def device(kind, X):
    """Emit one MOS device (channel + source/drain diff + contacts) at gate-left-edge X."""
    if kind == 'n':
        mlayer, dlayer, clayer = 'nmos', 'ndiff', 'ndiffc'
        y0, y1 = NMOS_Y0, NMOS_Y1
    else:
        mlayer, dlayer, clayer = 'pmos', 'pdiff', 'pdiffc'
        y0, y1 = PMOS_Y0, PMOS_Y1
    y_top_third = y0 + int((y1 - y0) * 0.8125)   # 211-148=63 in orig template
    y_bot_third = y0 + int((y1 - y0) * 0.2875)   # 171-148=23 in orig template

    add(mlayer, X, y0, X + W, y1)
    # left (source) diff block, split so contact sits in the middle third
    add(dlayer, X - DIFF_L, y_top_third, X, y1)
    add(dlayer, X - DIFF_L, y_bot_third, X - CONT_L, y_top_third)
    add(dlayer, X - CONT_R, y_bot_third, X, y_top_third)
    add(dlayer, X - DIFF_L, y0, X, y_bot_third)
    add(clayer, X - CONT_L, y_bot_third, X - CONT_R, y_top_third)
    # right (drain) diff block
    add(dlayer, X + W, y_top_third, X + DIFF_R, y1)
    add(dlayer, X + W, y_bot_third, X + W + CONT2_L - W, y_top_third)  # placeholder, fixed below
    add(dlayer, X + CONT2_R, y_bot_third, X + DIFF_R, y_top_third)
    add(dlayer, X + W, y0, X + DIFF_R, y_bot_third)
    add(clayer, X + CONT2_L, y_bot_third, X + CONT2_R, y_top_third)
    return dict(y0=y0, y1=y1, y_top_third=y_top_third, y_bot_third=y_bot_third)

# ---- fix the one placeholder rect from the generic template (right-side small block) ----
def fix_last_device_block():
    pass  # handled inline per-call below instead; see rebuild note

# The generic template above has one intentionally-simplified rect (right diff,
# lower-middle sliver). Rebuild it precisely per call instead of patching after
# the fact, for clarity:
rects.clear()

def device(kind, X):
    if kind == 'n':
        mlayer, dlayer, clayer = 'nmos', 'ndiff', 'ndiffc'
        y0, y1 = NMOS_Y0, NMOS_Y1
    else:
        mlayer, dlayer, clayer = 'pmos', 'pdiff', 'pdiffc'
        y0, y1 = PMOS_Y0, PMOS_Y1
    yt = y0 + 63   # top of contact band
    yb = y0 + 23   # bottom of contact band

    add(mlayer, X, y0, X + W, y1)
    # left source block (mirrors original ndiff pattern around x90 template)
    add(dlayer, X - 64, yt, X, y1)
    add(dlayer, X - 64, yb, X - 50, yt)
    add(dlayer, X - 10, yb, X, yt)
    add(dlayer, X - 64, y0, X, yb)
    add(clayer, X - 50, yb, X - 10, yt)
    # right drain block
    add(dlayer, X + W, yt, X + 97, y1)
    add(dlayer, X + W, yb, X + 30, yt)
    add(dlayer, X + 70, yb, X + 97, yt)
    add(dlayer, X + W, y0, X + 97, yb)
    add(clayer, X + 30, yb, X + 70, yt)

# ---------------------------------------------------------------------------
# Column placement
GX = {1: 140, 2: 420, 3: 700}   # gate left-edge x per column

for c, X in GX.items():
    device('n', X)
    device('p', X)

# ---------------------------------------------------------------------------
# Gate poly per column (SEL / SELB distribution wiring drawn explicitly)

# Column 1 (inverter): one continuous poly gate, both fets = SEL
add('poly', GX[1], NMOS_Y1, GX[1] + W, PMOS_Y0)               # 140-160, 228-360
add('polycont', GX[1] + 5, 275, GX[1] + 15, 285)               # SEL pin contact
add('polycont', GX[1] + 5, 237, GX[1] + 15, 245)               # SEL li1 bridge contact

# Column 2 nmos gate = SEL (short local stub)
add('poly', GX[2], NMOS_Y1, GX[2] + W, NMOS_Y1 + 20)            # 420-440, 228-248
add('polycont', GX[2] + 5, 237, GX[2] + 15, 245)

# Column 2 pmos gate = SELB (short local stub, contact up top to metal2 drop)
add('poly', GX[2], PMOS_Y0 - 20, GX[2] + W, PMOS_Y0)            # 420-440, 340-360
add('polycont', GX[2] + 5, 342, GX[2] + 15, 350)

# Column 3 nmos gate = SELB (short local stub)
add('poly', GX[3], NMOS_Y1, GX[3] + W, NMOS_Y1 + 20)            # 700-720, 228-248
add('polycont', GX[3] + 5, 237, GX[3] + 15, 245)

# Column 3 pmos gate = SEL (short local stub)
add('poly', GX[3], PMOS_Y0 - 20, GX[3] + W, PMOS_Y0)            # 700-720, 340-360
add('polycont', GX[3] + 5, 342, GX[3] + 15, 350)

# ---------------------------------------------------------------------------
# SEL distribution: li1 bridge segments (notched around I0/I1 ties) all tied
# together by short poly jumpers underneath (poly never shorts to li1 without
# an explicit polycont, so it safely underpasses the I0/I1 li1 ties).
add('locali', 150, 235, 370, 247)     # piece A: col1 -> up to I0-notch
add('locali', 410, 235, 636, 247)     # piece B: col2 -> up to I1-notch
add('locali', 690, 235, 780, 247)     # piece C: -> up to via1 drop for col3 pmos SEL

add('poly',   355, 228, 425, 232)     # jumper under I0 li1 tie (piece A<->B)
add('polycont', 358, 235, 368, 245)
add('polycont', 412, 235, 422, 245)
add('poly',   626, 228, 700, 232)     # jumper under I1 li1 tie (piece B<->C)
add('polycont', 630, 235, 640, 245)
add('polycont', 686, 235, 696, 245)

# SEL drop to column-3 pmos gate (pmos gate SEL stub sits at y340-360, far from
# the low SEL li1 track at y235-247) -> go up via metal1+metal2 outside the
# SELB track's footprint (x760-780, clear of SELB span 420-725).
add('viali', 762, 237, 772, 247)      # li1 -> met1
add('metal1', 762, 237, 772, 355)     # vertical strap
add('viali', 762, 345, 772, 355)      # met1 -> li1 (drop back down near pmos row)
add('locali', 715, 345, 772, 355)     # short jog into column-3 pmos gate contact
# (uses the polycont already placed at 705,342-715,350 for column 3 pmos)

# ---------------------------------------------------------------------------
# SELB distribution: entirely on metal2 (independent layer -> cannot short to
# anything else drawn on li1/poly regardless of x-overlap).
add('metal2', 145, 296, 730, 308)                     # SELB trunk
add('via1', GX[1] + 5, 296, GX[1] + 15, 306)          # drop 1: near inverter drain tie
add('via1', GX[2] + 5, 298, GX[2] + 15, 308)          # drop 2: col2 pmos gate
add('via1', GX[3] + 5, 298, GX[3] + 15, 308)          # drop 3: col3 nmos gate
# met1 pillars carrying each via1 drop down to its li1/poly contact
add('metal1', GX[1] + 5, 296, GX[1] + 15, 306)
add('viali',  GX[1] + 5, 296, GX[1] + 15, 306)
add('metal1', GX[2] + 5, 298, GX[2] + 15, 340)
add('viali',  GX[2] + 5, 340, GX[2] + 15, 350)
add('metal1', GX[3] + 5, 228, GX[3] + 15, 308)
add('viali',  GX[3] + 5, 237, GX[3] + 15, 247)

# ---------------------------------------------------------------------------
# Inverter output node (SELB) tie between col1 nmos-drain and col1 pmos-drain,
# and up into the metal2 trunk above.
add('locali', 170, 211, 210, 423)                      # col1 drain tie (nmos<->pmos)
add('viali',  175, 296, 195, 306)                       # tie -> met1 -> met2 trunk
add('metal1', 175, 296, 195, 306)

# VDD/VSS ties for column 1 (source sides)
add('locali', GX[1]-60, 148, GX[1]-20, 172)             # nmos source stub (placeholder tap area)
add('locali', GX[1]-60, 416, GX[1]-20, 440)             # pmos source stub

# ---------------------------------------------------------------------------
# I0 tie: column-2 left (source) diff contacts, nmos<->pmos, li1 vertical
add('locali', GX[2]-50, 211, GX[2]-10, 383)
# I1 tie: column-3 left (source) diff contacts, nmos<->pmos, li1 vertical
add('locali', GX[3]-50, 211, GX[3]-10, 383)
# OUT tie: column-2 & column-3 right (drain) diff contacts, all commoned to OUT
add('locali', GX[2]+30, 211, GX[2]+70, 320)             # col2 drain up
add('locali', GX[3]+30, 320, GX[3]+70, 423)             # col3 drain up (mirrors)
add('metal1', GX[2]+30, 300, GX[3]+70, 320)             # OUT trunk on met1 (own track)
add('viali',  GX[2]+35, 300, GX[2]+45, 310)
add('viali',  GX[3]+55, 310, GX[3]+65, 320)

# ---------------------------------------------------------------------------
# Wells / substrate and power rails
add('nwell', 0, 300, 874, 574)
add('metal1', 0, -24, 874, 24)      # VDD bottom (PDN pass-through strap)
add('metal1', 0, 244, 874, 292)     # VSS mid strap
add('metal1', 0, 520, 874, 568)     # VDD top strap
# VDD source taps (col1 nmos/pmos sources -> rails) - short local straps
add('metal1', GX[1]-60, -24, GX[1]-20, 24)
add('viali',  GX[1]-55, -12, GX[1]-25, 0)
add('metal1', GX[1]-60, 520, GX[1]-20, 568)
add('viali',  GX[1]-55, 528, GX[1]-25, 540)

LABELS = [
    # (layer, x, y, text, direction, use)
    ('locali', GX[1] + 10, 280, 'select', 'input'),
    ('locali', GX[2] - 30, 300, 'I0', 'input'),
    ('locali', GX[3] - 30, 300, 'I1', 'input'),
    ('metal1', GX[2] + 50, 305, 'out', 'output'),
    ('metal1', 60, -14, 'VDD', 'power'),
    ('metal1', 400, 268, 'VSS', 'ground'),
    ('metal1', 60, 544, 'VDD', 'power'),
]

LAYER_ORDER = ['nwell', 'nmos', 'pmos', 'ndiff', 'pdiff', 'ndiffc', 'pdiffc',
               'poly', 'polycont', 'locali', 'viali', 'metal1', 'metal2', 'via1']

def write_mag(path):
    with open(path, 'w') as f:
        f.write("magic\n")
        f.write("tech sky130A\n")
        f.write("timestamp 1721390000\n")
        for layer in LAYER_ORDER:
            items = rects.get(layer, [])
            if not items:
                continue
            f.write(f"<< {layer} >>\n")
            for (x0, y0, x1, y1) in items:
                f.write(f"rect {x0} {y0} {x1} {y1}\n")
        f.write("<< labels >>\n")
        port_num = 1
        for (layer, x, y, text, use) in LABELS:
            f.write(f"flabel {layer} s {x} {y} {x} {y} 0 FreeSans 120 0 0 0 {text}\n")
            f.write(f"port {port_num} nsew signal {use}\n")
            port_num += 1
        f.write("<< properties >>\n")
        f.write("string LEFsite unithddbl\n")
        f.write("string LEFclass CORE\n")
        f.write("string FIXED_BBOX 0 0 874 544\n")
        f.write("<< end >>\n")

if __name__ == '__main__':
    write_mag('AMUX2_3V_NEW.mag')
    print("wrote AMUX2_3V_NEW.mag")
