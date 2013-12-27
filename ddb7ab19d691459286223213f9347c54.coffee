#format 1.2
#name APDS-9007
#id ddb7ab19d691459286223213f9347c54
#parent 28bc4baba8cf4350be1102f5bef6c1cf
#desc Avago APDS-9007 ambient light sensor

footprint = () ->
  
  n = 4
  w = 0.1
  dx = 0.9
  dy = 0.8
  e = 0.6+dy
  between = 1.4+dx
  px = 4.2
  py = 3.2

  pad = new Smd
  pad.dx = dx
  pad.dy = dy


  l = dual pad, n, e, between
  # note that the pinout is counterintuitively clockwise isof anti-clockwise
  # so need to fix it manually
  l[1].name = 6
  l[2].name = 4
  l[3].name = 3

  docu = make_rect px, py, w, 'docu'
  silk = make_rect px+0.2, py+0.2, w, 'silk'

  c = new Circle 0.2
  c.r = 0.2
  c.x = -px/2-0.3
  c.y = py/2+0.3

  name = new Name 2.6
  value = new Value -2.6
  combine [name, value, l, docu, silk, c]