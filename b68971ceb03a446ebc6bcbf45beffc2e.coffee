#format 1.2
#name CCHOLDER_1225_Keystone_SMD
#id b68971ceb03a446ebc6bcbf45beffc2e
#parent 58ccfcb87e9d4cd492e034333b1118ba
#desc keystone 3000
#desc Farnell 1650692

footprint = () ->

  pdx = 3.2 # G
  pdy = 3.2 # F
  between = 18.9-pdx # W
  w = 0.1

  smd1 = new Smd
  smd1.dx = pdx
  smd1.dy = pdy
  l = rot_single smd1 , 3, between/2

  l[1].shape = 'disc'
  l[1].r = pdx

  silk13 = new Circle 0.127
  silk13.x = 0.0
  silk13.y = 0.0
  silk13.r = 12.1/2

  label16 = new Label '+'
  label16.x = -7.5
  label16.y = 2.5
  label17 = new Label '-'
  label17.y = 2.5
  name = new Name 7.5

  d = new Disc 0.1
  d.r = pdx+2.7
  d.type = 'stop'

  l1 = new Line w
  l1.x1 = -7/2
  l1.x2 = 7/2
  l1.y1 = -6.7
  l1.y2 = l1.y1

  l2 = new Line w
  l2.x1 = -13.2/2
  l2.x2 = l2.x1
  l2.y1 = 5.4
  l2.y2 = l1.y1+(l1.x1-l2.x1)

  l3 = new Line w
  l3.x1 = l2.x2
  l3.y1 = l2.y2
  l3.x2 = l1.x1
  l3.y2 = l1.y1

  l4 = mirror_y clone l3
  l5 = mirror_y clone l2

  combine [l,label16,label17,silk13, name, d, l1, l2, l3, l4, l5]