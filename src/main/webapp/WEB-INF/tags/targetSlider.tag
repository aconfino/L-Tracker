<%@attribute name="name" required="true" %>
<%@attribute name="label" required="true" %>
<%@attribute name="value" required="true" %>
<style>
	#demo-frame > div.demo { padding: 10px !important; };
</style>
<script>
	$(function() {
		$( "#${pageScope.name}Slider" ).slider({
			orientation: "vertical",
			range: "min",
			min: 0,
			max: 100,
			value: 50,
			slide: function( event, ui ) {
				$( "#${pageScope.name}" ).val( ui.value );
			}
		});
	$( "#${pageScope.name}" ).val( $( "#${pageScope.name}Slider").slider( "value" ) );
});
</script>

<span class="superKickin" style="width:105px; float:left;">
<p>
	<label for="${pageScope.name}" style=" float:left;">${pageScope.label}</label>
	<input type="text" id="${pageScope.name}" name="${pageScope.name}" style="border:0; color:#f6931f; font-weight:bold;" />
</p>
<div id="${pageScope.name}Slider" style="height:300px;"></div>
</span>