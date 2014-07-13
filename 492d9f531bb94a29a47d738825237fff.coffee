#format 1.2
#name pulse-RJ45-B
#id 492d9f531bb94a29a47d738825237fff
#parent 741d29eeeaa7438c90160b7e5192f731
#desc Pulse Electronics J0011D21BNL RJ45 with buildin magnetics

footprint = () ->

  # total size
  total_y = 21.59
  total_x = 16.26
  w = 0.1
  top_y = total_y/2

  #holes
  hole_d = 3.2
  hole1 = new RoundPad hole_d/2, hole_d
  hole1.x = 11.43/2
  hole1.y = top_y - 10.79
  hole1.name = '0'
  hole2 = mirror_y clone hole1
  
  holes = [hole1, hole2]

  # solder holes
  sol_d = 1.6
  sol1 = new RoundPad sol_d/2+0.4, sol_d
  sol1.y = -3.05
  sol1.x = 15.75/2
  sol1.name = 13
  sol2 = mirror_y clone sol1
  sol2.name = 14

  sols = [sol1, sol2]

  # pads
  drill_r = 1/2
  pad_r = drill_r + 0.3

  pad1 = new RoundPad pad_r, drill_r*2
  pad1.x = hole1.x - 1.27
  pad1.y = -8.89+2.54
  pad1.name = 1

  pad3 = clone pad1
  pad3.name = 3
  pad3.x -= 2.54

  pad5 = clone pad3
  pad5.name = 5
  pad5.x -= 2.54

  pad7 = clone pad5
  pad7.name = 7
  pad7.x -= 2.54

  pad2 = clone pad1
  pad2.name = 2
  pad2.x -= 1.27
  pad2.y -= 2.54

  pad4 = clone pad2
  pad4.name = 4
  pad4.x -= 2.54

  pad6 = clone pad4
  pad6.name = 6
  pad6.x -= 2.54

  pad8 = clone pad6
  pad8.name = 8
  pad8.x -= 2.54

  # LED pads

  ldrill_r = 1.2/2
  lpad_r = drill_r + 0.4

  pad9 = new RoundPad lpad_r, ldrill_r*2
  pad9.x = 12.65/2
  pad9.y = 4.9
  pad9.name = 9

  pad11 = clone pad9
  pad11.name = 11
  pad11.x -= 10.11

  pad10 = clone pad9
  pad10.name = 10
  pad10.x -= 2.54
  pad10.y -= (4.9-3.38)

  pad12 = clone pad10
  pad12.name = 12
  pad12.x -= 10.11

  pads = [pad1, pad2, pad3, pad4, pad5, pad6, pad7, pad8, pad9, pad10, pad11, pad12]
 
  name = new Name 12

  docu = make_rect total_x, total_y, w, 'docu'
  silk = adjust_y (make_rect total_x, (total_y-3), w, 'silk'), -1.5

  combine [name,pads, holes, sols, docu, silk]
 