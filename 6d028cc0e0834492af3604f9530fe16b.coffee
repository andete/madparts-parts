#format 1.2
#name solar panel 26x5
#id 6d028cc0e0834492af3604f9530fe16b
#parent d2f4ba1813d740afb47ae52889226c82

footprint = () ->

  tx = 26
  ty = 5

  smd = new Smd
  smd.dx = 1
  smd.dy = ty
  smd.x = -tx/2+smd.dx/2
  
  smd2 = clone smd
  smd2.x -= 2*smd.dx

  l = [smd, smd2]

  name = new Name ty/2+1
  value = new Value -ty/2-1

  silk = make_rect 26, 5, 0.1, 'silk'
  
  l1 = new Label "+"
  l1.x = -tx/2+2

  combine [name ,value, l, silk, l1]