#format 1.2
#name NICHIA-NHSx157B
#id 2b69336d14504c55a91a1dea2d33158e
#parent de6c04e16cb54a308f1ca5fa0de9c460
#desc Nichia LED footprint

footprint = () ->

  # total size
  ldx = 3
  ldy = 1.4
  # pad
  pdx1 = 1.56
  pdx2 = 0.54
  pdy = 0.86

  smd1 = new Smd
  smd1.dx = 0.6+1.66
  smd1.dy = pdy
  smd1.x = -(2-(0.6+1.66)/2)

  smd2 = new Smd
  smd2.dx = 0.64+0.6
  smd2.dy = pdy
  smd2.x = 2-(0.64+0.6)/2

  smd3 = new Smd
  smd3.dx = 0.6
  smd3.dy = 1.55
  smd3.x = -(2-0.6/2)
  smd4 = mirror_y clone smd3

  l = [smd2,smd1, smd3, smd4]

  name = new Name 1.4
  value = new Value -1.4

  keepout = make_rect ldx, pdy+0.1, 0.1, 'keepout'
  silk = make_rect ldx+1.2, ldy+0.3, 0.1, 'silk'

  docu1 = new Line 0.1
  docu1.x1 = -ldx/2
  docu1.y1 = ldy/2
  docu1.x2 = ldx/2
  docu1.y2 = ldy/2
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1
  docu5 = new Line 0.1
  docu5.x1 = docu1.x1
  docu5.x2 = docu1.x1
  docu5.y1 = docu1.y1
  docu5.y2 = docu2.y1
  docu5.type = 'docu'
  docu6 = mirror_y clone docu5

  docu3 = new Rect
  docu3.dx = pdx1
  docu3.dy = pdy
  docu3.x = -2.6/2+pdx1/2
  docu3.type = 'docu'
  docu4 = new Rect
  docu4.dx = pdx2
  docu4.dy = pdy
  docu4.x = 2.6/2-pdx2/2
  docu4.type = 'docu'

  docu7 = new Rect
  docu7.dx = 0.2
  docu7.dy = 0.15
  docu7.x = 3/2-0.1
  docu7.y = (0.3+0.15)/2
  docu7.type = 'docu'
  docu8 = mirror_x clone docu7
  docu9 = mirror_y clone docu7
  docu10 = mirror_x clone docu9

  docu = [docu1, docu2, docu3, docu4, docu5, docu6, docu7, docu8, docu9, docu10]
  
  marker = new Line 0.2
  marker.x1 = -ldx/2-0.75
  marker.x2 = -ldx/2-0.75
  marker.y1 = -0.65
  marker.y2 = 0.65

  combine [name ,value, l,  docu, keepout, marker, silk]