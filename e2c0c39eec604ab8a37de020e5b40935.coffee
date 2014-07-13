#format 1.2
#name CRYSTAL-FA-238
#id e2c0c39eec604ab8a37de020e5b40935
#parent 6ade559e8e5c4d73b1b89e4df13aaec4
#desc Seiko Epson Corporation FA-238V, FA-238, TSX-3225
#desc 3.2x2.5
footprint = () ->

  tdx = 3.2
  tdy = 2.5
  
  smd = new Smd
  smd.dx = 1.4
  smd.dy = 1.2

  e = 2.2
  between = 1.6

  l = rot_dual smd, 4, e, between

  rx = smd.dy+e+0.3
  ry = smd.dx+between+0.3

  rd = make_rect tdx, tdy, 0.1, 'docu'
  rs = make_rect rx, ry, 0.1, 'silk'

  r1 = new Line 0.2
  r1.x1 = -rx/2-0.1
  r1.x2 = r1.x1
  r1.y1 = 0
  r1.y2 = -ry/2

  r2 = mirror_x mirror_y clone r1

  name = new Name 3
  value = new Value -3

  combine [l, name, value, rd, rs, r1, r2]