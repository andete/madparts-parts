#format 1.2
#name CB-OBS421I-16
#id 715a71cac5464466a0db6fb501167ebf
#parent 445c062a047247098327493b7730f02a
#desc ConnectBlue Dual stack BT module

footprint = () ->
  tdx = 16
  tdy = 36

  pdx = 2.6
  pdy = 1.2
  pbt = 2
  n = 36

  r = make_rect tdx, tdy, 0.1, 'silk'

  p = new Smd 
  p.dx = pdx
  p.dy = pdy
  p.ro = 100

  l1 = dual p, n, pbt, tdx

  name = new Name (tdy/2+1)

  k = new Rect
  k.dx = 16-pdx-1
  k.dy = tdy
  k.type = 'vrestrict'

  combine [r, l1, name, k]