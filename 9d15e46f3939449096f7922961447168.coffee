#format 1.2
#name BUTTON ALPS SMD 5.2mm SKQG_S
#id 9d15e46f3939449096f7922961447168
#parent 69749eafd7584cada41b63ad6030d54d
#desc 5.2mm SMD button
#desc ALPS SKQG

footprint = () ->

  # these are the vendor recommended landing patterns
  dx = (8-4.4)/2
  dy = (4.8-2.6)/2
  e = 2.6 + dy
  # however in practice they are very big and don't reflow well
  # so let's adjust them a little
  dx_adj = 0
  dy_adj = 0.3

  between = 4.4+dx
  half = between/2
  n = 4
  line_width = 0.127
  out_y = n*e/8

  smd = new Smd
  smd.dx = dx-dx_adj
  smd.dy = dy-dy_adj

  pads = dual smd, n, (e-dy_adj), between

  name = new Name out_y+e/2
  value = new Value -(out_y+e/2)

  r1 = new Rect
  r1.dx = (8-2)/2
  r1.dy = 2.6
  r1.type = 'vrestrict'
  r1.x = 1+r1.dx/2

  r2 = clone r1
  r2.x = -r1.x

  c = new Circle line_width
  c.r = 2/2

  # indicator dot
  silk3 = new Disc
  silk3.x = -half
  silk3.y = out_y+e/2
  silk3.r = e/8

  sq = silk_square 5.2/2, line_width

  combine [name, silk3, value, pads, r1, r2, c, sq]