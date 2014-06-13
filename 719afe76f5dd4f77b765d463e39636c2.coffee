#format 1.2
#name CCHOLDER_2032_RENATA
#id 719afe76f5dd4f77b765d463e39636c2
#parent 58ccfcb87e9d4cd492e034333b1118ba
#desc renata SMTU-2032-1
#desc Farnell 1216354

footprint = () ->
  smd1 = new Smd
  smd1.dx = 2.6
  smd1.dy = 3.5
  l = rot_single [smd1], 2, 29.4

  silk1 = new Line 0.1227
  silk1.x1 = 29.4/2-1.3
  silk1.y1 = 7/2
  silk1.x2 = silk1.x1
  silk1.y2 = -7/2

  silk2 = mirror_y clone silk1

  silk3 = new Line 0.127
  silk3.x1 = silk1.x1
  silk3.y1 = -smd1.dy/2-0.3
  silk3.x2 = silk3.x1 - 1.1
  silk3.y2 = silk3.y1

  silk4 = new Line 0.127
  silk4.x1 = silk3.x2
  silk4.y1 = silk3.y1
  silk4.x2 = silk3.x2
  silk4.y2 = -silk4.y1

  silk5 = mirror_x clone silk3

  silk6 = mirror_y clone silk3

  silk7 = mirror_y clone silk4

  silk8 = mirror_x clone silk6

  silk9 = new Line 0.127
  silk9.x1 = -silk1.x1
  silk9.y1 = silk1.y1
  silk9.x2 = -5.4
  silk9.y2 = silk9.y1

  silk10 = mirror_y clone silk9

  silk11 = mirror_x clone silk10

  silk12 = mirror_y clone silk11

  silk13 = new Circle 0.127
  silk13.x = 0.0
  silk13.y = 0.0
  silk13.r = 20/2

  label16 = new Label '+'
  label16.x = -11
  label16.dy = 0.75
  label16.y = 2
  label17 = new Label '-'
  label17.x = 11
  label17.y = 2
  label17.dy = 0.75

  name = new Name 3

  combine [l,label16,label17,silk1,silk10,silk11,silk12,silk13,silk2,silk3,silk4,silk5,silk6,silk7,silk8,silk9, name]