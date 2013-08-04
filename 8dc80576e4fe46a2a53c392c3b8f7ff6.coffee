#format 1.1
#name R-PDSO-G8
#id 8dc80576e4fe46a2a53c392c3b8f7ff6
#parent e41d7b501d6448fa89d1b1c09d47b99f
#desc aka DCT
#desc aka JEDEC MO-187-DA

make_rect = (dx, dy, line_width, type) ->
    x2 = dx/2
    y2 = dy/2
    l = lines line_width, [[-x2,-y2],[x2,-y2],[x2,y2],[-x2,y2],[-x2,-y2]]
    l.map ((o) ->
        o.type = type
        o)

footprint = () ->

  e = 0.65
  dx = 1.6
  dy = 0.35
  between = 3.4
  half = between/2
  n = 8
  line_width = 0.1
  out_y = n*e/4

  smd = new Smd
  smd.dx = dx
  smd.dy = dy
  smd.ro = 50

  r1 = new Rect
  r1.x = -0.1
  r1.dx = (4.25-2.7)/2
  r1.dy = 0.3
  r1.type = 'docu'

  one = [smd, r1]

  pads = dual one, n, e, between

  name = new Name (out_y + e*2)
  value = new Value (-name.y)
  docu = make_rect 2.9, 3.15, line_width, 'docu'
  r = make_rect 5.5, 3.5, line_width, 'silk'

   # indicator dot
  dot = new Disc
  dot.x = -half-e
  dot.y = out_y+2*e
  dot.r = e/2

  v1 = new Line 0.1
  v1.x1 = -2.75
  v1.y1 = 3.5/2-0.5
  v1.x2 = -2.25
  v1.y2 = 3.5/2

  combine [name, value, dot, pads, docu, r, v1]