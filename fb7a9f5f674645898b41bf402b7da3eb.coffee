#format 1.2
#name Solder Jumper 1.5mm
#id fb7a9f5f674645898b41bf402b7da3eb
#parent 3fe3a76e9d09496fa1dece0d3753daf0
footprint = () ->

  dx = 1.5
  dy = 1.5
  between = 0.4

  smd1 = new Smd
  smd1.dx = dx
  smd1.dy = dy
  smd1.ro = 10
  smd1.x = -dx/2-between/2

  smd2 = mirror_y clone smd1

  name = new Name dy+0.5
  value = new Value -dy-0.5

  s = make_rect 2*dx+between+0.3,dy+0.3,0.1,'silk'

  combine [smd1, smd2, name, value, s]