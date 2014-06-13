#format 1.2
#name DIODE_SMB
#id b76c2c0fa12f484c8bcc14e05a492575
#parent e5226016c2924ec89e204aaa6d85203c
#desc Generic SMB Diode footprint
#desc with direction marker


footprint = () ->
  smd = new Smd
  smd.dx = 1.7
  smd.dy = 2.3
  l = rot_single [smd], 2, 5.6-smd.dx+0.2

  name = new Name 3

  silk = make_rect 6, 4, 0.1, 'silk'

  silk2 = new Rect
  silk2.dx = smd.dx+0.1
  silk2.dy = (4-smd.dy)/2-0.1
  silk2.x = l[1].x
  silk2.y = smd.dy/2+silk2.dy/2+0.1

  silk3 = mirror_x clone silk2

  docu3 = new Rect
  docu3.dx = 1.52
  docu3.dy = 2.2
  docu3.x = -(5.6-1.52)/2
  docu3.type = 'docu'
  docu4 = mirror_y clone docu3
  docu4.type = 'docu'

  docu = [docu3, docu4]
  
  marker = new Line 0.3
  marker.x1 = 3.1
  marker.x2 = 3.1
  marker.y1 = -2+0.1
  marker.y2 = 2-0.1

  combine [name, l,  docu, silk, silk2, silk3, marker]