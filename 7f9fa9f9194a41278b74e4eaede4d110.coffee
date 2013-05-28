#format 1.1
#name Wago 500 Screw Terminal 2 pin
#id 7f9fa9f9194a41278b74e4eaede4d110
#desc Wago 500 style screw terminal

make_rect = (dx, dy, line_width, type) ->
    x2 = dx/2
    y2 = dy/2
    l = lines line_width, [[-x2,-y2],[x2,-y2],[x2,y2],[-x2,y2],[-x2,-y2]]
    l.map ((o) ->
        o.type = type
        o)

footprint = () ->
  w = 0.15

  pad1 = new LongPad 1.8, 1.2
  pad1.rot = 90
  pad1.y = -1.27
  l = rot_single [pad1], 2, 5.0

  r1 = make_rect 10, 5.5+3.7, w, 'silk'
  r1 = r1.map ((o) -> adjust_y o, (3.7-5.5)/2)

  silk1 = new Line w
  silk1.x1 = -5
  silk1.y1 = -3
  silk1.x2 = -3.4
  silk1.y2 = -3
  silk2 = new Line w
  silk2.x1 = -1.6
  silk2.y1 = -3
  silk2.x2 = 1.6
  silk2.y2 = -3
  silk3 = new Line w
  silk3.x1 = 3.4
  silk3.y1 = -3
  silk3.x2 = 5
  silk3.y2 = -3
  silk4 = new Line w
  silk4.x1 = -5
  silk4.y1 = 3.5
  silk4.x2 = 5
  silk4.y2 = 3.5
  silk5 = new Circle w
  silk5.x = -2.5
  silk5.y = 2.2
  silk5.r = 0.6
  silk6 = new Circle w
  silk6.x = 2.5
  silk6.y = 2.2
  silk6.r = 0.6

  silks = [silk1, silk2, silk3, silk4, silk5, silk6]

  docu1 = new Line w
  docu1.x1 = -3.4
  docu1.y1 = -3
  docu1.x2 = -1.6
  docu1.y2 = -3
  docu1.type = 'docu'
  docu2 = new Line w
  docu2.x1 = 1.6
  docu2.y1 = -3
  docu2.x2 = 3.4
  docu2.y2 = -3
  docu2.type = 'docu'
  docu3 = new Circle w
  docu3.x = -2.5
  docu3.y = -1.27
  docu3.r = 1.6
  docu3.type = 'docu'
  docu4 = new Circle w
  docu4.x = 2.5
  docu4.y = -1.27
  docu4.r = 1.6
  docu4.type = 'docu'

  docus = [docu1, docu2, docu3, docu4]

  name = new Name 4.8
  value = new Value -6.5

  combine [l, name, value, r1, docus, silks]
