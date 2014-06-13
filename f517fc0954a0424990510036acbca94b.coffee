#format 1.2
#name ti-an043-antenna
#id f517fc0954a0424990510036acbca94b
#parent 3fe3a76e9d09496fa1dece0d3753daf0
footprint = () ->

  dx = 1
  dy = 1
  between = 0.3

  smd1 = new Smd
  smd1.dx = dx
  smd1.dy = dy
  smd1.ro = 10
  smd1.x = -dx/2-between/2

  smd2 = mirror_y clone smd1

  s = make_rect 2*dx+between+0.3,dy+0.3,0.1,'silk'

  l1 = 3.94
  l2 = 2.7
  l3 = 5
  l4 = 2.64
  l5 = 2
  l6 = 4.9
  w1 = 0.9
  w2 = 0.5
  d1 = 0.5
  d2 = 0.3
  d3 = 0.3
  d4 = 0.5
  d5 = 1.4
  d6 = 1.7

  r1 = new Rect
  r1.dx = w2
  r1.dy = l6
  r1.x = w1 + d5+w2/2
  r1.type = 'cu'
  r1.y = l6/2-d4
  

  r2 = new Rect
  r2.dx = w1
  r2.dy = l6
  r2.type = 'cu'
  r2.x = w1/2
  r2.y = r1.y

  r3 = new Rect
  r3.dx = l3
  r3.dy = w2
  r3.type = 'cu'
  r3.x = l3/2
  r3.y = l6-d4+w2/2

  r4 = new Rect
  r4.dx = w2
  r4.dy = l4
  r4.type = 'cu'
  r4.x = l3-w2/2
  r4.y = l6-w2-l4/2
  
  r5 = new Rect
  r5.dx = l5
  r5.dy = w2
  r5.x = r4.x+w2/2+l5/2
  r5.y = l6-l4-w2/2
  r5.type = 'cu'

  r6 = clone r4
  r6.x += l2-w2/2
  
  r7 = new Rect
  r7.dx = l2
  r7.dy = w2
  r7.x = l5+l3/2+l2/2+l2-w2/2
  r7.y = r3.y
  r7.type = 'cu'

  r8 = clone r6
  r8.x += l2-w2

  r9 = clone r5
  r9.x = r8.x+w2/2+l5/2

  r10 = clone r8
  r10.x += l5+w2

  r11 = clone r7
  r11.x += l5+l2

  r12 =  clone r10
  r12.dy = l1
  r12.x += l2-w2
  r12.y -= (l1-l4)/2

  s1 = new Smd
  s1.dx = w2
  s1.dy = d4
  s1.x = r1.x
  s1.y = -d4/2

  s2 = new Smd
  s2.dx = w1
  s2.dy = d4
  s2.x = r2.x
  s2.y = -d4/2

  combine [r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, s1, s2]