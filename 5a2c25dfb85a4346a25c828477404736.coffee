#format 1.2
#name Test Pad 2mm
#id 5a2c25dfb85a4346a25c828477404736
#parent 12fb830658fd4eea8438fc5e5fc448a1
footprint = () ->

  smd1 = new Smd
  smd1.dx = 2.0
  smd1.dy = 2.0
  smd1.ro = 100

  name = new Name 2
  value = new Value -2

  combine [smd1, name, value]