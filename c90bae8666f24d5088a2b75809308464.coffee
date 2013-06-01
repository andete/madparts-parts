#format 1.1
#name TE polyfuse 1812
#id c90bae8666f24d5088a2b75809308464
#parent a9b4ccf424df467ea7d99b6e1ea896de
#desc based on the TE minismd C075F/24 polyfuse

# for 1.1 compat
make_rect = (dx, dy, line_width, type) ->
    x2 = dx/2
    y2 = dy/2
    l = lines line_width, [[-x2,-y2],[x2,-y2],[x2,y2],[-x2,y2],[-x2,-y2]]
    l.map ((o) ->
        o.type = type
        o)

footprint = () ->

  # A, B, C from datasheet recommended footprint
  pad_A = 3.15
  pad_B = 1.68
  pad_C = 3.10

  smd = new Smd
  smd.dx = pad_B
  smd.dy = pad_A
  l = rot_single [smd], 2, pad_C+pad_B

  # max A, B, C, D, E from datasheet dimension
  size_A = 4.73
  size_B = 1.46
  size_C = 3.41
  size_D = 0.95
  size_E = 0.2

  name = new Name size_C/2+0.7
  value = new Value -size_C/2-0.7

  keepout = make_rect size_A, size_C, 0.1, 'keepout'
  silk =make_rect size_A+pad_B+0.4, size_C+0.1, 0.1, 'silk'

  docu1 = new Line 0.1
  docu1.x1 = -size_A/2
  docu1.y1 = size_C/2
  docu1.x2 = size_A/2
  docu1.y2 = size_C/2
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1
  docu3 = new Rect
  docu3.dx = size_D
  docu3.dy = size_C
  docu3.x = -size_A/2+size_D/2
  docu3.type = 'docu'
  docu4 = mirror_y clone docu3
  docu4.type = 'docu'

  docu = [docu1, docu2, docu3, docu4]
  
  combine [name ,value, l,  docu, keepout, silk]