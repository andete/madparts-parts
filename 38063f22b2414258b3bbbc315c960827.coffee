#format 1.2
#name R-PDSO-G28
#id 38063f22b2414258b3bbbc315c960827
#parent 8dc80576e4fe46a2a53c392c3b8f7ff6
#desc aka TI PW
#desc aka JEDEC MO-153 28pin

footprint = () ->

  e = 0.65
  dx = 1.8
  dy = 0.35
  between = 4.4+dx
  half = between/2
  n = 28
  line_width = 0.1
  out_y = n*e/4+e*1.5

  smd = new Smd
  smd.dx = dx
  smd.dy = dy
  smd.ro = 0

  r1 = new Rect
  r1.dx = 0.75
  r1.x = -6.6/2+between/2+r1.dx/2
  r1.dy = 0.3
  r1.type = 'docu'

  one = [smd, r1]

  pads = dual one, n, e, between

  name = new Name out_y+0.1
  value = new Value (-name.y)
  
  docu = make_rect 4.5, 9.8, line_width, 'docu'
  r = make_rect 4.3, 9.6, line_width, 'silk'

   # indicator dot
  dot = new Disc
  dot.x = -half-e+0.5
  dot.y = out_y
  dot.r = e

  combine [name, value, dot, pads, docu, r]