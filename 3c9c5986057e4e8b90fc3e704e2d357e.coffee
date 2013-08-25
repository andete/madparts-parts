#format 1.2
#name PIN 1X2_JST_PH_SMT
#id 3c9c5986057e4e8b90fc3e704e2d357e
#parent 5af805659fd44b10829c889145479ca7
#desc 2 pin SMD JST PH connector
footprint = () ->

  ty = 6+2.6
  adjy = ty/2
  docux = 7.9 
  docuy = 6+1.6

  name = new Name 2+adjy
  value = new Value -10+adjy
  
  pad1 = new Smd
  pad1.x = 1
  pad1.y = -7.3+adjy
  pad1.dx = 1
  pad1.dy = 3+.50

  pad2 = mirror_y clone pad1

  pad3 = new Smd
  pad3.x = 1+1.6+1.6/2+.2
  pad3.dx = 1.6
  pad3.dy = 3.5+.5
  pad3.y = -pad3.dy/2+adjy+.5

  pad4 = mirror_y clone pad3

  l1 = new Line 0.1
  l1.x1 = -docux/2
  l1.x2 = docux/2
  l1.type = 'docu'
  l1.y1 += adjy
  l1.y2 += adjy 

  l2 = clone l1
  l2.y1 = -docuy
  l2.y2 = -docuy
  l2.y1 += adjy
  l2.y2 += adjy 

  l3 = new Line 0.1
  l3.x1 = -docux/2
  l3.x2 = -docux/2
  l3.y1 = l1.y1
  l3.y2 = l2.y1
  l3.type = 'docu'
 
  l4 = mirror_y clone l3

  combine [name,value, pad1, pad2, pad3, pad4, l1, l2, l3, l4]