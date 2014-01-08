#format 1.2
#name LED5050
#id b75de9d4a8204c3cb3f425e97a7014c0
#parent 28bc4baba8cf4350be1102f5bef6c1cf
#desc generic SOT-23-6L footprint

footprint = () ->
  
  w = 0.1
  dx = 1
  dy = 0.9
  e = (2.3-0.9)/2+0.9
  between = 4.4
  n = 6

  d = new Rect
  d.type = 'docu'
  d.dx = 1
  d.dy = 0.9

  pad = new Smd
  pad.dx = d.dx+2
  pad.dy = d.dy+0.2
  pad.x = 0.3

  l = dual [pad,d], 6, e, between

  docu = make_rect 5, 5, w, 'docu'
  silk = make_rect 7.2, 5.2, w, 'silk'

  c = new Disc 0.5
  c.x = -5/2-0.5
  c.y = 5/2+0.7

  name = new Name 3.25
  value = new Value -3.25
  combine [name, value, l, docu, silk, c]