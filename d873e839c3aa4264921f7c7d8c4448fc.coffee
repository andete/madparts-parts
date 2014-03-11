#format 1.2
#name Sensirion-SHT2x+SF2
#id d873e839c3aa4264921f7c7d8c4448fc
#parent 55f0244c2f234626b56f61d722fe3676

footprint = () ->
  
  # SHT2x

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
  c.r = 0.15
  c.x = -pdy/2-0.5
  c.y = pdy/2+0.1

  # SF1

  fdx = 5.1
  fdy = 5.1
  sf_d = make_rect fdx+1.4, fdy+1.4, w, 'docu'
  
  fp1 = new RoundPad 0.5, 1
  fp1.x = fdx/2
  fp1.y = fdy/2
  fp1.name = ''
  fp2 = mirror_x clone fp1
  fp3 = mirror_y clone fp1
  fp4 = mirror_y clone fp2

  fp = [fp1, fp2, fp3, fp4]

  name = new Name 5
  value = new Value -5

  combine [name, value, l, docu, silk, c, cp, sf_d, fp]