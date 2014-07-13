#format 1.2
#name Johanson 2450AT45A100 Antenna
#id 088d8ca8b34c43ada99b879dc5557971
#parent a9b4ccf424df467ea7d99b6e1ea896de


dx = 1.5
dy = 2.1
between = 7.5+dx

footprint = () ->
  smd = new Smd
  smd.dx = dx
  smd.dy = dy
  l = rot_single [smd], 2, between

  name = new Name 2.2

  keepout = make_rect 10.9, 2.4, 0.1, 'keepout'
  silk = clone_modl keepout, 'type', 'silk' 

  docu1 = new Line 0.1
  docu1.x1 = -9.5/2
  docu1.y1 = 1
  docu1.x2 = 9.5/2
  docu1.y2 = 1
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1
  docu3 = new Rect
  docu3.dx = 0.5
  docu3.dy = 2
  docu3.x = -9.5/2+docu3.dx/2
  docu3.type = 'docu'
  docu4 = mirror_y clone docu3
  docu4.type = 'docu'

  mark = new Rect
  mark.type = 'silk'
  mark.dx = 1.5
  mark.dy = 1
  mark.x = -2.5

  docu = [docu1, docu2, docu3, docu4]
  
  combine [name, l,  docu, keepout, silk, mark]