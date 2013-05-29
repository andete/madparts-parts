#format 1.1
#name RFM12B
#id 53583f3306014b98bb24cce87faf6114
#parent 7db0a6816f5a4a5581e92cecab7d7e08
#desc RFM12B S1 footprint

# for 1.1 compat
make_rect = (dx, dy, line_width, type) ->
    x2 = dx/2
    y2 = dy/2
    l = lines line_width, [[-x2,-y2],[x2,-y2],[x2,y2],[-x2,y2],[-x2,-y2]]
    l.map ((o) ->
        o.type = type
        o)

footprint = () ->

  e = 2
  dx = 3
  dy = 1.5

  between = 15.9
  half = between/2
  n = 14
  w = 0.2
  bdx = 15.9
  bdy = 16.1

  smd = new Smd
  smd.dx = dx
  smd.dy = dy

  pads = dual smd, n, e, between
  pads[0].name = 'SDO'
  pads[1].name = 'nIRQ'
  pads[2].name = 'FSK'
  pads[3].name = 'DCL'
  pads[4].name = 'CLK'
  pads[5].name = 'RES'
  pads[6].name = 'GND'
  pads[7].name = 'ANT'
  pads[8].name = 'VDD'
  pads[9].name = 'GND'
  pads[10].name = 'nINT'
  pads[11].name = 'SDI'
  pads[12].name = 'SCK'
  pads[13].name = 'nSEL'

  name = new Name bdy/2+1
  value = new Value -bdy/2-1

  docu = make_rect bdx, bdy, w, 'docu'

  vkeep = new Rect
  vkeep.dx = bdx-4
  vkeep.dy = bdy-0.5
  vkeep.type = 'vrestrict'

  label = new Label "RFM12B"

  s1 = new Line w
  s1.x1 = -bdx/2
  s1.x2 = bdx/2
  s1.y1 = bdy/2
  s1.y2 = bdy/2

  s2 = mirror_x clone s1

  dot = new Disc
  dot.x = -half
  dot.y = bdy/2+1
  dot.r = e/4

  silks = [s1, s2, dot]

  combine [label, name, silks, value, pads, docu, vkeep]