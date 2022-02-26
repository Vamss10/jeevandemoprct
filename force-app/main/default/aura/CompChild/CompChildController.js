({
	SaveAccount : function(component, event, helper) {
		var acc = component.getEvent('SamAccount');
        acc.setParams({
            "SamAccount" : component.get('v.AccAccount')
        });
        acc.fire();
        
	}
})