#format 1.1
#name relay aromat DSP2aE-L2-DC5V
#id 3c55f908bf8743a9bf1072d471264637
#parent 708e13cc5f4e43f7833af53070ba5078
#desc fancy latching relay

footprint = () ->

  d = 2.54
  drill = 1.2
  w = 0.15
  pad_r = 1.0
  sx = 20.2
  sy = 11.1

  name = new Name (d*2.5)
  value = new Value (-d*2.5)
  
  pad9 = new RoundPad pad_r, drill
  pad9.x = -3.5*d
  pad9.y = d*1.5
  pad9.name = 9

  pad8 = clone pad9
  pad8.y = -pad9.y
  pad8.name = 8

  pad12 = new RoundPad pad_r, drill
  pad12.y = d*1.5
  pad12.x = -d/2
  pad12.name = 12

  pad5 = mirror_x clone pad12
  pad5.name = 5

  pad15 = new RoundPad pad_r, drill
  pad15.x = 2.5*d
  pad15.y = d*1.5
  pad15.name = 15

  pad2 = mirror_x clone pad15
  pad2.name = 2

  pad16 = new RoundPad pad_r, drill
  pad16.x = 3.5*d
  pad16.y = d*1.5
  pad16.name = 16

  pad1 = mirror_x clone pad16
  pad1.name = 1

  units = [
    pad9, pad8, 
    pad12, pad5, 
    pad15, pad2, 
    pad16, pad1
  ]
  l = lines w, [
    [-sx/2,  sy/2]
    [ sx/2,  sy/2]
    [ sx/2, -sy/2]
    [-sx/2, -sy/2]
    [-sx/2,  sy/2]
  ]

  combine [name,value, units, l]