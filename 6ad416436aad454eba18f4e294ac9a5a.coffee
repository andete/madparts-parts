#format 1.2
#name Maxim uMax-8
#id 6ad416436aad454eba18f4e294ac9a5a
#parent e41d7b501d6448fa89d1b1c09d47b99f
#desc as used for Maxim DS1339
#desc a variant on MSOP8

footprint = () ->

  e = 0.65
  dx = 1.35
  dy = 0.4
  between = 4.3
  half = between/2
  n = 8
  line_width = 0.1
  out_y = n*e/4

  smd = new Smd
  smd.dx = dx
  smd.dy = dy

  r1 = new Rect
  r1.x = 0.2
  r1.dx = (4.9-3)/2
  r1.dy = 0.36
  r1.type = 'docu'

  one = [smd, r1]

  pads = dual one, n, e, between

  name = new Name (out_y + e*1.5)
  value = new Value (-name.y)
  docu = make_rect 3, 3, line_width, 'docu'
  r = make_rect 6.2, 3.0, line_width, 'silk'

   # indicator dot
  dot = new Disc
  dot.x = -half-e/2
  dot.y = out_y+1.5*e
  dot.r = e/2

  combine [name, value, dot, pads, docu, r]