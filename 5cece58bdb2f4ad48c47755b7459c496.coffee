#format 1.2
#name LED_GD+
#id 5cece58bdb2f4ad48c47755b7459c496
#desc OSRAM GD+ LED

footprint = () ->

  smd_1_ = new Smd
  smd_1_.dx = 1.6
  smd_1_.dy = 2.3
  smd_1_.x = -5.0

  smd_2_ = new Smd
  smd_2_.dx = 1.6
  smd_2_.dy = 2.3
  smd_2_.ro = 16
  smd_2_.x = 5.0

  smdHS = new Smd
  smdHS.dx = 4
  smdHS.dy = 4
  smdHS.name = 3
  smdHS.ro = 100

  s1 = make_rect 12,12,0.127,'silk'

  silk5 = new Circle 0.127
  silk5.x = 0.0
  silk5.y = 0.0
  silk5.r = 2.0+2*0.127

  labelp = new Label '+'
  labelp.x = -4.5
  labelp.y = 3

  labelm = new Label '-'
  labelm.x = 4.5
  labelm.y = 3

  name = new Name 7

  r1 =  new Rect
  r1.type = 'cu'
  r1.dx = 11.6-2*(1+1.6)
  r1.dy = 12

  r2 = new Rect
  r2.type = 'cu'
  r2.dx = 12
  r2.dy = 6-2.3/2-1
  r2.y = 2.3/2 + 1 + r2.dy/2

  r3 = mirror_x clone r2

  combine [labelp,labelm,s1,silk5,smdHS,smd_1_,smd_2_,name, r1, r2, r3]
