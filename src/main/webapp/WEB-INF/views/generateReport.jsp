<%@ include file="include/header.jsp"%>
<body>
<h1>
	L-Tracker as of ${date}:
</h1>

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

<div id='gauge_div'></div>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Time'],
          ['Beer', ${superKickingEnterprizyMapper.beer}],
          ['Weather', ${superKickingEnterprizyMapper.weather}],
          ['Grilling', ${superKickingEnterprizyMapper.grilling}],
          ['Sports', ${superKickingEnterprizyMapper.sports}],
          ['Sick Leave', ${superKickingEnterprizyMapper.sickLeave}],
          ['Casual Stroll', ${superKickingEnterprizyMapper.casualStroll}],
          ['Bathroom', ${superKickingEnterprizyMapper.bathroom}],
          ['Development', ${superKickingEnterprizyMapper.development}],
          ['Maintanence', ${superKickingEnterprizyMapper.maintanence}]
        ]);

        var options = {
          title: 'Task Breakdown',
          vAxis: {title: 'Task',  titleTextStyle: {color: 'red'}}
        };

        var chart = new google.visualization.BarChart(document.getElementById('bar_div'));
        chart.draw(data, options);
      }
    </script>
    <div id="bar_div" style="width: 1200px; height: 500px;"></div>

</body>
</html>
