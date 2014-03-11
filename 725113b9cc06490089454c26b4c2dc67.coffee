#format 1.2
#name ATMEL_SO8
#id 725113b9cc06490089454c26b4c2dc67
#parent 21c182d743634624b2a27d9d15f44177
#desc Atmel ATA6662C
#desc LIN driver

footprint = () ->

  e = 1.27
  dx = 2
  dy = 0.5

  between = 5+dx-0.2
  half = between/2
  n = 8
  line_width = 0.127
  out_y = n*e/4

  smd = new Smd
  smd.dx = dx
  smd.dy = dy

  pads = dual smd, n, e, between

  name = new Name out_y+e*2

  docu = make_rect 4, 5, line_width, 'docu'
  r = make_rect 9.5, 5, line_width, 'silk'

   # indicator dot
  dot = new Disc
  dot.x = -half
  dot.y = out_y+e/2
  dot.r = e/4

  combine [name, dot, pads, docu, r]