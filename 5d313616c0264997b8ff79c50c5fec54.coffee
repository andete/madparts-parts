#format 1.2
#name QFN36-EP
#id 5d313616c0264997b8ff79c50c5fec54
#parent 1a66889b5fb741c98fd01d4a511b1777
#desc generic QFN36-EP footprint
#desc based on TI CC11xx QFN36-EP

footprint = () ->

  size = 6
  half = size / 2
  half_line_size = half - 1.5
  line_width = 0.25
  num_pads = 36
  e = 0.5
  pdxa = 0.2
  pdx = 0.75
  pdy = 0.28
  cdx = 4.4
  cdy = 4.4

  psize = 6

  name = new Name (half + 1.75)
  
  value = new Value (-half - 1.75)

  pad = new Smd
  pad.dx = pdx+pdxa
  pad.dy = pdy
  pad.ro = 0
  pad.x = -pdxa/2
  

  pd = new Rect
  pd.type = 'docu'
  pd.dx = (pdx+pdxa)/2
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
  center_pad.name = 37

  cpd = new Rect
  cpd.type = 'docu'
  cpd.dx = cdx
  cpd.dy = cdy

  d1 = make_rect psize,psize,0.1,'docu'
  docus = combine [d1, cpd]

  around = size+pdx+0.1+0.1+pdxa*2
  s1 = make_rect around,around ,0.1, 'silk'
  silks = combine [dot, s1]

  combine [name, value, pads, center_pad, docus, silks]