#format 1.2
#name S-PDSO-G8-PAD
#id 9ea83d77d1cf4cd1b20233ef250937b3
#parent 8dc80576e4fe46a2a53c392c3b8f7ff6
#desc aka DGN
#desc aka JEDEC MO-187-AA-T
#desc aka HVSSOP

footprint = () ->

  e = 0.65
  dx = 1.4
  dy = 0.38
  between = 4.8
  half = between/2
  n = 8
  line_width = 0.1
  out_y = n*e/4

  smd = new Smd
  smd.dx = dx
  smd.dy = dy
  smd.ro = 50
  smd.x = 0.0

  r1 = new Rect
  r1.x = 0
  r1.dx = (4.75-2.9)/2
  r1.dy = 0.3
  r1.type = 'docu'

  one = [smd, r1]

  pads = dual one, n, e, between

  name = new Name (out_y + e*2)
  value = new Value (-name.y)
  docu = make_rect 3.1, 3.1, line_width, 'docu'
  r = make_rect 6.5, 3.5, line_width, 'silk'

  tpad = new Smd
  tpad.dx = 1.73
  tpad.dy = 1.73
  tpad.name = "EP"


   # indicator dot
  dot = new Disc
  dot.x = -half-e
  dot.y = out_y+2*e
  dot.r = e/2

  v1 = new Line 0.1
  v1.x1 = -3.25
  v1.y1 = 3.5/2-0.5
  v1.x2 = -2.75
  v1.y2 = 3.5/2

  combine [name, value, dot, pads, docu, r, v1, tpad]