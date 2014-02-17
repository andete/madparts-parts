#format 1.2
#name SO-5
#id f553f70aae2c4684bd7e9bcd278eb947
#parent 40647d9eb4a0430696352beffa539ef5
#desc SO-5 footprint
#desc based on Avago ACPL-M21L

footprint = () ->
  
  w = 0.1
  dx = 1.8
  dy = 0.5
  #x = 1.9/2
  #y = (2.742-2*0.972)/2 + dy/2
  between = 8.27-dx

  pad = new Smd
  pad.dx = dx
  pad.dy = dy

  d = new Rect
  d.type = 'docu'
  d.dx = 0.71
  d.dy = 0.4
  d.x = (8.27-7)/2

  l = dual [pad,d], 6, 0.95, between
  l = remove l, 2
  # kludge to fix numbering
  l[2].name = 3
  l[4].name = 4
  l[6].name = 5
  l[8].name = 6
  docu = make_rect 4.4, 3.6, w, 'docu'
  silk = make_rect 8.5, 3.7, w, 'silk'

  c = new Circle 0.1
  c.r = 0.2
  c.x = -2.3+0.3
  c.y = 2.1

  name = new Name 2.8
  value = new Value -2.8
  combine [name, value, l, docu,silk, c]