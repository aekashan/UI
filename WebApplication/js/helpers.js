
/*  Using OOP to develop a JavaScript control class library. by Natz  */

function Helpers() {

    this.jqPlot = new jqPlot;
    this.utility = new utility;
    this.validatorFormat = new validatorFormat;
    this.validatorChars = new validatorChars;
    this.validatorValue = new validatorValue;

    function jqPlot() {

        this.drawChart = drawChart;

        function drawChart(chartName, chartType, chartData) {

            var title = data.title;
            var xaxisLabel = data.xaxisLabel;
            var yaxisLabel = data.yaxisLabel;
            var ticksValues = data.trick;
            var seriesLabels = data.seriesLabels;
            var seriesValues = data.seriesValues;
            if (chartType !== "stack") {
                for (var i = 0; i < seriesValues.length; i++) {
                    for (var j = 0; j < seriesValues[i].length; j++) {
                        var temp = seriesValues[i][j][0];
                        seriesValues[i][j][0] = (parseFloat(temp)) ? parseFloat(temp) : temp;
                        delete temp;
                        var temp = seriesValues[i][j][1];
                        seriesValues[i][j][1] = (parseFloat(temp)) ? parseFloat(temp) : temp;
                        delete temp;

                    }
                }
            }
            else {
                for (var i = 0; i < seriesValues.length; i++) {
                    for (var j = 0; j < seriesValues[i].length; j++) {
                        var temp = seriesValues[i][j];
                        seriesValues[i][j] = (parseFloat(temp)) ? parseFloat(temp) : temp;
                        delete temp;
                    }
                }
            }

            var defultOptions = {
                title: title,
                stackSeries: false,
                animate: true,
                animateReplot: true,
                animation: {
                    duration: 1
                },
                axesDefaults: {
                    labelRenderer: $.jqplot.CanvasAxisLabelRenderer,
                    tickRenderer: $.jqplot.CanvasAxisTickRenderer,
                    tickOptions: {
                        angle: 0
                    }
                },
                axes: {
                    xaxis: {
                        label: xaxisLabel,
                        tickOptions: {
                            angle: 0,
                            formatString: "%'d"
                        }
                    },
                    yaxis: {
                        label: yaxisLabel,
                        labelRenderer: $.jqplot.CanvasAxisLabelRenderer,
                        tickRenderer: $.jqplot.CanvasAxisTickRenderer,
                        tickOptions: {
                            angle: 0,
                            formatString: "%'d"
                        }
                    },
                    x2axis: {},
                    y2axis: {}
                },
                cursor: {},
                dragable: {},
                highlighter: {},
                grid: {
                    drawBorder: false,
                    drawGridLines: true,
                    gridLineColor: '#F3F3F3',
                    background: '#F8F9FA',
                    borderColor: '#DDDDDD',
                    borderWidth: 1,
                    shadow: false
                },
                legend: {
                    show: true,
                    location: 's',
                    placement: 'outsideGrid',
                    renderer: $.jqplot.EnhancedLegendRenderer,
                    rendererOptions: {
                        numberRows: 1
                    },
                    rowSpacing: 10
                },
                series: [{
                    lineWidth: 0.5
                }],
                series: seriesLabels,
                seriesColors: ["#6BCCB4", "#63D3E9", "#FFD66A", "#ED5466", "#AC92ED", "#CCCCCC", "#7CA951", "#446CB3", "#FCBF1A", "#DD1E32", "#8F44AD", "#666666"],
                seriesDefaults: {
                    lineWidth: 2,
                    pointLabels: {
                        show: true,
                        location: 'n',
                        edgeTolerance: 0
                    },
                    markerOptions: {
                        size: 6,
                        style: 'circle'
                    },
                    rendererOptions: {
                        animation: {
                            speed: 1400
                        }
                    },
                    showDataLabels: true
                }
            };
            var myOptions = $.extend(true, {}, defultOptions);
            var type = "bar,filled,line,stack,bubble,donut,pie,meter";
            if (type.indexOf(chartType) > -1) {
                switch (chartType) {
                    case 'bar':
                        {
                            myOptions.stackSeries = false;
                            myOptions.cursor.show = true;
                            myOptions.cursor.followMouse = false;
                            myOptions.highlighter.show = false;
                            myOptions.seriesDefaults.renderer = $.jqplot.BarRenderer;
                            myOptions.axes.xaxis.labelRenderer = $.jqplot.CanvasAxisLabelRenderer;
                            myOptions.axes.xaxis.renderer = $.jqplot.CategoryAxisRenderer;
                            myOptions.axes.xaxis.tickRenderer = $.jqplot.CanvasAxisTickRenderer;
                            myOptions.axes.xaxis.tickOptions.formatString = "%'d";
                            myOptions.highlighter.tooltipContentEditor = drawChartTooltip;
                        } break;
                    case 'stack':
                        {
                            myOptions.stackSeries = true;
                            myOptions.cursor.show = true;
                            myOptions.cursor.followMouse = false;
                            myOptions.highlighter.show = false;
                            myOptions.seriesDefaults.renderer = $.jqplot.BarRenderer;
                            myOptions.axes.xaxis.labelRenderer = $.jqplot.CanvasAxisLabelRenderer;
                            myOptions.axes.xaxis.renderer = $.jqplot.CategoryAxisRenderer;
                            myOptions.axes.xaxis.tickRenderer = $.jqplot.CanvasAxisTickRenderer;
                            myOptions.axes.xaxis.tickOptions.formatString = "%'d";
                            myOptions.axes.xaxis.ticks = ticksValues;
                            myOptions.highlighter.tooltipContentEditor = drawChartTooltip;
                        } break;
                    case 'line':
                        {
                            myOptions.highlighter.show = true;
                            myOptions.axes.xaxis.labelRenderer = $.jqplot.CanvasAxisLabelRenderer;
                            myOptions.axes.xaxis.renderer = $.jqplot.CategoryAxisRenderer;
                            myOptions.axes.xaxis.tickRenderer = $.jqplot.CanvasAxisTickRenderer;
                            myOptions.axes.xaxis.tickOptions.formatString = "%'d";
                            myOptions.highlighter.tooltipContentEditor = drawChartTooltip;
                        } break;
                    case 'filled':
                        {
                            myOptions.seriesDefaults.fill = true;
                            myOptions.seriesDefaults.fillAndStroke = true;
                            myOptions.seriesDefaults.fillAlpha = 0.4;
                            myOptions.seriesDefaults.shadow = false;
                            myOptions.highlighter.show = true;
                            myOptions.axes.xaxis.labelRenderer = $.jqplot.CanvasAxisLabelRenderer;
                            myOptions.axes.xaxis.renderer = $.jqplot.CategoryAxisRenderer;
                            myOptions.axes.xaxis.tickRenderer = $.jqplot.CanvasAxisTickRenderer;
                            myOptions.axes.xaxis.tickOptions.formatString = "%'d";
                            myOptions.highlighter.tooltipContentEditor = drawChartTooltip;
                        } break;
                    case 'bubble':
                        {
                            myOptions.seriesDefaults.renderer = $.jqplot.BubbleRenderer;
                            myOptions.seriesDefaults.rendererOptions.bubbleAlpha = 0.6;
                            myOptions.seriesDefaults.rendererOptions.highlightAlpha = 0.6;
                            myOptions.seriesDefaults.shadow = true;
                            myOptions.seriesDefaults.shadowAlpha = 0.04;
                        } break;
                    case 'pie':
                        {
                            myOptions.seriesDefaults.renderer = $.jqplot.PieRenderer;
                            myOptions.seriesDefaults.rendererOptions.sliceMargin = 3;
                            myOptions.seriesDefaults.rendererOptions.showDataLabels = true;
                        } break;
                    case 'meter':
                        {
                            myOptions.seriesDefaults.renderer = $.jqplot.MeterGaugeRenderer;
                            myOptions.seriesDefaults.rendererOptions.label = "Metric Tons per Year";
                            myOptions.seriesDefaults.rendererOptions.labelPosition = "bottom";
                            myOptions.seriesDefaults.rendererOptions.labelHeightAdjust = -5;
                            myOptions.seriesDefaults.rendererOptions.intervalOuterRadius = 85;
                            myOptions.seriesDefaults.rendererOptions.ticks = ticks;
                            myOptions.seriesDefaults.rendererOptions.intervals = intervals;
                            myOptions.seriesDefaults.rendererOptions.intervalColors = ["#6BCCB4", "#FFD66A", "#ED5466"];
                            myOptions.seriesDefaults.rendererOptions.background = "#FFFFFF";
                            myOptions.seriesDefaults.rendererOptions.smooth = true;
                            myOptions.seriesDefaults.rendererOptions.animation.show = true;
                        } break;
                }
            }
            else {
                alert("Chart Type Not Supported: " + chartType);
            }

            var plot = $.jqplot(chartName, seriesValues, myOptions);
            return plot;
        }

        function drawChartTooltip(str, seriesIndex, pointIndex, plot) {
            return plot.series[seriesIndex]["label"] + " of " + plot.data[seriesIndex][pointIndex];
        }

    }

    function utility() {

        this.ageCalculators = ageCalculators;
        this.datediff = datediff;
        this.dateTimeNow = dateTimeNow;
        this.dateFormat = dateFormat;
        this.dayFormat = dayFormat;
        this.monthFormat = monthFormat;
        this.yearFormat = yearFormat;
        this.mergeTableCells = mergeTableCells;
        this.randomNumber = randomNumber;
        this.scrollTo = scrollTo;
        this.uniqueItems = uniqueItems;
        this.urlParamsVars = urlParamsVars;
        this.webMethod = webMethod;

        function ageCalculators(birthday) {
            var result = {};

            var from = birthday.split(/\/|-/g);
            var cal = new Date(from[2], from[1] - 1, from[0]);
            var cur = new Date();

            var curday = cur.getDate();
            var curmon = cur.getMonth();
            var curyear = cur.getFullYear();

            var calday = cal.getDate();
            var calmon = cal.getMonth();
            var calyear = cal.getFullYear();

            if (parseFloat(calyear) > parseFloat(curyear)) {
                alert("Enter Your date of birth year less than current year");
            }
            else if (parseFloat(calyear) == parseFloat(curyear) && parseFloat(calmon) > parseFloat(curmon)) {
                alert("Enter Your date of birth month less than current month");
            }
            else if (parseFloat(calyear) == parseFloat(curyear) && parseFloat(calmon) == parseFloat(curmon) && parseFloat(calday) > parseFloat(curday)) {
                alert("Enter Your date of birth date less than current date");
            }
            else {
                var curd = new Date(curyear, curmon - 1, curday);
                var cald = new Date(calyear, calmon - 1, calday);

                if (cald.getMonth() != (calmon - 1)) {
                    alert("Invalid Date");
                }
                else if (curd.getMonth() != (curmon - 1)) {
                    alert("Invalid Date");
                }
                else {
                    var diff = Date.UTC(curyear, curmon - 1, curday, 0, 0, 0) - Date.UTC(calyear, calmon - 1, calday, 0, 0, 0);
                    var dife = Datediff(cald, curd);
                    var days = dife.days;
                    var months = dife.months;
                    var years = dife.years;

                    var secleft = diff / 1000 / 60;     //minutes since your birth - Approximate
                    var hrsleft = secleft / 60;         //hours since your birth - Approximate
                    var daysleft = hrsleft / 24;        //days since your birth 

                    var as = parseInt(calyear) + dife.years + 1;
                    var diff = Date.UTC(as, calmon - 1, calday, 0, 0, 0) - Date.UTC(curyear, curmon - 1, curday, 0, 0, 0);
                    var datee = diff / 1000 / 60 / 60 / 24; //days left for your next birthday

                    result = {
                        days: days,
                        months: months,
                        years: years,
                        secleft: secleft,
                        hrsleft: hrsleft,
                        daysleft: daysleft,
                        datee: datee
                    };
                }
            }

            return result;
        }

        function datediff(dateFrom, dateTo) {
            var from = {
                d: dateFrom.getDate(),
                m: dateFrom.getMonth(),
                y: dateFrom.getFullYear()
            };

            var to = {
                d: dateTo.getDate(),
                m: dateTo.getMonth(),
                y: dateTo.getFullYear()
            };

            var daysFebruary = to.y % 4 != 0 || (to.y % 100 == 0 && to.y % 400 != 0) ? 28 : 29;
            var daysInMonths = [0, 31, daysFebruary, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

            if (to.d < from.d) {
                to.d += daysInMonths[parseInt(to.m)];
                from.m += 1;
            }
            if (to.m < from.m) {
                to.m += 12;
                from.y += 1;
            }

            return {
                days: to.d - from.d,
                months: to.m - from.m,
                years: to.y - from.y
            };
        }

        function dateTimeNow() {
            var d = new Date();
            var month = d.getMonth() + 1;
            var day = d.getDate();
            var hour = d.getHours();
            var minute = d.getMinutes();
            var second = d.getSeconds();
            var output =
            (('' + day).length < 2 ? '0' : '') + day + '-' +
            (('' + month).length < 2 ? '0' : '') + month + '-' +
            d.getFullYear() + ' ' +
            (('' + hour).length < 2 ? '0' : '') + hour + ':' +
            (('' + minute).length < 2 ? '0' : '') + minute + ':' +
            (('' + second).length < 2 ? '0' : '') + second;
            return output;
        }

        function dateFormat(dateString) {
            var date = "";
            if (typeof (val) === "undefined") {
                date = "-";
            }
            else {
                var currentTime = new Date(parseInt(dateString.substr(6)));
                var month = currentTime.getMonth() + 1;
                var day = currentTime.getDate();
                var year = currentTime.getFullYear();
                var date = day + "/" + month + "/" + year;
            }
            return date;
        }

        function dayFormat(dateString) {
            var currentTime = new Date(parseInt(dateString.substr(6)));
            var day = currentTime.getDate();
            return day;
        }

        function monthFormat(dateString) {
            var currentTime = new Date(parseInt(dateString.substr(6)));
            var month = currentTime.getMonth() + 1;
            return month;
        }

        function yearFormat(dateString) {
            var currentTime = new Date(parseInt(dateString.substr(6)));
            var year = currentTime.getFullYear();
            return year;
        }

        function mergeTableCells(table, column) {

            var dimension_cells = new Array();
            var dimension_col = column + 1;

            var i = 1;
            $(table).find('th').each(function () {
                i++;
            });
            var first_instance = null;
            var rowspan = 1;
            $(table).find('tbody > tr').each(function () {
                var dimension_td = $(this).find('td:eq(' + column + '):nth-child(' + dimension_col + ')');
                if (first_instance == null) {
                    first_instance = dimension_td;
                } else if (dimension_td.value() == first_instance.value()) {
                    dimension_td.remove();
                    ++rowspan;
                    first_instance.attr('rowspan', rowspan);
                } else {
                    first_instance = dimension_td;
                    rowspan = 1;
                }
            });
        }

        function randomNumber(min, max) {
            var random = Math.floor(Math.random() * (max - min + 1)) + min;
            return random;
        }

        function scrollTo(elem) {
            $('html, body').animate({ scrollTop: elem.offset().top - 40 }, 1200);
        }

        function uniqueItems(arr) {
            var UniqueList = [];
            $.each(arr, function (i, el) {
                if ($.inArray(el, UniqueList) === -1) UniqueList.push(el);
            });
            return UniqueList.sort();
        }

        function urlExists(url) {
            var http = new XMLHttpRequest();
            http.open('HEAD', url, false);
            http.send();
            return http.status != 404;
        }

        function urlParamsVars(name) {
            var vars = [], hash;
            var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < hashes.length; i++) {
                hash = hashes[i].split('=');
                vars.push(hash[0]);
                vars[hash[0]] = hash[1];
            }
            return vars;
            //function would return you the following array
            //{
            //    "username" : "Joe%20Bloggs",
            //    "company" : "Super%20Internet%20Company"
            //}
            //get the values of the individual parameters using
            //var userName = URLParamsVars()["username"];
            //var companyName = URLParamsVars()["company"];
        }

        function webMethod(url, data) {
            var _tmp;
            $.ajax({
                async: false
                , type: 'POST'
                , url: url
                , contentType: 'application/json; charset=utf-8'
                , dataType: 'json'
                , data: "{data:'" + JSON.stringify(data).replace(/'/g, "\\'\\'") + "'}"
                , success: function (response) {
                    _tmp = response.d
                }
                , error: function (xhr, status, msg) {
                    var error = eval("(" + xhr.responseText + ")");
                    console.log(error.Message);
                    _tmp = null
                }
            });
            return _tmp;
        }
    }

    function validatorChars() {

        this.isDecimal = isDecimal;
        this.isNumber = isNumber;
        this.isEnglish = isEnglish;
        this.isEnglishNumber = isEnglishNumber;
        this.isEnglishNumberSing = isEnglishNumberSing;
        this.isThai = isThai;
        this.isThaiNumber = isThaiNumber;
        this.isThaiNumberSing = isThaiNumberSing;

        function isDecimal(elem, event) {
            var val = elem.value.replace(/^\s*(\+|-)?[^0-9]/g, "");
            if (((event.which != 45 && event.which != 46) || val.indexOf('.') != -1)
            && (event.which < 48 || event.which > 57)
            && (event.ctrlKey != true && event.which != 99)
            && (event.ctrlKey != true && event.which != 118)
            && (event.ctrlKey != true && event.which != 120)) {
                if (($.inArray(event.keyCode, [46, 8, 9, 27, 13]) !== -1 || (event.keyCode >= 35 && event.keyCode <= 39)) != true) {
                    event.preventDefault();
                }
            }
            else {
                if (event.which == 45 && elem.value.length != 0) {
                    event.preventDefault();
                }
                if (val.indexOf('.') != -1 && GetValueAfterDecimalPoint(val).length > 1) {
                    event.preventDefault();
                }
            }
        }

        function isNumber(elem, event) {

            if (!event) var event = window.event;
            var key = event.keyCode ? event.keyCode : event.which;

            if (!(key >= 48 && key < 58 || key == 8 || key == 9 || key == 0 || key == undefined))
                event.preventDefault();
        }

        function isEnglish(elem, event) {

            if (!event) var event = window.event;
            var key = event.keyCode ? event.keyCode : event.which;

            if (!((key > 64 && key < 91) || (key > 96 && key < 123) || key == 32 || key == 8 || key == 9 || key == 46 || (key >= 35 && key <= 40) || (key >= 112 && key <= 123) || key == 3653 || key == undefined))
                event.preventDefault();
        }

        function isEnglishNumber(elem, event) {

            if (!event) var event = window.event;
            var key = event.keyCode ? event.keyCode : event.which;

            if (!(((key > 64 && key < 91) || (key > 96 && key < 123)) || (key > 47 && key < 58) || key == 45 || key == 46 || key == 64 || key == 95 || key == 32 || key == 8 || key == 9 || (key >= 35 && key <= 40) || (key >= 112 && key <= 123) || key == 3653 || key == undefined))
                event.preventDefault();
        }

        function isEnglishNumberSing(elem, event) {

            if (!event) var event = window.event;
            var key = event.keyCode ? event.keyCode : event.which;

            if (!(((key > 64 && key < 91) || (key > 96 && key < 123)) || (key > 47 && key < 58) || key == 45 || key == 46 || key == 47 || key == 64 || key == 95 || key == 32 || key == 8 || key == 9 || key == 0 || (key >= 35 && key <= 40) || (key >= 112 && key <= 123) || key == 3653 || key == undefined))
                event.preventDefault();
        }

        function isThai(elem, event) {

            if (!event) var event = window.event;
            var key = event.keyCode ? event.keyCode : event.which;

            if (!((key >= 3585) || (key == 32) || key == 8 || key == 9 || key == 0 || key == undefined))
                event.preventDefault();
        }

        function isThaiNumber(elem, event) {

            if (!event) var event = window.event;
            var key = event.keyCode ? event.keyCode : event.which;

            if (!((key >= 3585) || (key == 32) || (key >= 48 && key < 58) || (key == 32) || key == 8 || key == 9 || key == 0 || key == undefined))
                event.preventDefault();
        }

        function isThaiNumberSing(elem, event) {

            if (!event) var event = window.event;
            var key = event.keyCode ? event.keyCode : event.which;

            if (!((key >= 3585) || (key == 32) || (key >= 48 && key < 58) || (key == 32) || key == 8 || key == 9 || key == 0 || (key >= 35 && key <= 40) || (key >= 112 && key <= 123) || key == 3653 || key == undefined))
                event.preventDefault();
        }

    }

    function validatorFormat() {

        this.isColorRGB = isColorRGB;
        this.isColorHex = isColorHex;
        this.isColorHexaDecimal = isColorHexaDecimal;
        this.isDomain = isDomain;
        this.isEmpty = isEmpty;
        this.isEmail = isEmail;
        this.isIDCard = isIDCard;
        this.isImages = isImages;
        this.isMaxLength = isMaxLength;
        this.isMobile = isMobile;
        this.isVehicleNumber = isVehicleNumber;

        function isColorRGB(value) {
            var data = $.trim(value);
            var regex = /^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/;

            return regex.test(data);
        }

        function isColorHex(value) {
            var data = $.trim(value);
            var regex = /^#?([a-f0-9]{6}|[a-f0-9]{3})$/;

            return regex.test(data);
        }

        function isColorHexaDecimal(value) {
            var data = $.trim(value);
            var regex = /(#?([A-Fa-f0-9]){3}(([A-Fa-f0-9]){3})?)/gm;

            return regex.test(data);
        }

        function isDomain(value, type) {
            var data = $.trim(value);
            var regex = /\S+/; // non-empty
            switch (type) {
                case "http": // match domain name (with HTTP)
                    regex = /(.*?)[^w{3}\.]([a-zA-Z0-9]([a-zA-Z0-9\-]{0,65}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,6}/igm;
                case "www": // match domain name (www. only)
                    regex = /[^w{3}\.]([a-zA-Z0-9]([a-zA-Z0-9\-]{0,65}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,6}/igm;
                case "alternative": // match domain name (alternative)
                    regex = /(.*?)\.(com|net|org|info|coop|int|com\.au|co\.uk|org\.uk|ac\.uk|)/igm;
                case "sub": // match sub domains: www, dev, int, stage, int.travel, stage.travel
                    regex = /(http:\/\/|https:\/\/)?(www\.|dev\.)?(int\.|stage\.)?(travel\.)?(.*)+?/igm;
            }

            return regex.test(value);
        }

        function isEmpty(value) {
            var data = $.trim(value);
            var rex = /\S+/;

            return regex.test(data);
        }

        function isEmail(value) {
            var data = $.trim(value);
            var regex = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

            return regex.test(data);
        }

        function isIDCard(value) {
            var data = $.trim(value);
            if (data.length != 13) {
                return false;
            }
            else {
                for (i = 0, sum = 0; i < 12; i++) {
                    sum += parseFloat(id.charAt(i)) * (13 - i);
                }
                if ((11 - sum % 11) % 10 != parseFloat(id.charAt(12))) {
                    return false;
                }
                else {
                    return true;
                }
            }
        }

        function isImages(value) {
            var data = $.trim(value);
            var regex = /([^\s]+(?=\.(jpg|gif|png))\.\2)/gm;

            return regex.test(data);
        }

        function isMaxLength(value, minLength, maxLength) {
            var data = $.trim(value).length;
            return ((data >= minLength) && (data <= maxLength)) ? true : false;
        }

        function isMobile(value) {
            var data = $.trim(value);
            var regex = /^(08|09)[0-9]{8}$/;
            return regex.test(data);
        }

        function isVehicleNumber(value) {
            var data = $.trim(value);
            var regex = (/^[1-9]{1}[ก-ฮ]{2}(([1-9]{1}[0-9]{0,3})|([1-9]{1}[0-9]{0,3})|( {1}[1-9]{1}[0-9]{0,3}))$/) | (/^[ก-ฮ]{2}(([1-9]{1}[0-9]{0,3})|([1-9]{1}[0-9]{0,3})|( {1}[1-9]{1}[0-9]{0,3}))$/);
            return regex.test(data);
        }

    }

    function validatorValue() {

        this.isInt = isInt;
        this.isFloat = isFloat;
        this.isNumber = isNumber;

        function isInt(value) {
            return ((typeof value === 'number') && (value % 1 === 0));
        }

        function isFloat(value) {
            return ((typeof value === 'number') && (value % 1 !== 0));
        }

        function isNumber(value) {
            return (typeof value === 'number');
        }

    }

}