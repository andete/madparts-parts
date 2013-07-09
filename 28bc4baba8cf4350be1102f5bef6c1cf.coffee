#format 1.1
#name SOT-23-6L
#id 28bc4baba8cf4350be1102f5bef6c1cf
#parent 0094a06387e74d2f98a6fe8d01b761ae
#desc generic SOT-23-6L footprint

# backported from 1.2
make_rect = (dx, dy, line_width, type) ->
    x2 = dx/2
    y2 = dy/2
    l = lines line_width, [[-x2,-y2],[x2,-y2],[x2,y2],[-x2,y2],[-x2,-y2]]
    l.map ((o) ->
        o.type = type
        o)

footprint = () ->
  
  w = 0.1
  dx = 1.2
  dy = 0.6
  x = 1.9/2
  y = (2.742-2*0.972)/2 + dy/2

  pad = new Smd
  pad.dx = dx
  pad.dy = dy

  d = new Rect
  d.type = 'docu'
  d.dx = 0.6
  d.dy = 0.5
  d.x = -(3-2.3)/2

  l = dual [pad,d], 6, 0.95, 2.3

  docu = make_rect 1.75, 3.05, w, 'docu'
  silk = make_rect 4, 3.5, w, 'silk'


  name = new Name 2.6
  value = new Value -2.6
  combine [name, value, l, docu, silk]