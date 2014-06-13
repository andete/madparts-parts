#format 1.2
#name FCI FPC/FFC 1x12 0.5mm
#id 97585820662242f48af8d7f72d439468
#parent 8dd151876bc94a5ebec3c1fd0645e2f7
#desc 12 SMD FPC/FFC 0.5mm connector
#desc farnell 1830627

footprint = () ->

  e = 2*0.5
  n = 12
  dx = 1.6
  dy = 0.4
  between = 4-dx

  name = new Name dx+e+1
  value = new Value -dx-e-1
  
  smd = new Smd
  smd.dx = dx
  smd.dy = dy
  smd.ro = 25

  units = mirror_y mirror_x (alt_rot_dual smd, n, e, between)
 
  adapt_unit = (i) ->
     if i % 2 == 0
       adjust_x units[i], 0.25
     else
       adjust_x units[i], -0.25
    
  adapt_unit num for num in [0..(n-1)]

  units[0].ro = 50

  mount1 = new Smd
  mount1.dx = 0.6
  mount1.dy = dx
  mount1.name = n+1
  mount1.x = units[0].x+1
  mount1.y = units[0].y
   
  mount2 = mirror_x clone mount1
  mount2.name = n+2

  mount3 = mirror_y clone mount1
  mount3.name = n+3

  mount4 = mirror_x clone mount3
  mount4.name = n+4

  mounts = [mount1, mount2, mount3, mount4]

  r1 = make_rect 4.5+(n*.5), 4.2, 0.1, 'silk'

  c1= new Circle 0.1
  c1.r = 0.2
  c1.x = units[0].x
  c1.y = units[0].y+dx/2+0.4

  combine [name,value, units, mounts, r1, c1]