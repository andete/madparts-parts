#format 1.2
#name 0805
#id e132e1318ef24ac393a217ce31a25f1e
#parent 10644a0b9a3a4f2a8a8b0add2ba7ce21
#desc Generic 0805 footprint

footprint = () ->
  smd = new Smd
  smd.dx = 1.3
  smd.dy = 1.5
  l = rot_single [smd], 2, 1.7

  name = new Name 1.5
  value = new Value -1.5

  keepout = make_rect 3.3, 1.8, 0.1, 'keepout'
  silk = clone_modl keepout, 'type', 'silk' 

  docu1 = new Line 0.1
  docu1.x1 = -0.35
  docu1.y1 = 0.65
  docu1.x2 = 0.35
  docu1.y2 = 0.65
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1
  docu3 = new Rect
  docu3.dx = 0.75
  docu3.dy = 1.4
  docu3.x = -0.725
  docu3.type = 'docu'
  docu4 = mirror_y clone docu3
  docu4.type = 'docu'

  docu = [docu1, docu2, docu3, docu4]
  
  combine [name ,value, l,  docu, keepout, silk]