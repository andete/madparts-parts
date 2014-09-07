#format 1.2
#name tag-connect-2x3_smd
#id cf24e184a4b947189138103ce7232f54
#parent 845ceb325a4141efa596fe9b184b63eb
#desc 2X3 tag-connect programming header
footprint = () ->

  d = 1.27
  drill = 0.2
  w = 0.15
  pad_r = 0.787/2
  n = 6

  name = new Name (n*d/4+1)
  
  pad = new Smd #pad_r, drill
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

  s = new Circle 0.1
  s.r = h1.r+0.1
  s.x = -d
  s.y = -d/2

  combine [name, units, r, h1, h2, h3, s]