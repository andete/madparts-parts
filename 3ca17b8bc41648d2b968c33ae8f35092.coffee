#format 1.2
#name BLE113
#id 3ca17b8bc41648d2b968c33ae8f35092
#parent 445c062a047247098327493b7730f02a
#desc Bluegiga BLE113 bluetooth LE module

footprint = () ->
  module_dx = 9.15
  module_dy = 15.74

  pad_dx = 2
  pad_dy = 0.5

  pad_hadj = (5.35+pad_dx)/2
  pad_between = 0.8
  n_left = 18
  n_down = 6
  n_right = 12
  lr_pad_from_bottom = 1.45
  pad_vadj = ((n_left-1)/2)*pad_between # move pad 18 to 0
  pad_vadj -= module_dy/2                     # move pad 18 down to bottom
  pad_vadj += lr_pad_from_bottom         # and back up by 1.45

  r1 = make_rect module_dx, module_dy, 0.1, 'docu'
  r2 = make_rect module_dx+0.2, module_dy+0.2, 0.1, 'silk'

  pad = new Smd 
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 100

  l1 = single pad, n_left, pad_between
  l1 = adjust_x l1, -pad_hadj
  l1 = adjust_y l1 , pad_vadj

  l2 = rot_single (rotate90pad clone pad), n_down, pad_between
  l2 = adjust_y l2, -module_dy/2+lr_pad_from_bottom-0.55
  l2 = generate_names l2, n_left

  l3 = single pad, n_right, pad_between
  l3 = reverse l3
  l3 = generate_names l3, n_left+n_down
  l3 = adjust_x l3, pad_hadj
  l3 = adjust_y l3, pad_vadj+(n_right-n_left)/2*pad_between

  name = new Name (module_dy/2-1)

  k = new Rect
  k.type = 'restrict'
  k.dx = module_dx
  k.dy = module_dy/2-l3[n_right-1].y
  k.x = -module_dx/2+3.5+k.dx/2
  k.y = l3[n_right-1].y+pad_dy/2+k.dy/2

  combine [name, r1,r2, l1, l2,l3, k]
