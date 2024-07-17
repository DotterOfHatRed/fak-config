let { ColToRowKey, .. } = import "fak/keyboard.ncl" in
let { CH552T, .. } = import "fak/mcus.ncl" in

{
  mcu = CH552T,
  matrix = {
    cols = [10, 11, 31, 30, 17, 16, 15, 14, 32, 33],
    rows = [12, 13, 35, 34]
  },
  usb_dev = {
    vendor_id = 43962, # 0xABBA
    product_id = 0,
    product_ver = 256, # 0x0100
  },
  keys =
    let M = ColToRowKey in
    [
         M 3 6, M 3 7, M 3 8, M 3 9,
      M 0 0, M 0 1, M 0 2, M 0 3, M 0 4, M 0 5, M 0 6, M 0 7, M 0 8, M 0 9,
      M 1 0, M 1 1, M 1 2, M 1 3, M 1 4, M 1 5, M 1 6, M 1 7, M 1 8, M 1 9,
      M 2 0, M 2 1, M 2 2, M 2 3, M 2 4, M 2 5, M 2 6, M 2 7, M 2 8, M 2 9,
                    M 3 0, M 3 1, M 3 2, M 3 3, M 3 4, M 3 5
    ]
}
