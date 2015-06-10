
var helpers = new Helpers();
var jqPlot = helpers.jqPlot;
delete helpers;

var data = {
    title: "",
    xaxisLabel: "xaxisLabel",
    yaxisLabel: "yaxisLabel",
    legendLabel: [{ label: 'series1' }, { label: 'series2' }, { label: 'series3' }, { label: 'series4'}],
    seriesValues: [
                [["a", randomNum()], ["b", randomNum()], ["c", randomNum()], ["d", randomNum()]],
                [["a", randomNum()], ["b", randomNum()], ["c", randomNum()], ["d", randomNum()]],
                [["a", randomNum()], ["b", randomNum()], ["c", randomNum()], ["d", randomNum()]],
                [["a", randomNum()], ["b", randomNum()], ["c", randomNum()], ["d", randomNum()]]
            ]
};
jqPlot.drawChart("chart1", "bar", data);

var data = {
    title: "",
    xaxisLabel: "xaxisLabel",
    yaxisLabel: "yaxisLabel",
    legendLabel: [{ label: 'series1' }, { label: 'series2' }, { label: 'series3' }, { label: 'series4'}],
    trick: ['a', 'b', 'c', 'd'],
    seriesValues: [
                [randomNum(), randomNum(), randomNum(), randomNum()],
                [randomNum(), randomNum(), randomNum(), randomNum()],
                [randomNum(), randomNum(), randomNum(), randomNum()],
                [randomNum(), randomNum(), randomNum(), randomNum()]
            ]
};
jqPlot.drawChart("chart2", "stack", data);

var data = {
    title: "",
    xaxisLabel: "xaxisLabel",
    yaxisLabel: "yaxisLabel",
    legendLabel: [{ label: 'series1' }, { label: 'series2' }, { label: 'series3' }, { label: 'series4'}],
    seriesValues: [
                [["a", randomNum()], ["b", randomNum()], ["c", randomNum()], ["d", randomNum()], ["e", randomNum()], ["f", randomNum()], ["g", randomNum()], ["h", randomNum()], ["i", randomNum()], ["j", randomNum()], ["k", randomNum()], ["l", randomNum()], ["m", randomNum()], ["n", randomNum()], ["o", randomNum()]],
                [["a", randomNum()], ["b", randomNum()], ["c", randomNum()], ["d", randomNum()], ["e", randomNum()], ["f", randomNum()], ["g", randomNum()], ["h", randomNum()], ["i", randomNum()], ["j", randomNum()], ["k", randomNum()], ["l", randomNum()], ["m", randomNum()], ["n", randomNum()], ["o", randomNum()]],
                [["a", randomNum()], ["b", randomNum()], ["c", randomNum()], ["d", randomNum()], ["e", randomNum()], ["f", randomNum()], ["g", randomNum()], ["h", randomNum()], ["i", randomNum()], ["j", randomNum()], ["k", randomNum()], ["l", randomNum()], ["m", randomNum()], ["n", randomNum()], ["o", randomNum()]],
                [["a", randomNum()], ["b", randomNum()], ["c", randomNum()], ["d", randomNum()], ["e", randomNum()], ["f", randomNum()], ["g", randomNum()], ["h", randomNum()], ["i", randomNum()], ["j", randomNum()], ["k", randomNum()], ["l", randomNum()], ["m", randomNum()], ["n", randomNum()], ["o", randomNum()]]
            ]
};
jqPlot.drawChart("chart3", "line", data);

var data = {
    title: "",
    xaxisLabel: "xaxisLabel",
    yaxisLabel: "yaxisLabel",
    legendLabel: [{ label: 'series1' }, { label: 'series2' }, { label: 'series3' }, { label: 'series4'}],
    seriesValues: [
                [["a", randomNum()], ["b", randomNum()], ["c", randomNum()], ["d", randomNum()], ["e", randomNum()], ["f", randomNum()], ["g", randomNum()], ["h", randomNum()], ["i", randomNum()], ["j", randomNum()], ["k", randomNum()], ["l", randomNum()], ["m", randomNum()], ["n", randomNum()], ["o", randomNum()]],
                [["a", randomNum()], ["b", randomNum()], ["c", randomNum()], ["d", randomNum()], ["e", randomNum()], ["f", randomNum()], ["g", randomNum()], ["h", randomNum()], ["i", randomNum()], ["j", randomNum()], ["k", randomNum()], ["l", randomNum()], ["m", randomNum()], ["n", randomNum()], ["o", randomNum()]]
            ]
};
jqPlot.drawChart("chart4", "filled", data);

var data = {
    title: "",
    xaxisLabel: "xaxisLabel",
    yaxisLabel: "yaxisLabel",
    legendLabel: null,
    seriesValues: [[
                [11, 123, 1236, "Acura"],
                [45, 92, 1067, "Alfa Romeo"],
                [24, 104, 1176, "AM General"],
                [50, 23, 610, "Aston Martin Lagonda"],
                [18, 17, 539, "Audi"],
                [7, 89, 864, "BMW"],
                [2, 13, 1026, "Bugatti"]
            ]]
};
var plot = jqPlot.drawChart("chart5", "bubble", data);
for (var i = 0; i < data.seriesValues.length; i++) {
    for (var j = 0; j < data.seriesValues[i].length; j++) {
        $('#chart5Table > tbody').append('<tr><td>' + data.seriesValues[i][j][3] + '</td><td>' + data.seriesValues[i][j][2] + '</td></tr>');
    }
}
$('#chart5').bind('jqplotDataHighlight',
            function (ev, seriesIndex, pointIndex, data, radius) {
                var chart_left = $('#chart5').offset().left,
                chart_top = $('#chart5').offset().top,
                x = plot.axes.xaxis.u2p(data[0]),  // convert x axis unita to pixels
                y = plot.axes.yaxis.u2p(data[1]);  // convert y axis units to pixels

                $('#chart5Tooltip').css({ left: x + radius + 15, top: y });
                $('#chart5Tooltip').html('<span>' + data[3] + '</span><br/><span style="font-size:9px;">' + 'x: ' + data[0] + '</span><br/><span style="font-size:9px;">' + 'y: ' + data[1] + '</span><br/><span style="font-size:9px;">' + 'r: ' + data[2] + '</span>');
                $('#chart5Tooltip').show();

                $('#chart5Table > tbody > tr').css('background-color', '#FFF');
                $('#chart5Table > tbody > tr').eq(pointIndex).css('background-color', '#CCC');
            }
        );
$('#chart5').bind('jqplotDataUnhighlight',
            function (ev, seriesIndex, pointIndex, data) {
                $('#chart5Tooltip').empty();
                $('#chart5Tooltip').hide();
                $('#chart5Table > tbody > tr').css('background-color', '#FFF');
            }
        );

function randomNum() {
    var helpers = new Helpers();
    var utility = helpers.utility;
    delete helpers;
    return utility.randomNumber(1000, 10000);
}