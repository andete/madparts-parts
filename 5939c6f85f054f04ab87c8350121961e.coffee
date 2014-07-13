#format 1.2
#name LM3407-MSOP8-EP
#id 5939c6f85f054f04ab87c8350121961e
#parent 257e47aa58a44ebcb35e583d6bdec96b
#desc as used in LM3407
#desc aka TI DGN008A

footprint = () ->

  e = 0.65
  dx = 1.02
  dy = 0.41
  between = 4.8
  half = between/2
  n = 8
  line_width = 0.1
  out_y = n*e/4+e*1.5

  smd = new Smd
  smd.dx = dx
  smd.dy = dy
  smd.ro = 0

  r1 = new Rect
  r1.dx = 0.53
  r1.x = -4.9/2+between/2+r1.dx/2
  r1.dy = 0.27
  r1.type = 'docu'

  one = [smd, r1]

  pads = dual one, n, e, between

  name = new Name 4
  value = new Value (-name.y)
  
  docu = make_rect 3, 3, line_width, 'docu'
  r = make_rect 3+2*dx+1.2, 3.2, line_width, 'silk'

   # indicator dot
  dot = new Disc
  dot.x = -half
  dot.y = e*(1+n/4)+0.2
  dot.r = 0.4

  ep = new Smd
  ep.dx = 1.73
  ep.dy = 1.85
  ep.name = 9

  combine [name, value, dot, pads, docu, r, ep]