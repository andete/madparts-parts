#format 1.2
#name SQFN24
#id 0a600f066fcb4dcca204c27b71f027c6
#parent 4ea85b1d075f4b3685c669cf4ffa370f
#desc generic SQFN24 footprint
#desc based on LAN8742A

footprint = () ->

  size = 4
  half = size / 2
  half_line_size = half - 1.5
  line_width = 0.25
  num_pads = 24
  e = 0.5
  pdx = 0.8
  pdy = 0.28
  cdx = 2.5
  cdy = 2.5

  psize = 5

  name = new Name (half + 1.5)
  
  value = new Value (-half - 1.5)

  pad = new Smd
  pad.dx = pdx
  pad.dy = pdy
  pad.ro = 0

  pd = new Rect
  pd.type = 'docu'
  pd.dx = pdx/2
  pd.dy = pdy
  pd.x = pd.dx/2

  pads = quad [pad,pd], num_pads, e, size

  #pads[1-1].ro = 100

  dot = new Disc (line_width*1.5)
  dot.x = -half-0.1 
  dot.y = half+0.1

  center_pad = new Smd
  center_pad.dx = cdx
  center_pad.dy = cdy
  center_pad.name = 0

  cpd = new Rect
  cpd.type = 'docu'
  cpd.dx = cdx
  cpd.dy = cdy

  d1 = make_rect psize,psize,0.1,'docu'
  docus = combine [d1, cpd]

  around = size+pdx+0.1+0.1
  s1 = make_rect around,around ,0.1, 'silk'
  silks = combine [dot, s1]

  combine [name, value, pads, center_pad, docus, silks]