#format 1.2
#name BLE112
#id bc911949853446a68683db938e3b5a0c
#parent 445c062a047247098327493b7730f02a
#desc Bluegiga BLE112 bluetooth module

footprint = () ->
  tdx = 12.05
  tdy = 18.10

  pdx = 3
  pdy = 0.85
  pbt = 1.25
  pladj = 1.9-((tdx+pdx)/2)
  n1 = 13
  n2 = 8
  n3 = 9
  pvadj = -tdy/2+6*pbt+2.2

  r = make_rect tdx, tdy, 0.1, 'silk'

  p = new Smd 
  p.dx = pdx
  p.dy = pdy
  p.ro = 100

  l1 = single p, n1, pbt
  l1 = adjust_x l1, -tdx/2
  l1 = adjust_y l1 , pvadj

  l2 = rot_single (rotate90pad clone p), n2, pbt
  l2 = adjust_y l2, -tdy/2
  l2 = generate_names l2, 13

  l3 = single p, n3, pbt
  l3 = reverse l3
  l3 = generate_names l3, 21
  l3 = adjust_x l3, tdx/2
  l3 = adjust_y l3, pvadj-2*pbt

  name = new Name (tdy/2+1)

  rdx = tdx/2+pdx*1.5
  k = new Rect
  k.type = 'restrict'
  k.x = -tdx/2+6.35+rdx/2
  k.y = tdy/2-5.5/2
  k.dx = rdx
  k.dy = 5.2

  combine [r, l1, l2,l3, name, k]