#format 1.2
#name DRY-SON6
#id 0a78fbc6330943838f3c080de6963d9e
#parent 28bc4baba8cf4350be1102f5bef6c1cf
#desc generic DRY-SON6 package
#desc based on TI TPS62730

footprint = () ->
  
  w = 0.1
  dx = 0.52
  dy = 0.3
  n = 6
  e = 0.5
  between = 0.25+ e

  pad = new Smd
  pad.dx = dx
  pad.dy = dy

  d = new Rect
  d.type = 'docu'
  d.dx = 0.35
  d.dy = 0.25
  d.x =  -(2*(.5-.35)+.3 - between)/2

  l = dual [pad,d], n, e, between

  docu = make_rect 1, 1.5, w, 'docu'
  silk = make_rect 1.5, 2, w, 'silk'

  c = new Circle 0.2
  c.r = 0.2
  c.x = -1
  c.y = 1.3

  name = new Name 2.1
  value = new Value -2.1
  combine [name, value, l, docu, silk, c]