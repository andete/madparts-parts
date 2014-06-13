#format 1.2
#name Epcos CANbus choke 1812
#id 8757a35f3334492f90a13739703ce1b2
#parent 86c874d6f865472ea3c43a763700e24f
#desc 	Epcos CANbus choke 1812 100uH

footprint = () ->
  tx = 4
  ty = 5.9
  By = 2.2
  Bx = 0.6
  smd = new Smd
  smd.dx = (tx-Bx)/2
  smd.dy = (ty-By)/2
  e = By+smd.dy
  between = Bx+smd.dx
  n = 4
  l = dual smd, n, e, between

  name = new Name 5
  value = new Value -5

  silk = make_rect 4.7, 6.2, 0.1, 'silk'
  
  combine [name ,value, l, silk]