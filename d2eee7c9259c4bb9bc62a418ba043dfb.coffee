#format 1.2
#name TQFP48
#id d2eee7c9259c4bb9bc62a418ba043dfb
#parent 5f26efa6282c441bb04ec0751b280950
#desc TQFP48 example
#desc based on the EFM32ZG222 spec

footprint = () ->

  size = 8.5
  psize = 7
  w = 0.25
  num_pads = 48
  e = 0.5

  name = new Name 1.5
  value = new Value -1.5

  pad = new Smd
  pad.dx = 1.6
  pad.dy = 0.3
  pad.ro = 0


  #pr = new Rect
  #pr.dx = 0.6
  #pr.dy = 0.25 # ??
  #pr.type = 'docu'
  #pr.x = -0.5

  pads = quad [pad], num_pads, e, size

  docu = make_rect psize-w, psize-w, w/2, 'docu'
  silk = make_rect psize-(3*w), psize-(3*w), w, 'silk'

  dot = new Disc (w*2)
  dot.x = -size/2+0.2
  dot.y = size/2-0.2 

  combine [name, value, pads, silk, dot, docu]