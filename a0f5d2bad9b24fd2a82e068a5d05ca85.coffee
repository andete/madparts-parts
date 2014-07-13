#format 1.2
#name QFN16-5-3
#id a0f5d2bad9b24fd2a82e068a5d05ca85
#parent 4ea85b1d075f4b3685c669cf4ffa370f
#desc generic QFN16 footprint
#desc based on MMA8451Q

footprint = () ->

  size = 3
  half = size / 2
  half_line_size = half - 1.5
  line_width = 0.25
  num_pads = 16
  e = 0.5
  pdx = 1.2
  pdy = 0.3
  cdx = 3.6
  cdy = 3.6

  psize = 3

  name = new Name (half + 2)
  
  value = new Value (-half - 2)

  pad = new Smd
  pad.dx = pdx
  pad.dy = pdy
  pad.ro = 0

  pd = new Rect
  pd.type = 'docu'
  pd.dx = pdx/2
  pd.dy = pdy
  pd.x = pd.dx/2

  pd2 = clone pd
  pd2.x = 0
  pd2.y = pd2.dy/2+0.15

  #pads = quad [pad,pd], num_pads, e, size
  pads1 = dual [pad,pd], 10, e, size
  pads2 = rot_dual [pad,pd2], 6, e, size

  pads2[0].name = 6
  pads2[2].name = 7
  pads2[4].name = 8
  pads1[10].name = 9
  pads1[12].name = 10
  pads1[14].name = 11
  pads1[16].name = 12
  pads1[18].name = 13
  pads2[6].name = 14
  pads2[8].name = 15
  pads2[10].name = 16

  pads = combine [pads1, pads2]

  dot = new Disc (line_width*1.5)
  dot.x = -half-1 
  dot.y = half+1

  d1 = make_rect psize,psize,0.1,'docu'
  docus = combine [d1]

  around = size+pdx+0.1+0.1
  s1 = make_rect around,around ,0.1, 'silk'
  silks = combine [dot, s1]

  combine [name, value, pads, docus, silks]