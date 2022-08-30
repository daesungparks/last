/**
 * 
 */
 
 $(function(){
			
			var request = $.ajax({
			  url: "/production/monthPlan",
			  method: "GET",
			  dataType: "json"
			});
			 
			request.done(function( data ) {
				console.log(data);
					
					var calendarEl = document.getElementById('calendar');
					
				    var calendar = new FullCalendar.Calendar(calendarEl, {
				      initialView: 'dayGridMonth',
				      headerToolbar: {
				        left: 'prev,next today',
				        center: 'title',
				        right: 'dayGridMonth,timeGridWeek,timeGridDay'
				      },
				      events: data
				    });
			
				    calendar.render();								
			});
			 
			request.fail(function( jqXHR, textStatus ) {
			  alert( "Request failed: " + textStatus );
			});
});
