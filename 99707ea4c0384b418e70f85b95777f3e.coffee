#format 1.2
#name Si1102-ODFN
#id 99707ea4c0384b418e70f85b95777f3e
#parent 55f0244c2f234626b56f61d722fe3676

footprint = () ->
  
  pdx = 3
  pdy = 3
  w = 0.1
  dx = 0.6+0.2
  dy = 0.4+0.05
  e = 0.65
  between = 3+0.1
  n =8

  pad = new Smd
  pad.dx = dx
  pad.dy = dy

  r = new Rect
  r.dx = 0.4
  r.dy = 0.35
  r.type = 'docu'
  r.x = 0.2

  l = dual [pad, r], n, e, between

  cp = new Smd
  cp.dx = 1.5
  cp.dy = 2.4
  cp.name = 9

  docu = make_rect pdx, pdy, w, 'docu'
  silk = make_rect pdx+1.5, pdy+0.5, w, 'silk'

  c = new Circle 0.2
  c.r = 0.2
  c.x = -pdy/2-0.5
  c.y = pdy/2+0.7

  name = new Name 3.5
  value = new Value -3.5
  combine [name, value, l, docu, silk, c, cp]