#format 1.2
#name CRYSTAL-MC-306
#id 9254bd9a56384d73a4cf9112628a306f
#parent e2c0c39eec604ab8a37de020e5b40935
#desc Seiko Epson Corporation FA-238V, FA-238, TSX-3225
#desc 3.2x2.5
footprint = () ->

  tdx = 8
  tdy = 3.8
  
  smd = new Smd
  smd.dx = 1.9
  smd.dy = 1.3

  e = 4.2+smd.dy
  between = 1.3+smd.dx

  l = rot_dual smd, 4, e, between

  rx = tdx
  ry = tdy+0.5

  rd = make_rect tdx, tdy, 0.1, 'docu'
  rs = make_rect rx, ry, 0.1, 'silk'

  r1 = new Line 0.5
  r1.x1 = -rx/2+0.25
  r1.x2 = r1.x1
  r1.y1 = ry/4
  r1.y2 = -ry/4

  name = new Name 3
  value = new Value -3

  combine [l, name, value, rd, rs, r1]