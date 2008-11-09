jQuery(window).bind("load", function() {
	jQuery("div#slider").codaSlider()
});

jQuery(window).bind("load", function() {

 	var container = jQuery("div#slider");
	var panelWidth = container.find("div.panel").width();
	var panelCount = container.find("div.panel").size();
	var panel = 0;
  
	if (location.hash && parseInt(location.hash.slice(1)) <= panelCount) {
		panel = parseInt(location.hash.slice(1));
	};
	
  	container.everyTime(3000,function(i) {
		var nextPanel = panel + 1;
		if (nextPanel >= panelCount) {
			nextPanel = 0
		}
		var change = - (panelWidth * (nextPanel));
	 	$("div.panelContainer").animate({ left: change });
		panel = nextPanel;
	});

});
