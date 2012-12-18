<%@ include file="include/header.jsp"%>
<body>
<h3 style="padding: 5px;">
	L-Tracker as of ${date}:
</h3>
<a href="/" style="padding: 5px;">Return home</a>
<script type='text/javascript' src='https://www.google.com/jsapi'></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {packages:['gauge']});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Label', 'Value'],
          ['Sick Leave', ${superKickingEnterprizyMapper.sickLeave}],
          ['Casual Stroll', ${superKickingEnterprizyMapper.casualStroll}],
          ['Bathroom', ${superKickingEnterprizyMapper.bathroom}],
          ['Development', ${superKickingEnterprizyMapper.development}],
          ['Maintanence', ${superKickingEnterprizyMapper.maintanence}]
        ]);

        var options = {
          width: 1200, height: 200,
          redFrom: 90, redTo: 100,
          yellowFrom:75, yellowTo: 90,
          minorTicks: 5
        };

        var chart = new google.visualization.Gauge(document.getElementById('gauge_div'));
        chart.draw(data, options);
      }
</script>
<script type='text/javascript' src='https://www.google.com/jsapi'></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {packages:['gauge']});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Label', 'Value'],
          ['Beer', ${superKickingEnterprizyMapper.beer}],
          ['Weather', ${superKickingEnterprizyMapper.weather}],
          ['Grilling', ${superKickingEnterprizyMapper.grilling}],
          ['Sports', ${superKickingEnterprizyMapper.sports}],
        ]);

        var options = {
          width: 1200, height: 200,
          redFrom: 90, redTo: 100,
          yellowFrom:75, yellowTo: 90,
          minorTicks: 5
        };

        var chart = new google.visualization.Gauge(document.getElementById('gauge_div2'));
        chart.draw(data, options);
      }
</script>

<div id='gauge_div'></div>
<div id='gauge_div2'></div>


</body>
</html>
