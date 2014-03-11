#format 1.2
#name TSSOP20
#id 173a4910115548b59c8b724404a4f580
#parent 32529e124dc3484ab48e9bd887d93e01
#desc according to Microchip footprint outlines and dimensions
#desc document

footprint = () ->

  e = 0.65
  dx = 1.45
  dy = 0.40
  between = 5.9
  half = between/2
  n = 20
  line_width = 0.1
  out_y = n*e/4+e*1.5

  smd = new Smd
  smd.dx = dx
  smd.dy = dy
  smd.ro = 0

  r1 = new Rect
  r1.dx = 0.75
  r1.x = -6.4/2+between/2+r1.dx/2
  r1.dy = 0.3
  r1.type = 'docu'

  one = [smd, r1]

  pads = dual one, n, e, between

  name = new Name out_y+0.1
  value = new Value (-name.y)
  
  docu = make_rect 4.5, 6.5, line_width, 'docu'
  r = make_rect 4.3, 6.3, line_width, 'silk'

   # indicator dot
  dot = new Disc
  dot.x = -half-e+0.5
  dot.y = out_y
  dot.r = e

  combine [name, value, dot, pads, docu, r]