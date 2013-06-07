#format 1.2
#name JST-S-4B-XH-A
#id 6b92c3a3e44d41f7a15dbf874f5f0425
#parent 7de249bec4504efe9964a54ff443ec1d
#desc 4-pin side entry JST XH header

footprint = () ->

  total_dx = 12.4
  total_dy = 11.5
  pin_dy = 9.2
  solid_dy = 7
  open_dy = total_dy - solid_dy
  total_adj = pin_dy-total_dy/2
  side_dx = 0.8

  pad1 = new LongPad 1.5, 1.0
  pad1.rot = 90

  unit = [pad1]
  l = rot_single unit, 4 , 2.5
  l[0].name = '4'
  l[1].name = '3'
  l[2].name = '2'
  l[3].name = '1'

  d1 = make_rect total_dx, total_dy, 0.1, 'docu'
  d1 = adjust_y d1, total_adj

  s1 = make_rect total_dx, solid_dy, 0.1, 'silk'
  s1 = adjust_y s1, total_dy/2

  s2 = make_rect side_dx, total_dy, 0.1, 'silk'
  s2 = adjust_x s2, (total_dx-side_dx)/2
  s2 = adjust_y s2, total_adj

  s3 = mirror_y clone s2
  

  name = new Name total_dy-1
  value = new Value -total_dy+pin_dy-1

  combine [d1, s1, s2, s3, l, name, value]