#format 1.1
#name PIN 1X2_S
#id 7e844df4e0e14944b1a3dc0d934330f3
#parent e7aba51434504a7dbe64557157252cce
#desc 1 pin pinheader, slightly smaller
footprint = () ->

  d = 2.54
  drill = 1
  w = 0.15
  pad_r = (d-0.64)/2
  n = 2

  name = new Name (n*d/2+1)
  value = new Value (-n*d/2-1)
  
  pad = new RoundPad pad_r, drill

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

  combine [name,value, units]