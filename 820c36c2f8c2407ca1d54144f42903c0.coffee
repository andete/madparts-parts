#format 1.1
#name Crystal 2-pad 5x3.2mm
#id 820c36c2f8c2407ca1d54144f42903c0
#parent a9b4ccf424df467ea7d99b6e1ea896de
#desc example device: Interquip SMAQ-5032A
#desc 2-pad crystal 5x3.2mm

make_rect = (dx, dy, line_width, type) ->
    x2 = dx/2
    y2 = dy/2
    l = lines line_width, [[-x2,-y2],[x2,-y2],[x2,y2],[-x2,y2],[-x2,-y2]]
    l.map ((o) ->
        o.type = type
        o)

footprint = () ->
  smd = new Smd
  smd.dx = 1.5
  smd.dy = 1.7
  l = rot_single [smd], 2, 2+smd.dx

  name = new Name 2.3
  value = new Value -2.3

  keepout = make_rect 5, 3, 0.1, 'keepout'
  silk = make_rect 5.3, 3.3, 0.1, 'silk' 

  l1 = new Line 0.1
  l1.y1 = -.8
  l1.y2 = .8

  l2 = clone l1
  l2.x1 = -.3
  l2.x2 = -.3

  l1.w = 0.2

  l3 = mirror_y clone l2

  l4 = new Line 0.1
  l4.x1 = -.3
  l4.x2 = -.9

  l5 = mirror_y clone l4

  lines = [l1, l2, l3, l4, l5]

  combine [name ,value, l, keepout, silk, lines]