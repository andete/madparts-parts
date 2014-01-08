#format 1.2
#name Test Pad 0.75mm
#id ad46649ca9584a3fb1566255923dadc4
#parent 40ce5b937d2e40b981d49d8899ec2b7a
footprint = () ->

  smd1 = new Smd
  smd1.dx = 0.75
  smd1.dy = 0.75
  smd1.ro = 100

  name = new Name 1.5
  value = new Value -1.5

  combine [smd1, name, value]