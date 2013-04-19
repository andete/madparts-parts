#format 1.1
#name BUTTON ALPS SMD 5.2mm SKQG
#id 69749eafd7584cada41b63ad6030d54d
#parent 7db0a6816f5a4a5581e92cecab7d7e08
footprint = () ->


  dx = (8-4.4)/2
  dy = (4.8-2.6)/2
  e = 2.6 + dy

  between = 4.4+dx
  half = between/2
  n = 4
  line_width = 0.127
  out_y = n*e/8

  smd = new Smd
  smd.dx = dx
  smd.dy = dy

  pads = alt_dual smd, n, e, between

  name = new Name out_y+e/2
  value = new Value -(out_y+e/2)

  r1 = new Rect
  r1.dx = (8-2)/2
  r1.dy = 2.6
  r1.type = 'keepout'
  r1.x = 1+r1.dx/2

  r2 = clone r1
  r2.x = -r1.x

  c = new Circle line_width
  c.r = 2/2

  # indicator dot
  silk3 = new Disc
  silk3.x = -half
  silk3.y = out_y+e/2
  silk3.r = e/4

  sq = silk_square 5.2/2, line_width

  combine [name, silk3, value, pads, r1, r2, c, sq]