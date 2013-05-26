#format 1.2
#name SMT trimmer Panasonic EVM3Y
#id 85a388d0b26d4968958c3f9f19100ab1
#desc TODO

footprint = () ->
  
  w = 0.1

  padb = new Smd
  padb.dx = 1.6
  padb.dy = 2.4-0.9
  padb.y = 0.9 + 2.4/2
  padb.name = 'b'

  pada = new Smd
  pada.dx = (3.2-0.8)/2
  pada.dy = 2.2-1
  pada.x = -0.8 - pada.dx/2
  pada.y = -1 - pada.dy/2
  pada.name = 'a'

  padc = clone pada
  padc.x = -pada.x
  padc.name = 'c'

  docu = lines w, [[-3.1/2,1.85],[3.1/2,1.85],[3.1/2, -1.9], [-3.1/2,-1.9], [-3.1/2,1.85]]
  docu = clone_modl docu, 'type', 'docu'

  x = 3.1/2+.6
  y1 = 1.85+1.15
  y2 = -1.85-.5
  silk = lines w, [[-x,y1],[x,y1],[x,y2], [-x,y2], [-x,y1]]

  name = new Name 3.7

  combine [name, docu, pada, padb, padc, silk]
