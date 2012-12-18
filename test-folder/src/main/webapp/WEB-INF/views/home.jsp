<%@ include file="include/header.jsp" %>


<body>
    <div id="container">
   		<section id="intro">
   			<img src="/resources/images/banner1.png" width="960" height="300" alt="baner">
   		</section>
   <div class="holder_content1">
   <section class="group4">
   		<h1>Latest news</h1>
   		<img src="/resources/images/icon3.png" width="51" height="52" alt="icons" class="icons"/>
   		<article>
   		<h2>05.18.2012  -  Taking productivity to new depths</h2>
   			<p>L-Tracker will not only change your business - it WILL change your life.  Some 
   			businesses still think that developers are paid to just code.  Our product recognizes
   			that times are changing and developers do everything from grilling to plumbing to weather tracking.
   			Finally - a product lets you track their tasks accordingly.</p>
   		</article> 
 <div style="background-color:white; align:center;">
 <h2>Adjust each slider to reflect what task is currently being done:</h2>
 <form:form action="submitTracker.html" commandName="superKickingEnterprizyMapper" >
	<tracker:targetSlider name="weather" label="Weather Report" value="${superKickingEnterprizyMapper.weather}" />				
	<tracker:targetSlider name="maintanence" label="Maintanence" value="${superKickingEnterprizyMapper.maintanence}" />
	<tracker:targetSlider name="grilling" label="Grilling" value="${superKickingEnterprizyMapper.grilling}" />
	<tracker:targetSlider name="sports" label="Sports updates" value="${superKickingEnterprizyMapper.sports}" />
	<tracker:targetSlider name="beer" label="Beer discussions" value="${superKickingEnterprizyMapper.beer}" />
	<tracker:targetSlider name="sickLeave" label="Sick Leave" value="${superKickingEnterprizyMapper.sickLeave}" />
	<tracker:targetSlider name="casualStroll" label="Casual Stroll" value="${superKickingEnterprizyMapper.casualStroll}" />
	<tracker:targetSlider name="bathroom" label="Bathroom breaks" value="${superKickingEnterprizyMapper.bathroom}" />
	<tracker:targetSlider name="development" label="Development" value="${superKickingEnterprizyMapper.development}" />
	<input type="submit" name="submit" value="Submit" style="margin: 10px; padding: 5px;" />				
</form:form>
</div>
   		
   </section>
 </div>
 </div>
<!--end holder-->


  
  </body>
</html>
