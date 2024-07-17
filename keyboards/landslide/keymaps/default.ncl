let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in

let kc = tap.reg.kc in
let md = hold.reg.mod in
let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in
let MO = hold.reg.layer in

let cu = {
  SFTZ = td.make 100 [
    md.lsft & kc.Z & hold.reg.behavior {},
    tap.reg.mod.lsft & kc.Z,
  ],
  TH_L = MO 1 & kc.SPC & hold.reg.behavior {},  
  TH_R = MO 2 & kc.SPC & hold.reg.behavior {},
  FN_G = MO 3 & kc.GRV & hold.reg.behavior {},
} in

{
  virtual_keys = [
    combo.make 50 [4, 13, 24, 33],
  ],
  layers = [
    [ # Layer 0 - Base
           XXXX, XXXX, XXXX, XXXX,
      kc.Q,    kc.W,    kc.F,    kc.P,    kc.B,    kc.J,    kc.L,    kc.U,    kc.Y,    kc."'",
      kc.A,    kc.R,    kc.S,    kc.T,    kc.G,    kc.M,    kc.N,    kc.E,    kc.I,    kc.O,
      kc.Z,    kc.X,    kc.C,    kc.D,    kc.V,    kc.K,    kc.H,    kc.",",  kc.".",  kc."/",
      kc.N1, kc.N2, kc.N3, kc.N4, kc.N5, kc.N6,
      # Combos
      tap.custom.fak.BOOT
    ]
  ]
}
