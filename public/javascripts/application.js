jQuery(window).bind("load", function() {
	jQuery("div#slider").codaSlider()
});

jQuery(window).bind("load", function() {

 	var container = jQuery("div#slider");
	var panelWidth = container.find("div.panel").width();
	var panels = container.find("div.panel");
	var panelCount = panels.size();
	var statusValues = container.find("input.build_status");
	var statusLabels = container.find("div.build_status");
	var body = container.parent().parent();
	var panel = 0;

	if (location.hash && parseInt(location.hash.slice(1)) <= panelCount) {
		panel = parseInt(location.hash.slice(1));
	};
	
  	container.everyTime(5000,function(i) {
		var nextPanel = panel + 1;
		if (nextPanel >= panelCount) {
			nextPanel = 0
		}
		
		if (statusValues.get(nextPanel).value == "1") {
/*			statusLabels.get(nextPanel).innerHTML = "OH YEAH - PASS";*/
			body.animate({ backgroundColor: "#282828" }, 'slow');
		} else {
/*			statusLabels.get(nextPanel).innerHTML = "OH NO - FAIL";	*/
			body.animate({ backgroundColor: "#67040C" }, 'slow');
		}
		
		var change = - (panelWidth * (nextPanel));
	 	$("div.panelContainer").animate({ left: change });
		panel = nextPanel;
	});

});
