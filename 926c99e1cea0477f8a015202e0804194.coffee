#format 1.2
#name Radionova-M10478-A3
#id 926c99e1cea0477f8a015202e0804194
#parent bc911949853446a68683db938e3b5a0c
#desc Radionova M10478-A3

footprint = () ->
  tdx = 9.5
  tdy = 13.8

  mdx = 8.64

  pdx = 2
  pdy = 0.7
  pbt = 1.1
  pladj = 1.9-((tdx+pdx)/2)
  n1 = 11
  n2 = 6
  n3 = n1
  pvadj = 1*pbt-0.25

  r = make_rect tdx, tdy, 0.1, 'docu'

  p = new Smd 
  p.dx = pdx
  p.dy = pdy
  p.ro = 100

  l1 = single p, n1, pbt
  l1 = adjust_x l1, -mdx/2
  l1 = adjust_y l1 , pvadj

  l2 = rot_single (rotate90pad clone p), n2, pbt
  l2 = adjust_y l2, (l1[n1-1].y-pdx/2-pdy/2-0.45)
  l2 = generate_names l2, 11

  l3 = single p, n3, pbt
  l3 = reverse l3
  l3 = generate_names l3, 17
  l3 = adjust_x l3, mdx/2
  l3 = adjust_y l3, pvadj

  name = new Name (tdy/2+1)

  k = new Rect
  k.type = 'restrict' 
  k.dx = 6
  k.dy = 4.87
  k.y = tdy/2-k.dy/2

  combine [r, l1, l2,l3, name, k]