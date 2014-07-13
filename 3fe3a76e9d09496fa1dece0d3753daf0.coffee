#format 1.2
#name Solder Jumper 1mm
#id 3fe3a76e9d09496fa1dece0d3753daf0
#parent 5a2c25dfb85a4346a25c828477404736
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

  stop = new Rect
  stop.dx = 0.3+0.2
  stop.dy = dy
  stop.type = 'stop'

  name = new Name dy+0.5
  value = new Value -dy-0.5

  s = make_rect 2*dx+between+0.3,dy+0.3,0.1,'silk'

  combine [smd1, smd2, name, value, s, stop]