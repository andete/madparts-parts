#format 1.2
#name DPAK5
#id 3cb734fb3abd41a28bd0cbe1f89ab59a
#parent e917fb96f36749d6af1f1aff2d115b93
#desc generic DPAK5
footprint = () ->
  
  w = 0.1
  dx = 2.2
  dy = 0.8
  e = dy + 0.34

  pad1 = new Smd
  pad1.dx = dx
  pad1.dy = dy

  pads = single pad1, 5, e

  pads = [pads[0], pads[1], pads[3], pads[4]]

  pad2 = new Smd
  pad2.dx = 6.4
  pad2.dy = 5.8
  pad2.name = 6
  pad2.x = dx/2-10.6+pad2.dx/2

  silk = make_rect 11.1, 6.73, w, 'silk'
  silk = adjust_x silk, -4.2

  disc = new Disc 0.3
  disc.x = +dx/2+0.6
  disc.y = pads[0].y

  name = new Name 5
  name.x = -3
  value = new Value -5
  value.x = -3

  combine [name, value, pads, pad2, silk, disc]