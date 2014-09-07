#format 1.2
#name ti-dn023-antenna
#id fc677106fbca49778196c46eca9b312b
#parent f517fc0954a0424990510036acbca94b
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

  w = 1
  l1 = 20
  l2 = 5
  w2 = 2
  l3 = 4
  l4 = 10
  l5 = 6
  l6 = 9 # for 868Mhz
  d4 = 0.5


  r1 = new Rect
  r1.dx = w2
  r1.dy = l1
  r1.x = w + l2 + w2/2
  r1.type = 'cu'
  r1.y = l1/2
  
  r2 = new Rect
  r2.dx = w
  r2.dy = l1
  r2.type = 'cu'
  r2.x = w/2
  r2.y = r1.y

  r3 = new Rect
  r3.dx = l2
  r3.dy = w
  r3.type = 'cu'
  r3.x = l2/2+w
  r3.y = r2.y*2-w/2

  r4 = new Rect
  r4.dx = l3
  r4.dy = w
  r4.type = 'cu'
  r4.x = r1.x+l3/2+w2/2
  r4.y = r3.y

  r5 = new Rect
  r5.dx = w
  r5.dy = l4+w
  r5.x = r4.x+r4.dx/2+w/2
  r5.y = r4.y-r5.dy/2+w/2
  r5.type = 'cu'

  r6 = new Rect
  r6.dx = l5
  r6.dy = w
  r6.type = 'cu'
  r6.x = r5.x+r6.dx/2-w/2
  r6.y = r5.y-r5.dy/2-w/2

  r7 = clone r5
  r7.x += l5-w

  r8 = clone r4
  r8.x += 2*(l3+w)

  r9 = clone r7
  r9.x += l3+w

  r10 = clone r6
  r10.x += 2*(l3+w)

  r11 = clone r9
  r11.x += l5-w

  r12 = clone r8
  r12.x += 2*(l3+w)

  r13 = clone r11
  r13.x += l3+w

  r14 = clone r10
  r14.x += 2*(l5-w)

  r15 = clone r13
  r15.x += l5-w

  r16 = clone r12
  r16.x += 2*(l3+w)

  r17 = clone r15
  r17.dy = l6
  r17.x += l3+w
  r17.y = r16.y-r17.dy/2+w/2

  s1 = new Smd
  s1.dx = w2
  s1.dy = d4
  s1.x = r1.x
  s1.y = +d4/2

  s2 = new Smd
  s2.dx = w
  s2.dy = d4
  s2.x = r2.x
  s2.y = -d4/2

  combine [r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, s1, s2]