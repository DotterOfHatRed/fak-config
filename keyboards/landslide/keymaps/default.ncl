let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in

let kc = tap.reg.kc in
let ms = tap.custom.mouse in
let md = hold.reg.mod in
let mt = tap.reg.mod in
let me = tap.custom.media in

let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in
let MO = hold.reg.layer in
let TO = tap.layer.TO in

let cu = {
  TabNums = td.make 250 [
    kc.TAB & MO 2 & hold.reg.behavior{},
    MO 3,
  ]
} in

{
  virtual_keys = [
    combo.make 50 [4, 13, 24, 33],
  ],
  layers = [
    [ # Layer 0 - Base
           TO 4, XXXX, XXXX, XXXX,
      kc.Q,           kc.W,           kc.F,           kc.P,           kc.B,    kc.J,    kc.L,           kc.U,           kc.Y,           kc."'",
      kc.A & md.lgui & hold.reg.behavior{}, kc.R & md.lalt & hold.reg.behavior{}, kc.S & md.lctl & hold.reg.behavior{}, kc.T & md.lsft & hold.reg.behavior{}, kc.G,  
      kc.M,    kc.N & md.lsft & hold.reg.behavior{}, kc.E & md.lctl & hold.reg.behavior{}, kc.I & md.lalt & hold.reg.behavior{}, kc.O & md.lgui & hold.reg.behavior{},
      kc.Z,           kc.X,           kc.C,           kc.D,           kc.V,    kc.K,    kc.H,           kc.",",         kc.".",         kc."/",
      kc.ESCAPE , kc.SPACE & MO 1 & hold.reg.behavior{}, cu.TabNums,     kc.ENTER, kc.BACKSPACE, kc.DELETE,
      # Combos
      tap.custom.fak.BOOT
    ],
    [ # Layer 1 - Navigation
           XXXX, XXXX, XXXX, XXXX,
      ms.LEFT, ms.DOWN, ms.UP, ms.RGHT, kc.HOME,     kc.PGUP, me.MUTE, me.VOLD, me.VOLU, XXXX,
      kc.LEFT, kc.DOWN, kc.UP, kc.RGHT, XXXX,        XXXX,    md.lsft, md.lctl, md.lalt, md.lgui,
      XXXX,    ms.WH_D, ms.WH_U, XXXX,  kc.END,      kc.PGDN, tap.custom.fak.CWTG, XXXX,XXXX,XXXX,
                            XXXX, XXXX, XXXX,        ms.BTN1, ms.BTN3, ms.BTN2,
      # Combos
      XXXX
    ],
    [ # Layer 2 - Numbers
           XXXX, XXXX, XXXX, XXXX,
      kc.GRAVE, kc.N7, kc.N8, kc.N9, kc.EQUAL & mt.lsft, XXXX, kc.F7, kc.F8, kc.F9, kc.F10,
      kc.SEMICOLON, kc.N4, kc.N5, kc.N6, kc.N0,           XXXX, kc.F4, kc.F5, kc.F6, kc.F11,
      kc.PRINT_SCREEN, kc.N1, kc.N2, kc.N3, kc.MINUS,    XXXX, kc.F1, kc.F2, kc.F3, kc.F12,
                            XXXX, XXXX, XXXX,        kc.LEFT_BRACKET, kc.BACKSLASH, kc.RIGHT_BRACKET,
      # Combos
      XXXX
    ],
    [ # Layer 3 - SHIFTED Numbers
           XXXX, XXXX, XXXX, XXXX,
      kc.GRAVE & mt.lsft, kc.N7 & mt.lsft, kc.N8 & mt.lsft, kc.N9 & mt.lsft, kc.EQUAL, XXXX, kc.F7, kc.F8, kc.F9, kc.F10,
      kc.SEMICOLON & mt.lsft, kc.N4 & mt.lsft, kc.N5 & mt.lsft, kc.N6 & mt.lsft, kc.N0 & mt.lsft,           XXXX, kc.F4, kc.F5, kc.F6, kc.F11,
      kc.PRINT_SCREEN & mt.lsft, kc.N1 & mt.lsft, kc.N2 & mt.lsft, kc.N3 & mt.lsft, kc.MINUS & mt.lsft,    XXXX, kc.F1, kc.F2, kc.F3, kc.F12,
                            XXXX, XXXX, XXXX,        kc.LEFT_BRACKET & mt.lsft, kc.BACKSLASH & mt.lsft, kc.RIGHT_BRACKET & mt.lsft,
      # Combos
      XXXX
    ],
    [ # Layer 4 - Games: 
           kc.N1, kc.N2, kc.N3, kc.N4,
      kc.TAB, kc.Q, kc.W, kc.E, kc.R,            kc.T, kc.LEFT_BRACKET, kc.UP, kc.RIGHT_BRACKET, kc.BACKSPACE,
      md.lsft, kc.A, kc.S, kc.D, kc.F,           kc.G, kc.LEFT, kc.DOWN, kc.RGHT, kc.ENTER,
      kc.ESC, kc.Z, kc.X, kc.C, kc.V,            kc.B, me.VOLD, me.MUTE, me.VOLU, XXXX,
                            md.lctl, kc.SPACE, md.lalt,        XXXX, XXXX, TO 0,
      # Combos
      XXXX
    ],

  ]
}
