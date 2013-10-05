#format 1.2
#name PIN 1X1
#id 884efcf563824f1a803a915fa2196a91
#parent 5af805659fd44b10829c889145479ca7
#desc 1 pin pinheader, SMD
footprint = () ->

  d = 2.54
  drill = 1
  w = 0.15
  pad_r = (d-0.34)/2
  n = 1

  name = new Name (n*d/2+1)
  value = new Value (-n*d/2-1)
  
  pad = new Smd
  pad.dx = d-0.5
  pad.dy = d-0.5

  silk1 = new Line w
  silk1.x1 = d/2
  silk1.y1 = -d/4
  silk1.x2 = d/2
  silk1.y2 = d/4
  silk2 = rotate90 clone silk1
  silk3 = rotate90 clone silk2
  silk4 = rotate90 clone silk3

  silk5 = new Line w
  silk5.y1 = d/4
  silk5.x1 = d/2
  silk5.y2 = d/2
  silk5.x2 = d/4
  silk6 = rotate90 clone silk5
  silk7 = rotate90 clone silk6
  silk8 = rotate90 clone silk7

  unit = [pad, silk1, silk2, silk3, silk4, silk5, silk6, silk7, silk8]

  units = single unit, n, d
  #units[9].dx=d-0.7
  #units[9].dy=d-0.7

  combine [name,value, units]