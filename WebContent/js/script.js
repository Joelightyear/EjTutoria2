/**
 * 
 */

$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});

$(document).ready(function() {
	
	
	
	$('#Provincia').on('change','input[name=provincia]:radio', function() {
		  var prov = $('input[name=provincia]:checked', '#Provincia').val() 
		   var urll= 'https://apiv1.geoapi.es/municipios?CPRO=' + prov + '&type=JSON&key=&sandbox=1'	
		   $("#Localidad").show();
		  	$("#loc").empty();
		  $.getJSON( urll, function( json ) {
			  $.each(json.data, function (index) {
				    $('#loc').append(
				        $("<option></option>")
				          .attr("value", json.data[index].DMUN50)
				          .text(json.data[index].DMUN50)
				    );
				});
			  
			 });
	});
	
	$.getJSON('https://apiv1.geoapi.es/comunidades?type=JSON&key=&sandbox=1', function( jsonCom ) {
		  $.each(jsonCom.data, function (index) {
			    $('#com').append(
			        $("<option></option>")
			          .attr("value", jsonCom.data[index].CCOM)
			          .text(jsonCom.data[index].COM)
			    );
			});
		 });
	
	$('#Comunidades').on('change','input[name=comunidades]', function() {
		  var prov= $("#comu").val();
		  var urll= 'https://apiv1.geoapi.es/provincias?CCOM='+prov+'&type=JSON&key=&sandbox=1'
		  $("#Provincias1").show();
		  	$("#prov1").empty();
		  $.getJSON( urll, function( jsonProv ) {
			  $.each(jsonProv.data, function (index) {
				    $('#prov1').append(
				        $("<option></option>")
				          .attr("value", jsonProv.data[index].CPRO)
				          .text(jsonProv.data[index].PRO)
				    );
				});			  
			 });
	});
	
	
	$('#Provincias1').on('change','input[name=provincia]', function() {
		  var prov= $("#provi").val();
		  var urll= 'https://apiv1.geoapi.es/municipios?CPRO=' + prov + '&type=JSON&key=&sandbox=1'	
		  $("#Localidad").show();
		  	$("#loc").empty();
		  $.getJSON( urll, function( json ) {
			  $.each(json.data, function (index) {
				    $('#loc').append(
				        $("<option></option>")
				          .attr("value", json.data[index].DMUN50)
				          .text(json.data[index].DMUN50)
				    );
				});
			  
			 });
	});
	
});