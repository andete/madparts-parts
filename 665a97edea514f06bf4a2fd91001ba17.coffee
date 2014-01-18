#format 1.2
#name TRACO-TSR-1-DC-DC
#id 665a97edea514f06bf4a2fd91001ba17
#parent d2419acd1fc44ebfa8e709c2ed6d10e1
#desc TRACOPOWER TSR-1 series
footprint = () ->

  d = 2.54
  drill = 0.75
  w = 0.15
  pad_r = 0.75
  n = 3

  name = new Name (n*d/2+1)
  value = new Value (n*d/2-1)
  
  pad = new RoundPad pad_r, drill

  units = rot_single pad, n, d

  r = make_rect 11.7, 7.6, 0.1, 'silk'

  r = adjust_y r, 7.6/2-2.0

  combine [name,value, units, r]