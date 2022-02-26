({
	doInit : function(component, event, helper) {
		var action = component.get("c.getcontacts");
        action.setParams({
            "rId": component.get("v.recordId")});
        action.setCallback(this,function(response){
           var state = response.getState(); 
            if(state === "SUCCESS")
            {
                var responsevalue = response.getReturnValue();
                component.set("v.contactlist",responsevalue)
            }
        });
        $A.enqueueAction(action,false);
	},
    
    getconId : function(component, event, helper) {
		var contactsource = event.getSource(); 
        var sId = contactsource.get("v.name");
        console.log(sId);
        var eventfire = $A.get("e.force:navigateToSObject");
        eventfire.setParams({
            "recordId":sId,
            "slideDevName":"detail"
        });
        eventfire.fire();	
	}
    
})