#format 1.1
#name 1206
#id a9b4ccf424df467ea7d99b6e1ea896de
#parent e132e1318ef24ac393a217ce31a25f1e
#desc Generic 1206 footprint
#desc used for resistor and capacitor

make_rect = (dx, dy, line_width, type) ->
    x2 = dx/2
    y2 = dy/2
    l = lines line_width, [[-x2,-y2],[x2,-y2],[x2,y2],[-x2,y2],[-x2,-y2]]
    l.map ((o) ->
        o.type = type
        o)

footprint = () ->
  smd = new Smd
  smd.dx = 1.6
  smd.dy = 1.8
  l = rot_single [smd], 2, 2.8

  name = new Name 1.8
  value = new Value -1.8

  keepout = make_rect 4.8, 2.2, 0.1, 'keepout'
  silk = clone_modl keepout, 'type', 'silk' 

  docu1 = new Line 0.1
  docu1.x1 = -1
  docu1.y1 = 0.8
  docu1.x2 = 1
  docu1.y2 = 0.8
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1
  docu3 = new Rect
  docu3.dx = 0.75
  docu3.dy = 1.7
  docu3.x = -1.325
  docu3.type = 'docu'
  docu4 = mirror_y clone docu3
  docu4.type = 'docu'

  docu = [docu1, docu2, docu3, docu4]
  
  combine [name ,value, l,  docu, keepout, silk]