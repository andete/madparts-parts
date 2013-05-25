#format 1.1
#name relay TE V23079 THT standard bistable 2 coil
#id c82c2e1e5ff5451296bbd438e4f9129d
#parent 3c55f908bf8743a9bf1072d471264637
#desc fancy latching relay

footprint = () ->

  d = 2.54
  drill = 0.6
  w = 0.15
  pad_r = 0.6
  sx = 14.6
  sy = 7.3
  n = 12

  name = new Name (d*2)
  value = new Value (-d*2)
  
  unit = new RoundPad pad_r, drill

  units = rot_dual unit, n, d, 2*d

  units = (unit for unit in units when unit.name not in [2,11])

  silks = lines w, [
    [-sx/2,  sy/2]
    [ sx/2,  sy/2]
    [ sx/2, -sy/2]
    [-sx/2, -sy/2]
    [-sx/2,  sy/2]
  ]

  keepouts = clone_modl silks, 'type', 'keepout'

  r = new Rect
  r.x = -2.5*d
  r.dx = d/2
  r.dy = d

  #restrict = new Rect
  #restrict.type = 'restrict'
  #restrict.dx = 3*d
  #restrict.dy = 1*d
  #restrict.x = 0.5*d
 

  combine [name,value, units, silks, keepouts, r]