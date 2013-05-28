#format 1.1
#name SOT-23
#id 0094a06387e74d2f98a6fe8d01b761ae
#parent 85a388d0b26d4968958c3f9f19100ab1
#desc generic SOT-23 footprint

make_rect = (dx, dy, line_width, type) ->
    x2 = dx/2
    y2 = dy/2
    l = lines line_width, [[-x2,-y2],[x2,-y2],[x2,y2],[-x2,y2],[-x2,-y2]]
    l.map ((o) ->
        o.type = type
        o)

footprint = () ->
  
  w = 0.1
  dx = 0.802
  dy = 0.972
  x = 1.9/2
  y = (2.742-2*0.972)/2 + dy/2

  pad1 = new Smd
  pad1.dx = dx
  pad1.dy = dy
  pad1.x = -x
  pad1.y = -y
  pad1.name = 1

  pad2 = clone pad1
  pad2.x = x
  pad2.name = 2

  pad3 = clone pad1
  pad3.x = 0
  pad3.y = y
  pad3.name = 3

  docu = make_rect 3, 1.4, w, 'docu'
  silk = make_rect 3, 3, w, 'silk'

  d1 = new Rect
  d1.type = 'docu'
  d1.dx = 0.5
  d1.dy = 0.5
  d1.x = 0
  d1.y = 1.3/2+0.25

  d2 = clone d1
  d2.type = 'docu'
  d2.x = pad1.x
  d2.y = -1.3/2-0.25

  d3 = clone d2
  d3.type = 'docu'
  d3.x = -pad1.x

  d = [d1, d2, d3]

  name = new Name 2.6
  value = new Value -2.6
  combine [name, value, docu, pad1, pad2, pad3, silk, d]