#format 1.2
#name BOURNS-SRN4018-INDUCTOR
#id 86c874d6f865472ea3c43a763700e24f
#parent e132e1318ef24ac393a217ce31a25f1e
#desc Bourns SRN4018 4x4 shielded power inductor	

footprint = () ->
  smd = new Smd
  smd.dx = 1.5
  smd.dy = 3.6
  l = rot_single [smd], 2, 4.55-1.5

  name = new Name 3
  value = new Value -3

  silk = make_rect 4+smd.dx/2, 4, 0.1, 'silk'
  
  combine [name ,value, l, silk]