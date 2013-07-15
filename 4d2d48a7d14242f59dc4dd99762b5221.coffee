#format 1.2
#name TAIW_SEM_DIODE
#id 4d2d48a7d14242f59dc4dd99762b5221
#desc farnell 1559152
#desc Taiwan Semiconductor
#desc S1GL
#desc 400V, 1A, 1.1V
#desc package SMF

footprint = () ->
  w = 0.1

  smd1 = new Smd
  smd1.dx = 1.5
  smd1.dy = 1.5
  l = rot_single [smd1], 2, 3.0
  l[0].ro = 50
  l[0].name = '-'
  l[1].name = '+'

  docu = make_rect 3, 2, w, 'docu'

  silk = make_rect 5, 2, w, 'silk'

  line = new Line (w*2.5)
  line.x1 = -2.5
  line.x2 = -2.5
  line.y1 = 1-w
  line.y2 = -1+w

  name = new Name 1.6

  combine [l, docu, name, silk, line]
