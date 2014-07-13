#format 1.2
#name Johanson 2450BM14E003 Balun
#id 9b8eb249785a4e189cb8acc12078ffb6
#parent 28bc4baba8cf4350be1102f5bef6c1cf

footprint = () ->
  
  w = 0.1
  dx = 0.15*2
  dy = 0.2
  dxadj = 0.2
  dyadj = 0.08
  x = 1.9/2
  y = (2.742-2*0.972)/2 + dy/2
  W = 0.8
  L = 1.6
  p = 0.5
  between = W

  pad = new Smd
  pad.dx = dx+dxadj
  pad.dy = dy+dyadj

  d = new Rect
  d.type = 'docu'
  d.dx = 0.15
  d.dy = 0.20
  d.x = 0.1

  l = dual [pad,d], 6, p, (W+dxadj)

  docu = make_rect W, L, w, 'docu'
  silk = make_rect W+1, L+0.5, w, 'silk'

  c = new Circle 0.1
  c.r = 0.2
  c.x = -1.3+0.3
  c.y = 1.5

  name = new Name 2.6

  mark = new Rect
  mark.type = 'silk'
  mark.dx = W-3*0.15
  mark.dy = 0.2
  mark.y = 0.3+dy

  combine [name, l, docu, silk, c, mark]