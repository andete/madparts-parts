#format 1.2
#name USB-MICRO-B-FCI-10103593-0001LF
#id 5d46c72af4e84e7fb0030f83a5048668
#parent 356cfdfb4d024f9da597c1d080b56c3e
#desc RS 714-2338

footprint = () ->

  # total size
  total_y = 7.4

  # 4 larger holes
  pad_r2 = 2.2/2
  drill_d2 = 1.5

  pad3 = new RoundPad pad_r2, drill_d2
  pad3.name = '8'
  pad3.y = -10.2/2
  pad3.x = 6.4-2.2/2-3.7

  pad4 = mirror_x (clone pad3)
  pad4.name = '9'

  pad1 = clone pad3
  pad1.name = '10'
  pad1.y = -10.2/2
  pad1.x = 6.4-2.2/2

  pad2 = mirror_x (clone pad1)
  pad2.name = '11'

  pads = [pad1, pad2, pad3, pad4]

  # USB pads
  smd = new Smd
  smd.dx = 1.5
  smd.dy = 0.4
  smd.x = 6.4-smd.dx/2

  # confusingly, the pins are upside 
  # down in the connector, meaning
  # the pin order is reversed
  smds = mirror_x single smd, 5, 1.3/2

  smd2 = new Smd
  smd2.dx = 1.5
  smd2.dy = 1.15
  smd2.x = smd.x

  extra_smd = single smd2, 2, 4.65
  extra_smd[0].name = 6
  extra_smd[1].name = 7

  name = new Name 8

  border = new Line 0.2
  border.x1 = 0
  border.y1 = -total_y/2-1
  border.x2 = 0
  border.y2 = total_y/2+1
  border.type = 'docu'

  silk1 = new Line 0.2
  silk1.x1 = 0
  silk1.y1 = total_y/2
  silk1.x2 = 6.4
  silk1.y2 = total_y/2
  silk2 = mirror_x clone silk1
  silk3 = new Line 0.2
  silk3.x1 = 6.4
  silk3.y1 = total_y/2
  silk3.x2 = 6.4
  silk3.y2 = total_y/2-0.9
  silk4 = mirror_x clone silk3

  docu1 = new Line 0.2
  docu1.x1 =0
  docu1.y1 = total_y/2
  docu1.x2 = -0.62
  docu1.y2 = total_y/2
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1

  docu3 = new Line 0.2
  docu3.x1 = -0.62
  docu3.y1 = -total_y/2
  docu3.x2 = -0.62
  docu3.y2 = total_y/2
  docu3.type = 'docu'

  docu = [border, docu1,docu2,docu3]
  silk = [silk1,silk2,silk3,silk4]

  combine [docu,name,pads,smds, extra_smd, silk]
 