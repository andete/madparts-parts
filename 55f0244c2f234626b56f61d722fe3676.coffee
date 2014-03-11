#format 1.2
#name Sensirion-SHT2x
#id 55f0244c2f234626b56f61d722fe3676
#parent 28bc4baba8cf4350be1102f5bef6c1cf

footprint = () ->
  
  pdx = 3
  pdy = 3
  w = 0.1
  dx = 0.6+0.2
  dy = 0.4+0.05
  e = 1
  between = 3+0.1
  n =6

  pad = new Smd
  pad.dx = dx
  pad.dy = dy

  r = new Rect
  r.dx = 0.4
  r.dy = 0.4
  r.type = 'docu'
  r.x = 0.2

  l = dual [pad, r], n, e, between

  cp = new Smd
  cp.dx = 1.5
  cp.dy = 2.4
  cp.name = 7

  docu = make_rect pdx, pdy, w, 'docu'
  silk = make_rect pdx+0.5, pdy+0.5, w, 'silk'

  c = new Circle 0.2
  c.r = 0.2
  c.x = -pdy/2-0.5
  c.y = pdy/2+0.5

  name = new Name 3.5
  value = new Value -3.5
  combine [name, value, l, docu, silk, c, cp]