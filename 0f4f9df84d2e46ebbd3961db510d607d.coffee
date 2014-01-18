#format 1.2
#name 8-SOP-209MIL
#id 0f4f9df84d2e46ebbd3961db510d607d
#parent 21c182d743634624b2a27d9d15f44177
#desc TI LP2954 LDO VREG
#desc 100uA quiscent current
#desc adjustable, enable
#desc up to 29V

footprint = () ->

  e = 1.27
  dx = 1.25
  dy = 0.57

  between = 6.7+dx
  half = between/2
  n = 8
  line_width = 0.127
  out_y = n*e/4

  smd = new Smd
  smd.dx = dx
  smd.dy = dy

  pads = dual smd, n, e, between

  name = new Name out_y+e

  docu = make_rect 6.7, 6.1, line_width, 'docu'
  r = make_rect between+dx+0.3, 6.1, line_width, 'silk'

   # indicator dot
  dot = new Disc
  dot.x = -half
  dot.y = out_y+e
  dot.r = e/2.5

  combine [name, dot, pads, docu, r]