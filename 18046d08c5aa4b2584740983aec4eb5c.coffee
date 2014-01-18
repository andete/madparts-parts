#format 1.2
#name HRS-U.FL-R-SMT
#id 18046d08c5aa4b2584740983aec4eb5c
#parent 10644a0b9a3a4f2a8a8b0add2ba7ce21
#desc HiRose U.FL-R-SMT coax connector

footprint = () ->
  smd = new Smd
  smd.dx = 1
  smd.dy = 2.2
  l = rot_single [smd], 2, 1.9+smd.dx
  l[0].name = 2
  l[1].name = 3

  top_smd = new Smd
  top_smd.dx = 1
  top_smd.dy = 1.05
  top_smd.y = 1+top_smd.dy/2

  name = new Name 2.3

  keepout = make_rect 3, 3.1, 0.1, 'keepout'
  silk = make_rect 4.25, 4.25, 0.1, 'silk'
  
  combine [name, l, keepout, silk, top_smd]