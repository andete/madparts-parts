#format 1.2
#name 0805_LED-avago-C110-side
#id d5f03c6d3ff64ec699c0a5f96a8ca18c
#parent e5226016c2924ec89e204aaa6d85203c
#desc Avago C110 type side LED
#desc e.g. HSMC-C110 farnell 8554498

footprint = () ->
  smd = new Smd
  smd.dx = 1.5
  smd.dy = 1
  l = rot_single [smd], 2, 2+smd.dx

  smd3 = new Smd
  smd3.dx = 0.9
  smd3.dy = 0.9
  smd3.y = 0.2+smd3.dy/2
  smd3.name = 3

  name = new Name 2.1
  value = new Value -2.5

  keepout = make_rect 5.3, 1.7, 0.1, 'keepout'
  keepout = adjust_y keepout, -0.5
  silk = clone_modl keepout, 'type', 'silk' 

  docu1 = new Rect
  docu1.dx = 3.2
  docu1.dy = 0.5
  docu1.type = 'docu'

  docu2 = new Rect
  docu2.dx = 2
  docu2.dy = 1
  docu2.type = 'docu'
  docu2.y = -docu2.dy/2 - docu1.dy/2

  docu = [docu1, docu2]
  
  marker = new Line 0.3
  marker.x1 = +5.3/2+0.2
  marker.x2 = marker.x1
  marker.y1 = -0.8-0.5
  marker.y2 = 0.8-0.5

  combine [name ,value, l,  docu, keepout, silk, marker, smd3]