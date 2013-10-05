#format 1.2
#name WE_TPC_XLH
#id cc79ea6983bb4d1fac892c6c7f660648
footprint = () ->
  smd1 = new Smd
  smd1.dx = 3.6
  smd1.dy = 1.8
  l = single [smd1], 2, 9.0
  l[0].name = '2'
  l[1].name = '1'
  silk1 = new Line 0.127
  silk1.x1 = -2.0
  silk1.y1 = 5.0
  silk1.x2 = -5.0
  silk1.y2 = 2.0
  silk2 = new Line 0.127
  silk2.x1 = -5.0
  silk2.y1 = 2.0
  silk2.x2 = -5.0
  silk2.y2 = -2.0
  silk3 = new Line 0.127
  silk3.x1 = -5.0
  silk3.y1 = -2.0
  silk3.x2 = -2.0
  silk3.y2 = -5.0
  silk4 = new Line 0.127
  silk4.x1 = 2.0
  silk4.y1 = -5.0
  silk4.x2 = 5.0
  silk4.y2 = -2.0
  silk5 = new Line 0.127
  silk5.x1 = 5.0
  silk5.y1 = -2.0
  silk5.x2 = 5.0
  silk5.y2 = 2.0
  silk6 = new Line 0.127
  silk6.x1 = 5.0
  silk6.y1 = 2.0
  silk6.x2 = 2.0
  silk6.y2 = 5.0
  combine [l,silk1,silk2,silk3,silk4,silk5,silk6]
