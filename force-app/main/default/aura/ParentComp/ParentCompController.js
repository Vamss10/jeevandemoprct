({
	handleCompEvent : function(component, event, helper) {
		var par = event.getParam('message');
        component.set('v.Parentmessage',par);
	}
})