#format 1.2
#name 0402
#id 41dcd34579ed4b2b93de451c33ea1f0b
#parent d2f4ba1813d740afb47ae52889226c82
#desc Generic 0402 footprint
#desc used for resistor and capacitor

footprint = () ->
  smd = new Smd
  smd.dx = 0.625
  smd.dy = 0.762
  l = rot_single [smd], 2, 1

  name = new Name 1.4
  value = new Value -1.4

  keepout = make_rect 2.3, 1.4, 0.1, 'keepout'
  silk = make_rect 2.3, 1.4, 0.1, 'silk'

  docu1 = new Line 0.1
  docu1.x1 = -0.35
  docu1.y1 = 0.2
  docu1.x2 = 0.35
  docu1.y2 = 0.2
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1
  docu3 = new Rect
  docu3.dx = 0.35
  docu3.dy = 0.5
  docu3.x = -0.5+docu3.dx/2
  docu3.type = 'docu'
  docu4 = mirror_y clone docu3
  docu4.type = 'docu'

  docu = [docu1, docu2, docu3, docu4]
  
  combine [name ,value, l,  docu, keepout, silk]