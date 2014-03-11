#format 1.2
#name 8-SOP-209MIL_MX25L6445E
#id cd587750ccee45fdb4ef6be96bd09007
#parent 0f4f9df84d2e46ebbd3961db510d607d
#desc MXC25L6445E

footprint = () ->

  e = 1.27
  e1 = 5.28
  d = 5.23
  dx = 2.45
  dy = 0.57
  between = 3.9+dx

  half = between/2
  n = 8
  line_width = 0.127
  out_y = n*e/4

  smd = new Smd
  smd.dx = dx
  smd.dy = dy

  pads = dual smd, n, e, between

  dr = new Rect
  dr.type = 'docu'
  dr.dx = 0.8
  dr.dy = 0.51

  docs = dual dr, n, e, (8-dr.dx)

  name = new Name out_y+2*e

  docu = make_rect e1, d, line_width, 'docu'
  r = make_rect between+dx+0.3, 6.1, line_width, 'silk'

   # indicator dot
  dot = new Disc
  dot.x = -half
  dot.y = out_y+e
  dot.r = e/2.5

  combine [name, dot, pads, docu, r, docs]