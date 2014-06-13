#format 1.2
#name Crystal 2-pad 3.2x1.5mm_ABS
#id dd73a3cc6cfd4dc88d6704bd048afc90
#parent bbab3bf61f4041d5ba6ec85d09df7251
#desc example device: Abracon ABS07
#desc 2-pad crystal 3.2x1.5mm

footprint = () ->
  smd = new Smd
  smd.dx = 1.1
  smd.dy = 1.9
  l = rot_single [smd], 2, (1.4+smd.dx)

  name = new Name 2.3
  value = new Value -2.3

  keepout = make_rect 3.2, 1.5, 0.1, 'keepout'
  silk = make_rect 3.2+0.8, 1.5+0.8, 0.1, 'silk' 

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
  l4.x2 = -.7

  l5 = mirror_y clone l4

  lines = [l1, l2, l3, l4, l5]

  combine [name ,value, l, keepout, silk, lines]