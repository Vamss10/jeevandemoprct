({
	handleClick : function(component, event, helper) {
		var child = component.find('ChildComp');
       var ch =  child.samplemethod('it is from parent controller');
        component.set('v.message',ch);
        
	}
})