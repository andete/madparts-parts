#format 1.2
#name 0805_LED
#id e5226016c2924ec89e204aaa6d85203c
#parent e132e1318ef24ac393a217ce31a25f1e
#desc Generic 0805 footprint
#desc with LED direction marker

make_rect = (dx, dy, line_width, type) ->
    x2 = dx/2
    y2 = dy/2
    l = lines line_width, [[-x2,-y2],[x2,-y2],[x2,y2],[-x2,y2],[-x2,-y2]]
    l.map ((o) ->
        o.type = type
        o)

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
  
  marker = new Line 0.3
  marker.x1 = 1.8
  marker.x2 = 1.8
  marker.y1 = -0.8
  marker.y2 = 0.8

  combine [name ,value, l,  docu, keepout, silk, marker]