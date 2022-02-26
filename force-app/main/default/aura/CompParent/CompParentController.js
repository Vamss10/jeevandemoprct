({
	handlingCompEvent : function(component, event, helper) {
		var na = event.getParam('SamAccount');
        console.log(JSON.stringify(na));
       var na1 = component.set('v.AllAccounts',na);
        console.log(na1);
        
	}
})