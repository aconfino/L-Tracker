<%@ include file="include/header.jsp"%>


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
   		<h2>05.18.2012  -  Taking productivity to knew depths</h2>
   			<p>L-Tracker will not only change your business - it WILL change your life.  Some 
   			businesses still think that developers are paid to just code.  Our product recognizes
   			that times are changing and developers do everything from grilling to plumbing to weather tracking.
   			Finally - a product lets you track their tasks accordingly.</p>
   		</article> 
 <div style="background-color:white; align:center;">
 <h2>Adjust each slider to reflect what task is currently being done:</h2>
 <form:form action="submitTracker.html" commandName="superKickingEnterprizyMapper" >
	<tracker:targetSlider name="weather" label="Weather Report"/>				
	<tracker:targetSlider name="maintanence" label="Maintanence"/>
	<tracker:targetSlider name="grilling" label="Grilling"/>
	<tracker:targetSlider name="sports" label="Sports updates"/>
	<tracker:targetSlider name="beer" label="Beer discussions"/>
	<tracker:targetSlider name="sickLeave" label="Sick Leave"/>
	<tracker:targetSlider name="casualStroll" label="Casual Stroll"/>
	<tracker:targetSlider name="bathroom" label="Bathroom breaks"/>
	<tracker:targetSlider name="development" label="Development"/>
	<input type="submit" name="submit" value="Submit" style="margin: 10px; padding: 5px;" />				
</form:form>
</div>
   		
   </section>
 </div>
 </div>
<!--end holder-->


  
  </body>
</html>
