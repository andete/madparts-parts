#format 1.2
#name MSOP16
#id 257e47aa58a44ebcb35e583d6bdec96b
#parent 32529e124dc3484ab48e9bd887d93e01
#desc as used in LT3990
#desc aka LT MSE

footprint = () ->

  e = 0.5
  dx = 1
  dy = 0.31
  between = 3.2+dx
  half = between/2
  n = 16
  line_width = 0.1
  out_y = n*e/4+e*1.5

  smd = new Smd
  smd.dx = dx
  smd.dy = dy
  smd.ro = 0

  r1 = new Rect
  r1.dx = 0.5
  r1.x = -5/2+between/2+r1.dx/2
  r1.dy = 0.27
  r1.type = 'docu'

  one = [smd, r1]

  pads = dual one, n, e, between

  name = new Name 4
  value = new Value (-name.y)
  
  docu = make_rect 3, 4.1, line_width, 'docu'
  r = make_rect 3+2*dx+0.4, 4.3, line_width, 'silk'

   # indicator dot
  dot = new Disc
  dot.x = -half
  dot.y = e*(1+n/4)+0.2
  dot.r = 0.4

  combine [name, value, dot, pads, docu, r]