({
	fireCompEvent : function(component, event, helper) {
		var childcomp = component.getEvent('ComponentEvent');
        childcomp.setParams({
            "message":"This is from the Child Component"
        });
        childcomp.fire();
	}
})