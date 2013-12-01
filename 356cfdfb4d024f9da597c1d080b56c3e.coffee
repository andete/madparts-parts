#format 1.2
#name USB-MICRO-AB-Molex-47590-0001
#id 356cfdfb4d024f9da597c1d080b56c3e
#parent 467f12c6796f4c478d3a116783842507
#desc USB-MICRO-AB-Molex-47590-0001
#desc RS 702-5481

footprint = () ->

  # total size
  total_x = 5.2
  total_y = 7.5

  # two small right holes
  pad_r1 = 0.525
  drill_r1 = 0.325
  y1 = 4.45

  pad1 = new RoundPad pad_r1, drill_r1*2
  pad1.name = '6'
  pad1.x = 3
  pad1.y = y1/2

  pad2 = mirror_x (clone pad1)
  pad2.name = '7'

  # two larger center holes
  pad_r2 = 1.9/2
  drill_d2 = 1.5

  pad3 = new RoundPad pad_r2, drill_d2
  pad3.name = '8'
  pad3.y = -8.35/2

  pad4 = mirror_x (clone pad3)
  pad4.name = '9'

  pads = [pad1, pad2, pad3, pad4]

  # alignment holes
  drill1 = new Hole 0.85
  drill1.y = 4.75/2
  drill1.x = -1.5
  drill2 = mirror_x clone drill1
  drills = [drill1, drill2]

  # central smd
  smd1 = new Smd
  smd1.dx = pad_r2*2
  smd1.dy = 2.9
  smd1.name = '10'

  # USB pads
  smd = new Smd
  smd.dx = 1.35
  smd.dy = 0.4
  smd.x = 2+smd.dx/2

  usb_pads = single smd, 5, 0.65

  smds= combine [smd1, usb_pads]

  name = new Name 6

  border = new Line 0.2
  border.x1 = -1.45
  border.y1 = -total_y/2-1
  border.x2 = -1.45
  border.y2 = total_y/2+1
  border.type = 'docu'

  silk1 = new Line 0.2
  silk1.x1 = -1.45
  silk1.y1 = total_y/2
  silk1.x2 = 3
  silk1.y2 = total_y/2
  silk2 = mirror_x clone silk1
  silk3 = new Line 0.2
  silk3.x1 = 3
  silk3.y1 = total_y/2
  silk3.x2 = 3
  silk3.y2 = total_y/2-0.9
  silk4 = mirror_x clone silk3

  docu1 = new Line 0.2
  docu1.x1 = -1.45
  docu1.y1 = total_y/2
  docu1.x2 = -1.45-0.75
  docu1.y2 = total_y/2
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1
  docu3 = new Line 0.2
  docu3.x1 = -1.45-0.75
  docu3.y1 = -total_y/2
  docu3.x2 = -1.45-0.75
  docu3.y2 = total_y/2
  docu3.type = 'docu'

  docu = [border, docu1,docu2,docu3]
  silk = [silk1,silk2,silk3,silk4]

  combine [docu,name,pads,smds, silk, drills]
 
