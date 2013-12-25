#format 1.2
#name Test Pad 1mm
#id 40ce5b937d2e40b981d49d8899ec2b7a
#parent 5ac6da253d37430fa04d0fea02f20d67
footprint = () ->

  smd1 = new Smd
  smd1.dx = 1
  smd1.dy = 1
  smd1.ro = 100

  name = new Name 1.5
  value = new Value -1.5

  combine [smd1, name, value]