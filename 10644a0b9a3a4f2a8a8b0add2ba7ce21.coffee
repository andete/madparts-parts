#format 1.1
#name 0603
#id 10644a0b9a3a4f2a8a8b0add2ba7ce21
#parent dc93599ddebd4bf8a02e4beef8a09b8b
#desc Generic 0603 footprint

make_rect = (dx, dy, line_width, type) ->
    x2 = dx/2
    y2 = dy/2
    l = lines line_width, [[-x2,-y2],[x2,-y2],[x2,y2],[-x2,y2],[-x2,-y2]]
    l.map ((o) ->
        o.type = type
        o)

footprint = () ->
  smd = new Smd
  smd.dx = 1.1
  smd.dy = 1.0
  l = rot_single [smd], 2, 1.7

  name = new Name 1.4
  value = new Value -1.4

  keepout = make_rect 3.2, 1.5, 0.1, 'keepout'
  silk = clone_modl keepout, 'type', 'silk' 

  docu1 = new Line 0.1
  docu1.x1 = -0.35
  docu1.y1 = 0.45
  docu1.x2 = 0.35
  docu1.y2 = 0.45
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1
  docu3 = new Rect
  docu3.dx = 0.5
  docu3.dy = 1
  docu3.x = -0.6
  docu3.type = 'docu'
  docu4 = mirror_y clone docu3
  docu4.type = 'docu'

  docu = [docu1, docu2, docu3, docu4]
  
  combine [name ,value, l,  docu, keepout, silk]
