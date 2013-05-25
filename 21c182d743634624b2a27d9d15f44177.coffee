#format 1.2
#name TI_LP2954_SO8
#id 21c182d743634624b2a27d9d15f44177
#parent 7db0a6816f5a4a5581e92cecab7d7e08
#desc TI LP2954 LDO VREG
#desc 100uA quiscent current
#desc up to 29V
footprint = () ->

  e = 1.27
  dx = 2.2
  dy = 0.6

  between = 5.2
  half = between/2
  n = 8
  line_width = 0.127
  out_y = n*e/4

  smd = new Smd
  smd.dx = dx
  smd.dy = dy

  pads = dual smd, n, e, between

  name = new Name out_y+e/2

  docu = make_rect 4, 5, line_width, 'docu'
  r = make_rect 8, 5, line_width, 'silk'

   # indicator dot
  dot = new Disc
  dot.x = -half
  dot.y = out_y+e/2
  dot.r = e/4

  combine [name, dot, pads, docu, r]