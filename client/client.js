Template.body.events({
    'click #inputs-button': function () {
        $('#inputs').removeClass('hidden');
        $('#scene').css('opacity', '0.4');
    },
    'click #outputs-button': function () {
        $('#outputs').removeClass('hidden');
        $('#scene').css('opacity', '0.4');
        Chart.defaults.global.responsive = true;
        var ctx = document.getElementById("graphs-canvas").getContext("2d");
        var data = {
            labels: ["1", "2", "3", "4", "5", "6", "7"],
            datasets: [
                {
                    label: "My First dataset",
                    fillColor: "rgba(220,220,220,0.2)",
                    strokeColor: "rgba(220,220,220,1)",
                    pointColor: "rgba(220,220,220,1)",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(220,220,220,1)",
                    data: [65, 59, 80, 81, 56, 55, 40]
                },
                {
                    label: "My Second dataset",
                    fillColor: "rgba(151,187,205,0.2)",
                    strokeColor: "rgba(151,187,205,1)",
                    pointColor: "rgba(151,187,205,1)",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(151,187,205,1)",
                    data: [28, 48, 40, 19, 86, 27, 90]
                }
            ]
        };

        var myLineChart = new Chart(ctx).Line(data);

    },
    'click #close-input-button': function () {
        $('#inputs').addClass('hidden');
        $('#scene').css('opacity', '1');
    },
    'click #close-output-button': function () {
        $('#outputs').addClass('hidden');
        $('#scene').css('opacity', '1');
    }
});
