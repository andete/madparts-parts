#format 1.1
#name MOLEX_53398-1071
#id c877ecd1dc2e420087f35d426d4b00eb
#parent 0467987b220e4ad3a8cc7250d4ac4848

footprint = () ->

  d = 1.25
  w = 0.15
  n = 10

  name = new Name d*1.5
  
  smd = new Smd
  smd.dx = 0.8
  smd.dy = 1.3
  smd.y = 0.0

  x1smd = new Smd
  x1smd.dx = 2.1
  x1smd.dy = 3
  x1smd.y = (-smd.dy/2)-0.6-x1smd.dy/2
  x1smd.x = -(d*(n-1)/2+3.6-x1smd.dx/2)

  x2smd = clone x1smd
  x2smd.x = -x1smd.x

  silk1 = new Line w
  silk1.x1 = x1smd.x+1.2
  silk1.y1 = x1smd.y-1
  silk1.x2 = x2smd.x-1.2
  silk1.y2 = x1smd.y-1
  silk2 = clone silk1
  silk2.y1 = 0
  silk2.y2 = 0

  l = lines w, [
      [x1smd.x+1.2, x1smd.y-1]
      [x1smd.x+1.2, 0]
      [x2smd.x-1.2, 0]
      [x2smd.x-1.2, x1smd.y-1]
      [x1smd.x+1.2, x1smd.y-1]
    ]

  units = rot_single [smd], n, d

  combine [name, units, x1smd, x2smd, l]