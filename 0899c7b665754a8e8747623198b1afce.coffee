#format 1.2
#name Johanson 2450AT18B100 Antenna
#id 0899c7b665754a8e8747623198b1afce
#parent 088d8ca8b34c43ada99b879dc5557971


L = 3.2
a = 0.5
dx = 1.5
dy = 1.6
between = L

footprint = () ->
  smd = new Smd
  smd.dx = dx
  smd.dy = dy
  l = rot_single [smd], 2, between

  name = new Name 2.2

  keepout = make_rect L+dx+0.3, dy+0.3, 0.1, 'keepout'
  silk = clone_modl keepout, 'type', 'silk' 

  docu1 = new Line 0.1
  docu1.x1 = -L/2
  docu1.y1 = dy/2
  docu1.x2 = L/2
  docu1.y2 = dy/2
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1
  docu3 = new Rect
  docu3.dx = 0.5
  docu3.dy = dy
  docu3.x = -L/2+docu3.dx/2
  docu3.type = 'docu'

  docu4 = mirror_y clone docu3
  docu4.type = 'docu'

  mark = new Rect
  mark.type = 'silk'
  mark.dx = 0.8
  mark.dy = 0.6
  mark.x = -0.7

  docu = [docu1, docu2, docu3, docu4]
  
  combine [name, l,  docu, keepout, silk, mark]