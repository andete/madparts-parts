#format 1.2
#name SOT-23A
#id e917fb96f36749d6af1f1aff2d115b93
#parent 0094a06387e74d2f98a6fe8d01b761ae
#desc generic SOT-23A footprint

footprint = () ->
  
  w = 0.1
  dx = 0.6
  dy = 1.0
  x = 0.95
  y = 2.7/2

  pad1 = new Smd
  pad1.dx = dx
  pad1.dy = dy
  pad1.x = -x
  pad1.y = -y
  pad1.name = 1

  pad2 = clone pad1
  pad2.x = x
  pad2.name = 2

  pad3 = clone pad1
  pad3.x = 0
  pad3.y = y
  pad3.name = 3

  docu = make_rect 3, 1.8, w, 'docu'
  silk = make_rect 3.2, 4, w, 'silk'

  d1 = new Rect
  d1.type = 'docu'
  d1.dx = 0.5
  d1.dy = 0.8
  d1.x = 0
  d1.y = 1.3/2+0.6

  d2 = clone d1
  d2.type = 'docu'
  d2.x = pad1.x
  d2.y = -1.3/2-0.6

  d3 = clone d2
  d3.type = 'docu'
  d3.x = -pad1.x

  d = [d1, d2, d3]

  disc = new Disc 0.2
  disc.x = -x+0.6
  disc.y = -y-0.2

  name = new Name 2.6
  value = new Value -2.6
  combine [name, value, docu, pad1, pad2, pad3, silk, d, disc]