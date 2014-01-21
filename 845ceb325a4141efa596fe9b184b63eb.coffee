#format 1.2
#name tag-connect-2x3
#id 845ceb325a4141efa596fe9b184b63eb
#parent 8e209e4c771743e28d103d10dcf3717c
#desc 2X3 pin pinheader
footprint = () ->

  d = 1.27
  drill = 0.2
  w = 0.15
  pad_r = 0.787/2
  n = 6

  name = new Name (n*d/4+1)
  
  pad = new RoundPad pad_r, drill
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