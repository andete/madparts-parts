#format 1.2
#name LENS_LED_GD+_110
#id b8ca4d6f12304f2cb05770a2766c8408
#desc GD+ screw on lens shape

footprint = () ->
  silk1 = new Line 0.127
  silk1.x1 = -2.8725
  silk1.y1 = 5.0
  silk1.x2 = 2.875
  silk1.y2 = 5.0
  silk2 = new Line 0.127
  silk2.x1 = -2.8725
  silk2.y1 = -5.0
  silk2.x2 = 2.875
  silk2.y2 = -5.0
  silk3 = new Line 0.127
  silk3.x1 = 2.875
  silk3.y1 = 5.0
  silk3.x2 = 5.745
  silk3.y2 = 0.0
  silk4 = new Line 0.127
  silk4.x1 = 2.875
  silk4.y1 = -5.0
  silk4.x2 = 5.745
  silk4.y2 = 0.0
  silk5 = new Line 0.127
  silk5.x1 = -5.745
  silk5.y1 = 0.0
  silk5.x2 = -2.8725
  silk5.y2 = 5.0
  silk6 = new Line 0.127
  silk6.x1 = -5.745
  silk6.y1 = 0.0
  silk6.x2 = -2.8725
  silk6.y2 = -5.0
  silk7 = new Circle 0.127
  silk7.x = 0.0
  silk7.y = 0.0
  silk7.r = 3.9
  combine [silk1,silk2,silk3,silk4,silk5,silk6,silk7]
