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
  smdHS.dx = 2.3
  smdHS.dy = 2.3
  smdHS.name = 'HS'
  smdHS.ro = 100

  r1 = make_rect 12,12,0.127,'silk'

  silk5 = new Circle 0.127
  silk5.x = 0.0
  silk5.y = 0.0
  silk5.r = 2.0
  label6 = new Label '+'
  label6.x = -4.865
  label6.y = 3.135
  label6.dy = 1.27
  label7 = new Label '-'
  label7.x = 5.135
  label7.y = 3.135
  label7.dy = 1.27

  name = new Name 4
  value = new Value -4

  combine [label6,label7,r1,silk5,smdHS,smd_1_,smd_2_,name, value]
