#format 1.2
#name 1210
#id 1c42350f024f429298e5c15e9c1d7e5d
#parent a9b4ccf424df467ea7d99b6e1ea896de
#desc Generic 1210 footprint
#desc used for resistor and capacitor

footprint = () ->
  smd = new Smd
  smd.dx = 1.6
  smd.dy = 2.5
  l = rot_single [smd], 2, 2.8

  name = new Name smd.dy/2+1
  value = new Value -smd.dy/2-1

  keepout = make_rect 4.8, smd.dy+0.3, 0.1, 'keepout'
  silk = clone_modl keepout, 'type', 'silk' 

  docu1 = new Line 0.1
  docu1.x1 = -1
  docu1.y1 = smd.dy/2-0.05
  docu1.x2 = 1
  docu1.y2 = smd.dy/2-0.05
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1
  docu3 = new Rect
  docu3.dx = 0.75
  docu3.dy = smd.dy
  docu3.x = -1.325
  docu3.type = 'docu'
  docu4 = mirror_y clone docu3
  docu4.type = 'docu'

  docu = [docu1, docu2, docu3, docu4]
  
  combine [name ,value, l,  docu, keepout, silk]