#format 1.2
#name QFN24
#id 4ea85b1d075f4b3685c669cf4ffa370f
#parent 5f26efa6282c441bb04ec0751b280950
#desc generic QFN24 footprint
#desc based on EFM32ZG110FXX

footprint = () ->

  size = 5
  half = size / 2
  half_line_size = half - 1.5
  line_width = 0.25
  num_pads = 24
  e = 0.65
  pdx = 0.8
  pdy = 0.3
  cdx = 3.6
  cdy = 3.6

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