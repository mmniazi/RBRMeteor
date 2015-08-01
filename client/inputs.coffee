Template.body.events
  'click #inputs-button': ->
    $('#inputs').removeClass 'hidden'
    $('#scene').css 'opacity', '0.4'
  'click #close-input-button': ->
    $('#inputs').addClass 'hidden'
    $('#scene').css 'opacity', '1'

Template.inputs.events = ->

Template.body.rendered = ->
  IxSlider = $('#IxSlider')[0]
  noUiSlider.create IxSlider,
    start: 1
    range:
      'min': 0
      'max': 1
    step: 0.01
    connect: 'lower'
    pips:
      mode: 'count'
      values: 5
      density: 4
      format: wNumb(decimals: 2)
  IySlider = $('#IySlider')[0]
  noUiSlider.create IySlider,
    start: 1
    range:
      'min': 0
      'max': 1
    step: 0.01
    connect: 'lower'
    pips:
      mode: 'count'
      values: 5
      density: 4
      format: wNumb(decimals: 2)
  IzSlider = $('#IzSlider')[0]
  noUiSlider.create IzSlider,
    start: 1
    range:
      'min': 0
      'max': 1
    step: 0.01
    connect: 'lower'
    pips:
      mode: 'count'
      values: 5
      density: 4
      format: wNumb(decimals: 2)
  wxSlider = $('#wxSlider')[0]
  noUiSlider.create wxSlider,
    start: 1
    range:
      'min': 0
      'max': 1
    step: 0.01
    connect: 'lower'
    pips:
      mode: 'count'
      values: 5
      density: 4
      format: wNumb(decimals: 2)
  wySlider = $('#wySlider')[0]
  noUiSlider.create wySlider,
    start: 1
    range:
      'min': 0
      'max': 1
    step: 0.01
    connect: 'lower'
    pips:
      mode: 'count'
      values: 5
      density: 4
      format: wNumb(decimals: 2)
  wzSlider = $('#wzSlider')[0]
  noUiSlider.create wzSlider,
    start: 1
    range:
      'min': 0
      'max': 1
    step: 0.01
    connect: 'lower'
    pips:
      mode: 'count'
      values: 5
      density: 4
      format: wNumb(decimals: 2)
  mxSlider = $('#mxSlider')[0]
  noUiSlider.create mxSlider,
    start: 1
    range:
      'min': 0
      'max': 1
    step: 0.01
    connect: 'lower'
    pips:
      mode: 'count'
      values: 5
      density: 4
      format: wNumb(decimals: 2)
  mySlider = $('#mySlider')[0]
  noUiSlider.create mySlider,
    start: 1
    range:
      'min': 0
      'max': 1
    step: 0.01
    connect: 'lower'
    pips:
      mode: 'count'
      values: 5
      density: 4
      format: wNumb(decimals: 2)
  mzSlider = $('#mzSlider')[0]
  noUiSlider.create mzSlider,
    start: 1
    range:
      'min': 0
      'max': 1
    step: 0.01
    connect: 'lower'
    pips:
      mode: 'count'
      values: 5
      density: 4
      format: wNumb(decimals: 2)
  tSlider = $('#tSlider')[0]
  noUiSlider.create tSlider,
    start: 60
    range:
      'min': 1
      'max': 100
    step: 1
    connect: 'lower'
    pips:
      mode: 'count'
      values: 5
      density: 4
  dtSlider = $('#dtSlider')[0]
  noUiSlider.create dtSlider,
    start: 0.1
    range:
      'min': 0
      'max': 1
    step: 0.01
    connect: 'lower'
    pips:
      mode: 'count'
      values: 5
      density: 4
      format: wNumb(decimals: 2)


