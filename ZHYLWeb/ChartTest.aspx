<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChartTest.aspx.cs" Inherits="ChartTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="container" style="min-width: 400px; height: 400px"></div>
        </div>
    </form>
    <script>
        $(function () {
            $(document).ready(function () {
                Highcharts.setOptions({
                    global: {
                        useUTC: false
                    }
                });
                $('#container').highcharts({
                    chart: {
                        type: 'spline',
                        animation: Highcharts.svg, // don't animate in old IE
                        marginRight: 10,
                        events: {
                            load: function () {
                                // set up the updating of the chart each second
                                var series = this.series[0];
                                setInterval(function () {
                                    var x = (new Date()).getDay(), // current time
                                        y = Math.random();
                                    series.addPoint([x, y], true, true);
                                }, 2000);
                            }
                        }
                    },
                    title: {
                        text: 'Live random data'
                    },
                    xAxis: {
                        type: 'datetime',
                        tickPixelInterval: 150
                    },
                    yAxis: {
                        title: {
                            text: 'Value'
                        },
                        plotLines: [{
                            value: 0,
                            width: 1,
                            color: '#808080'
                        }]
                    },
                    tooltip: {
                        formatter: function () {
                            return '<b>' + this.series.name + '</b><br/>' +
                                Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                                Highcharts.numberFormat(this.y, 2);
                        }
                    },
                    legend: {
                        enabled: false
                    },
                    exporting: {
                        enabled: false
                    },
                    series: [{
                        name: 'Random data',
                        data: (function () {
                            // generate an array of random data
                            var data = [],
                                time = (new Date()).getDay(),
                                i;
                            for (i = -19; i <= 0; i += 1) {
                                data.push({
                                    x: time + i * 1000,
                                    y: Math.random()
                                });
                            }
                            return data;
                        }())
                    }]
                });
            });
        });

    </script>
    <script type="text/javascript"  src="js/highcharts.js"></script>
    <script type="text/javascript"  src="js/jquery.min.js"></script>
    <script type="text/javascript"  src="js/exporting.js"></script>
    <%--<script src="http://cdn.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
    <script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
    <script src="http://cdn.hcharts.cn/highcharts/modules/exporting.js"></script>--%>
    
</body>
</html>
