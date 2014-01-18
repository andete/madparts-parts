#format 1.2
#name C-10mm
#id 99ac3c18630345e1bdf19467f744f3ce
#parent e7aba51434504a7dbe64557157252cce
#desc 10mm electrolytic capacitor

footprint = () ->

  d = 5
  drill = 1
  w = 0.15
  pad_r = 1.25
  n = 2

  name = new Name (n*d/2+1)
  value = new Value (-n*d/2-1)
  
  pad = new RoundPad pad_r, drill

  units = rot_single [pad], n, d

  units[1].shape = 'rect'
  units[1].dx = pad_r*2
  units[1].dy = pad_r*2
  

  c = new Circle 0.2
  c.r = 5

  l = new Line 0.2
  l.x1 = 4
  l.y1 = 3
  l.x2 = l.x1
  l.y2 = -l.y1

  pl = new Line 0.2
  pl.x1 = -2.5
  pl.y1 = 2
  pl.x2 = pl.x1
  pl.y2 = pl.y1+1.5

  pl2 = new Line 0.2
  pl2.x1 = -2.5-1.5/2
  pl2.y1 = 2.75
  pl2.x2 = pl2.x1+1.5
  pl2.y2 = pl2.y1

  combine [name,value, units, c, l, pl, pl2]