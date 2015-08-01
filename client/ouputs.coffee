Template.outputs.events
  'click #outputs-button': ->
    $('#outputs').removeClass 'hidden'
    $('#scene').css 'opacity', '0.4'
    Chart.defaults.global.responsive = true
    ctx = document.getElementById('graphs-canvas').getContext('2d')
    data =
      labels: [
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
      ]
      datasets: [
        {
          label: 'My First dataset'
          fillColor: 'rgba(220,220,220,0.2)'
          strokeColor: 'rgba(220,220,220,1)'
          pointColor: 'rgba(220,220,220,1)'
          pointStrokeColor: '#fff'
          pointHighlightFill: '#fff'
          pointHighlightStroke: 'rgba(220,220,220,1)'
          data: [
            65
            59
            80
            81
            56
            55
            40
          ]
        }
        {
          label: 'My Second dataset'
          fillColor: 'rgba(151,187,205,0.2)'
          strokeColor: 'rgba(151,187,205,1)'
          pointColor: 'rgba(151,187,205,1)'
          pointStrokeColor: '#fff'
          pointHighlightFill: '#fff'
          pointHighlightStroke: 'rgba(151,187,205,1)'
          data: [
            28
            48
            40
            19
            86
            27
            90
          ]
        }
      ]
    myLineChart = new Chart(ctx).Line(data)

  'click #close-output-button': ->
    $('#outputs').addClass 'hidden'
    $('#scene').css 'opacity', '1'
