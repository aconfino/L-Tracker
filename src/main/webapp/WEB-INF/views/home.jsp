<%@ include file="include/header.jsp"%>
<body>
<h1>
	Hello tracker!  
</h1>
<P>Create graphs in real time with L-Tracker.</P>
<form:form action="generateReport.html" commandName="superKickingEnterprizyMapper" >
	<tracker:targetSlider name="weather" label="Weather Report"/>				
	<tracker:targetSlider name="maintanence" label="Maintanence"/>
	<tracker:targetSlider name="grilling" label="Grilling"/>
	<tracker:targetSlider name="sports" label="Sports updates"/>
	<tracker:targetSlider name="beer" label="Beer discussions"/>
	<tracker:targetSlider name="sickLeave" label="Sick Leave"/>
	<tracker:targetSlider name="casualStroll" label="Casual Stroll"/>
	<tracker:targetSlider name="bathroom" label="Bathroom breaks"/>
	<tracker:targetSlider name="development" label="Development"/>
	<input type="submit" name="submit" value="Submit" />				
</form:form>

</body>
</html>
