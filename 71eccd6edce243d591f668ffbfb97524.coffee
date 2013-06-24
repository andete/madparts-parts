#format 1.1
#name Power Plug 2.1mm
#id 71eccd6edce243d591f668ffbfb97524
#desc PTH 2.1mm pin power plug
#desc using large holes

# for 1.1 compat
make_rect = (dx, dy, line_width, type) ->
    x2 = dx/2
    y2 = dy/2
    l = lines line_width, [[-x2,-y2],[x2,-y2],[x2,y2],[-x2,y2],[-x2,-y2]]
    l.map ((o) ->
        o.type = type
        o)

footprint = () ->

  dx = 14.5
  dy = 9
  w =0.1
  r1 = make_rect dx, dy, w, 'silk'

  slota = 3 + 0.2
  a_r = (slota+1.2)/2

  # power connection
  pada = new RoundPad a_r, slota
  pada.x = -dx/2 + 13.9
  pada.name = 'P'

  # GND connection
  slotbc = 2.4 + 0.2
  bc_r = (slotbc+1.2)/2
  padc = new RoundPad bc_r, slotbc
  padc.x = -dx/2 + 7.7
  padc.name = 'G'

  # GND break connection
  padb = new RoundPad bc_r, slotbc
  padb.x = -dx/2 + 10.7
  padb.y = -4.7
  padb.name = 'B'

  name = new Name 5.5
  name.x = -1
  value = new Value -5.5
  value.x = -1

  pads = [pada, padb, padc]

  combine [name, value, r1, pads]
