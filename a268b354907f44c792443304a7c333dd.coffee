#format 1.2
#name PIN 1X6 SMD Samtec TSM
#id a268b354907f44c792443304a7c333dd
#parent d01beefd36ad45d7b724129e9dc8bfd4
#desc 6 pin pinheader
footprint = () ->

  d = 2.54
  n = 6
  dy = 3.43
  height = 6.35
  offset = height/2-dy/2

  name = new Name (height-1)
  value = new Value (-height+1)
  
  smd = new Smd
  smd.dy = d/2
  smd.dx = dy
  smd.ro = 25

  units = single smd, n, d

  for unit in units
    if unit.name % 2 == 0
     unit.x = -offset
    else
     unit.x = offset
  
  units[0].ro = 100 
  combine [name,value, units]