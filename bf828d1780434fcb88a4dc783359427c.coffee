#format 1.2
#name PIN 1X5 SMD Samtec TSM
#id bf828d1780434fcb88a4dc783359427c
#parent a268b354907f44c792443304a7c333dd
#desc 5 pin pinheader
footprint = () ->

  d = 2.54
  n = 5
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