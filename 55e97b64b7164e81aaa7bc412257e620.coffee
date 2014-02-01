#format 1.2
#name OSRAM_DURIS_E3
#id 55e97b64b7164e81aaa7bc412257e620
#parent de6c04e16cb54a308f1ca5fa0de9c460
#desc OSRAM DURIS E3

footprint = () ->
  smd = new Smd
  smd.dx = 1.1
  smd.dy = 1.2
  between = 2*1.35
  l = rot_single [smd], 2, between

  name = new Name 1.4
  value = new Value -1.4

  silk = make_rect between+smd.dx+0.2, smd.dy+0.2, 0.1, 'silk'

  marker = new Line 0.4
  marker.x1 = (between+smd.dx)/2+0.4
  marker.x2 = marker.x1
  marker.y1 = -smd.dy/2+0.1
  marker.y2 = smd.dy/2-0.1

  combine [name ,value, l, silk, marker]