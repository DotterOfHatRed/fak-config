let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in

# tap binds
let kc = tap.reg.kc in
let mt = tap.reg.mod in
let TO = tap.layer.TO in
let ms = tap.custom.mouse in
let me = tap.custom.media in

# hold binds
let md = hold.reg.mod in
let MO = hold.reg.layer in

let bh = hold.reg.behavior in

# basic homerow mod defs
let HRM = {
  gui = md.lgui & bh{},
  alt = md.lalt & bh{},
  ctl = md.lctl & bh{},
  sft = md.lsft & bh{},
} in

# tap hold binds
let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in

let CUST = {
  # tab tap, numbers hold, symbols tap then hold
  TabNums = td.make 200 [
    kc.TAB & MO 2 & bh{},
    MO 3,
  ]
} in

{ 
  # single combo for the reboot on base
  virtual_keys = [
    combo.make 50 [0, 9, 30, 39],
  ],
  layers = [    
    [ # Layer 0 - Base
      kc.Q,           kc.W,           kc.F,           kc.P,           kc.B,             kc.J,    kc.L,           kc.U,           kc.Y,           kc."'",
      kc.A & HRM.gui, kc.R & HRM.alt, kc.S & HRM.ctl, kc.T & HRM.sft, kc.G,             kc.M,    kc.N & HRM.sft, kc.E & HRM.ctl, kc.I & HRM.alt, kc.O & HRM.gui,
      kc.Z,           kc.X,           kc.C,           kc.D,           kc.V,             kc.K,    kc.H,           kc.",",         kc.".",         kc."/",
      TO 4, TO 5,                 kc.ESCAPE , kc.SPACE & MO 1 & bh{}, CUST.TabNums,     kc.ENTER, kc.BACKSPACE, kc.DELETE,                       XXXX, XXXX,
      # Combos
      tap.custom.fak.BOOT
    ],
    [ # Layer 1 - Navigation
      ms.LEFT, ms.DOWN, ms.UP, ms.RGHT, kc.HOME,     kc.PGUP, me.MUTE, me.VOLD, me.VOLU, XXXX,
      kc.LEFT, kc.DOWN, kc.UP, kc.RGHT, XXXX,        XXXX,    md.lsft, md.lctl, md.lalt, md.lgui,
      XXXX,    ms.WH_D, ms.WH_U, XXXX,  kc.END,      kc.PGDN, tap.custom.fak.CWTG, XXXX,XXXX,XXXX,
      XXXX, XXXX,          XXXX, XXXX,  XXXX,        ms.BTN1, ms.BTN3, ms.BTN2,         XXXX,XXXX,
      # Combos
      XXXX
    ],
    [ # Layer 2 - Numbers
      kc.GRAVE,        kc.N7, kc.N8, kc.N9, kc.EQUAL & mt.lsft,       XXXX, kc.F7, kc.F8, kc.F9, kc.F10,
      kc.SEMICOLON,    kc.N4, kc.N5, kc.N6, kc.N0,                    XXXX, kc.F4, kc.F5, kc.F6, kc.F11,
      kc.PRINT_SCREEN, kc.N1, kc.N2, kc.N3, kc.MINUS,                 XXXX, kc.F1, kc.F2, kc.F3, kc.F12,
      XXXX, XXXX,               XXXX, XXXX, XXXX,           kc.LEFT_BRACKET, kc.BACKSLASH, kc.RIGHT_BRACKET,    XXXX, XXXX,
      # Combos
      XXXX
    ],
    [ # Layer 3 - SHIFTED Numbers
      kc.GRAVE & mt.lsft,        kc.N7 & mt.lsft, kc.N8 & mt.lsft, kc.N9 & mt.lsft, kc.EQUAL,           XXXX, kc.F7, kc.F8, kc.F9, kc.F10,
      kc.SEMICOLON & mt.lsft,    kc.N4 & mt.lsft, kc.N5 & mt.lsft, kc.N6 & mt.lsft, kc.N0 & mt.lsft,    XXXX, kc.F4, kc.F5, kc.F6, kc.F11,
      kc.PRINT_SCREEN & mt.lsft, kc.N1 & mt.lsft, kc.N2 & mt.lsft, kc.N3 & mt.lsft, kc.MINUS & mt.lsft, XXXX, kc.F1, kc.F2, kc.F3, kc.F12,
      XXXX, XXXX, XXXX, XXXX, XXXX,        kc.LEFT_BRACKET & mt.lsft, kc.BACKSLASH & mt.lsft, kc.RIGHT_BRACKET & mt.lsft,      XXXX, XXXX,
      # Combos
      XXXX
    ],
    [ # Layer 4 - Games: 
      kc.TAB,  kc.Q, kc.W,    kc.E,     kc.R,              kc.T, kc.LEFT_BRACKET, kc.UP, kc.RIGHT_BRACKET, kc.BACKSPACE,
      md.lsft, kc.A, kc.S,    kc.D,     kc.F,              kc.G, kc.LEFT, kc.DOWN, kc.RGHT, kc.ENTER,
      kc.ESC,  kc.Z, kc.X,    kc.C,     kc.V,              kc.B, me.VOLD, me.MUTE, me.VOLU, XXXX,
      XXXX,    XXXX, md.lctl, kc.SPACE, md.lalt,           XXXX, XXXX, XXXX, XXXX, TO 0,      
      # Combos
      XXXX
    ],
    [ # Layer 5 - Resurrected 1:
      kc.Q,   kc.W,  kc.E,  kc.R,  kc.GRAVE,            kc.O,  kc.P7, kc.P8, kc.P9, kc.ENTER,
      kc.N1,  kc.N2, kc.N3, kc.N4, kc.N5,               kc.N6, kc.P4, kc.P5, kc.P6, kc.P0,
      md.lctl, kc.P, kc.J,  kc.I,  kc.C,                kc.Z,  kc.P1, kc.P2, kc.P3, XXXX,
      XXXX,    XXXX,   kc.ESC, kc.X & MO 6 & bh{}, md.lsft,        XXXX, XXXX, XXXX, XXXX, TO 0,
      # Combos
      XXXX
    ],

    [ # Layer 6 - Resurrected 2
      TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT,
      kc.N7, kc.N8, kc.N9, kc.N0, kc.INS, kc.EQUAL, TTTT, TTTT, TTTT, TTTT,
      md.lalt, kc.M, kc.A, kc.F5, TTTT, TTTT, TTTT, TTTT, TTTT,TTTT,
      TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT,
      # Combos
      XXXX
    ]
  ]
}
