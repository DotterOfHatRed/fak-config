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

