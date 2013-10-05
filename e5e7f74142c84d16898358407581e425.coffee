#format 1.2
#name WE_TPC_XMH
#id e5e7f74142c84d16898358407581e425
footprint = () ->
  smd2 = new Smd
  smd2.dx = 3.4
  smd2.dy = 1.4
  smd2.name = '2'
  smd2.y = -3.8
  smd1 = new Smd
  smd1.dx = 3.4
  smd1.dy = 1.4
  smd1.name = '1'
  smd1.y = 3.8
  smdNC1 = new Smd
  smdNC1.dx = 3.4
  smdNC1.dy = 1.4
  smdNC1.name = 'NC1'
  smdNC1.rot = 90
  smdNC1.x = -3.8
  smdNC2 = new Smd
  smdNC2.dx = 3.4
  smdNC2.dy = 1.4
  smdNC2.name = 'NC2'
  smdNC2.rot = 90
  smdNC2.x = 3.8
  silk1 = new Line 0.127
  silk1.x1 = 0.0
  silk1.y1 = 1.6
  silk1.x2 = 0.0
  silk1.y2 = -2.0
  silk2 = new Line 0.127
  silk2.x1 = 0.0
  silk2.y1 = -2.0
  silk2.x2 = 2.0
  silk2.y2 = -2.0
  silk3 = new Line 0.127
  silk3.x1 = 0.0
  silk3.y1 = -2.0
  silk3.x2 = -2.0
  silk3.y2 = -2.0
  silk4 = new Circle 0.127
  silk4.x = 0.0
  silk4.y = 2.0
  silk4.r = 0.2
  combine [silk1,silk2,silk3,silk4,smd1,smd2,smdNC1,smdNC2]
