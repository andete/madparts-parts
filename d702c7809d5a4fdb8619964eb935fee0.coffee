#format 1.2
#name tag-connect-2x3_hold
#id d702c7809d5a4fdb8619964eb935fee0
#parent 845ceb325a4141efa596fe9b184b63eb
#desc 2x3 tag-connect with holding holes 
footprint = () ->

  d = 1.27
  drill = 0.2
  w = 0.15
  pad_r = 0.787/2
  n = 6

  name = new Name (n*d/4+2.5)
  
  pad = new RoundPad pad_r, drill

  pad = new Smd
  pad.dx = pad_r*2
  pad.dy = pad_r*2
  pad.ro = 100

  units = alt_rot_dual pad, n, d, d

  r = new Rect
  r.dx = 2*d
  r.dy =d
  r.type = 'keepout'

  h1 = new RoundPad 0.991/2, 0.991
  h1.x = 2.54
  h1.y = 1.016
  h1.name = 7
  h2 = mirror_x clone h1
  h2.name = 8
  h3 = mirror_y clone h1
  h3.y = 0
  h3.name = 9

  h4 = new RoundPad 2.4/2, 2.4
  h4.name = ''
  h4.x = h3.x+3.175
  h4.y = 2.54

  h5 = mirror_x clone h4
  h6 = clone h4
  h6.x = h3.x
  h7 = mirror_x clone h6

  s = new Circle 0.1
  s.r = h1.r+0.1
  s.x = -d
  s.y = -d/2

  combine [name, units, r, h1, h2, h3, s, h4, h5, h6, h7]