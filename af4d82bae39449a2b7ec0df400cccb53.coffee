#format 1.2
#name Johanson 0868BM15C0001 Balun
#id af4d82bae39449a2b7ec0df400cccb53
#parent 9b8eb249785a4e189cb8acc12078ffb6

footprint = () ->
  
  w = 0.1
  c = 0.3
  a = 0.3
  dx = c*2
  dy = a
  dxadj = 0.2
  dyadj = 0.08
  x = 1.9/2
  y = (2.742-2*0.972)/2 + dy/2
  W = 1.25
  L = 2
  p = 0.65
  between = W

  pad = new Smd
  pad.dx = dx+dxadj
  pad.dy = dy+dyadj

  d = new Rect
  d.type = 'docu'
  d.dx = c
  d.dy = a
  d.x = 0.25

  l = dual [pad,d], 6, p, (W+dxadj)

  docu = make_rect W, L, w, 'docu'
  silk = make_rect W+1, L+0.5, w, 'silk'

  c = new Circle 0.1
  c.r = 0.2
  c.x = -1.5
  c.y = 1.6

  name = new Name 3

  mark = new Rect
  mark.type = 'silk'
  mark.dx = W/2
  mark.dy = a
  mark.y = dy

  combine [name, l, docu, silk, c, mark]