#format 1.2
#name BT111
#id 445c062a047247098327493b7730f02a
#desc Bluegiga BT111 bluetooth module

footprint = () ->
  tdx = 9.3
  tdy = 13.05

  pdx = 1.5
  pdy = 0.6
  pbt = 1.1
  pladj = 1.9-((tdx+pdx)/2)
  n1 = 10
  n2 = 5
  n3 = 6
  pvadj = tdy/2-((n1-1)/2)*pbt - (tdy-2-9*pbt)

  r = make_rect tdx, tdy, 0.1, 'silk'

  p = new Smd 
  p.dx = pdx
  p.dy = pdy
  p.ro = 50

  l1 = single p, n1, pbt
  l1 = adjust_x l1, pladj
  l1 = adjust_y l1 , pvadj

  l2 = rot_single (rotate90pad clone p), n2, pbt
  l2 = adjust_y l2, -tdy/2 + 2 - pdx/2
  l2 = generate_names l2, 10

  l3 = single p, n3, pbt
  l3 = reverse l3
  l3 = generate_names l3, 15
  l3 = adjust_x l3, -pladj
  l3 = adjust_y l3, pvadj-2*pbt

  name = new Name (tdy/2+1)

  k = new Rect
  k.type = 'restrict'
  k.x = 7
  k.y = tdy/2-2.5
  k.dx = tdx/2+10
  k.dy = 5.2

  combine [r, l1, l2,l3, name, k]
