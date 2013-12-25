#format 1.2
#name Test Pad 1.5mm
#id 5ac6da253d37430fa04d0fea02f20d67
#parent 5a2c25dfb85a4346a25c828477404736
footprint = () ->

  smd1 = new Smd
  smd1.dx = 1.5
  smd1.dy = 1.5
  smd1.ro = 100

  name = new Name 1.5
  value = new Value -1.5

  combine [smd1, name, value]