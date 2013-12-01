#format 1.2
#name PIN 2X5 SMD 1.27mm
#id c6894c86607449aa898e5580ddb1ea9e
#parent d7b5175613384e6f977e7df3eedf184d
#desc 2x5 pin pinheader SMD
#desc SAMTEC FTS-105-0*-*-DV
#desc eg. FTS-105-01-F-DV
#desc farnell 2308513
#desc RS 767-6695

footprint = () ->

  between_pads = .61
  outside_of_pads = 6.86
  d = 1.27
  n = 10
  dx = (outside_of_pads-between_pads)/2
  dy = 0.74
  between = between_pads + dx

  name = new Name (n*d/4+1)
  value = new Value (-n*d/4-1)
  
  smd = new Smd
  smd.dx = dx
  smd.dy = dy
  smd.ro = 25

  units = alt_dual smd, n, d, between
 
  units[0].ro = 100
  combine [name,value, units]