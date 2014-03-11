#format 1.2
#name LQFP80
#id 36ead4a5e06e44d88ed942c4882f8c61
#parent 59b355a84b8c49f9a7af3c503cbd2e63
#desc LQFP80

footprint = () ->

  pady = 0.29
  padx = 1.2
  pinx = 0.22
  outer_size = 14.7
  package_size = 12
  size = outer_size - pady
  half = size / 2
  half_line_size = half - 1.5
  line_width = 0.25
  num_pads = 80
  e = 0.5

  name = new Name (half + 1.5)
  value = new Value (-half - 1.5)

  pad = new Smd
  pad.dx = padx
  pad.dy = pady
  pad.ro = 50

  pin = new Rect
  pin.dy = pinx
  pin.dx = 1
  pin.type = 'docu'

  pads = quad [pad, pin], num_pads, e, size

  silk = silk_square half_line_size, line_width
  docu = make_rect package_size, package_size, 0.1, 'docu'

  # enlargen and offset corner pads
  # *2-2 gives element in pads list that corresponds to actual pad
  # because the pin items are in the same list interleaved
  # this is inspired by Philips doc SOT314-2_fp_reflow.pdf
  pads[1*2-2].dy = 0.4
  pads[1*2-2].y += 0.06
  pads[20*2-2].dy = 0.4
  pads[20*2-2].y -= 0.06
  pads[21*2-2].dy = 0.4
  pads[21*2-2].x -= 0.06
  pads[40*2-2].dy = 0.4
  pads[40*2-2].x += 0.06
  pads[41*2-2].dy = 0.4
  pads[41*2-2].y -= 0.06
  pads[60*2-2].dy = 0.4
  pads[60*2-2].y += 0.06
  pads[61*2-2].dy = 0.4
  pads[61*2-2].x += 0.06
  pads[80*2-2].dy = 0.4
  pads[80*2-2].x -= 0.06

  dot = new Disc (line_width)
  dot.x = -half 
  dot.y = package_size/2

  combine [name, value, pads, silk, dot, docu]